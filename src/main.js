import {taskTransformer} from './core/transformers/StageTransformer.js';
import {zoneTransformerInstance} from './core/transformers/ZoneTransformer.js';
import {helperInstance} from './utils/helpers.js';
import {SourceParser} from './core/Parser.js';

class AppController {
    constructor() {
        this.errorCount = 0
        this.bindDOMElements()
        this.setupEventListeners()
    }

    bindDOMElements() {
        this.convertBtn = document.getElementById('convertBtn')
        this.outputArea = document.getElementById('jsonOutput')
        this.sourceCodeArea = document.getElementById('sourceCode')
        this.statusEl = document.getElementById('status')
        this.copyBtn = document.getElementById('copyBtn')
        this.clearBtn = document.getElementById('clearBtn')
        this.sampleBtn = document.getElementById('sampleBtn')
        this.logsArea = document.getElementById('logsArea')

        this.modeRadios = document.querySelectorAll('input[name="conversionMode"]')
        this.contractOptions = document.getElementById('contractOptions')
        this.wrapBracketsCb = document.getElementById('wrapBrackets')
    }

    setupEventListeners() {
        this.convertBtn.addEventListener('click', () => this.handleConvert())
        this.clearBtn.addEventListener('click', () => this.handleClear())
        this.sampleBtn.addEventListener('click', () => this.handleSample())
        this.copyBtn.addEventListener('click', () => this.handleCopy())
        this.sourceCodeArea.addEventListener('dragover', (e) => this.handleDrag(e, true))
        this.sourceCodeArea.addEventListener('dragleave', (e) => this.handleDrag(e, false))
        this.sourceCodeArea.addEventListener('drop', (e) => this.handleDrop(e))

        this.modeRadios.forEach(r => {
            r.addEventListener('change', (e) => {
                e.target.value === 'contract'
                   ? this.contractOptions.classList.add('active')
                    : this.contractOptions.classList.remove('active')

            })
        })

        const initialMode = document.querySelector('input[name="conversionMode"]:checked').value;
        if(initialMode === 'contract' && this.contractOptions) {
            this.contractOptions.classList.add('active');
        }

    }

    handleConvert() {
        const sourceCode = this.sourceCodeArea.value
        const selectedMode = document.querySelector('input[name="conversionMode"]:checked').value

        if (!sourceCode.trim()) {
            this.showStatus('The source code field is empty', 'error')
            return
        }

        this.setLoadingState(true)
        helperInstance.clearWarnings()

        setTimeout(() => {
            try {
                const parser = new SourceParser(sourceCode)
                const parsedObjects = parser.parse()

                const results = this.transformData(parsedObjects, selectedMode)
                let jsonString = '';

                if (selectedMode === 'contract') {
                    const arrayResult = Array.isArray(results) ? results : [results];

                    if (this.wrapBracketsCb && !this.wrapBracketsCb.checked) {
                        let str = JSON.stringify(arrayResult, null, 2);
                        jsonString = str.replace(/^\[\r?\n?/, '').replace(/\r?\n?\]$/, '');

                        jsonString += ',';
                    } else {
                        jsonString = JSON.stringify(arrayResult, null, 2);
                    }
                } else {
                    const finalResult = Array.isArray(results) && results.length === 1 ? results[0] : results
                    jsonString = JSON.stringify(finalResult, null, 2)
                }

                this.updateOutput(jsonString);
                this.showStatus('Conversion completed successfully', 'success')

                let objectCount = 0;
                if (results.SslValue && results.SslValue.zoneDesc) objectCount = results.SslValue.zoneDesc.length;
                else if (results.SslValue) objectCount = results.SslValue.length;
                else if (Array.isArray(results)) objectCount = results.length;

                this.updateStats(objectCount, helperInstance.getNullCount(), this.errorCount, jsonString.split('\n').length)
                if (this.renderLogs) this.renderLogs(helperInstance.warnings);

            } catch (error) {
                this.errorCount++
                this.showStatus(`Error: ${error.message}`, 'error')
                console.error(error)
                this.updateStats(0, helperInstance.getNullCount(), this.errorCount, 0)
            } finally {
                this.setLoadingState(false)
            }
        }, 500);
    }

    transformData(parsedObjects, mode) {
        switch (mode) {
            case 'task':
                const tasks = parsedObjects.map(({name, obj}) => taskTransformer.transformTask(obj, name)).flat();
                return {
                    ExternalData: [],
                    SslType: "ObjectiveSettings",
                    SslValue: {
                        contestSettings: [],
                        contractsSettings: [],
                        employer: [],
                        name: "objectiveSettings",
                        tasksSettings: tasks
                    }
                }
            case 'zone':
                const zones = parsedObjects.map(({name, obj}) => zoneTransformerInstance.transformZones(obj, name)).flat();
                return {
                    Country: this.getCountryInfo(parsedObjects[0].name) || "unknown",
                    SslType: "MapWithZonesDesc",
                    SslValue: {
                        isNeedToBeCloacked: false,
                        name: this.getMapNameInfo(parsedObjects[0].name) || "",
                        zoneDesc: zones
                    }
                }
            case 'contract':
                return parsedObjects.map(({ name, obj }) => taskTransformer.transformTask(obj, name, true))
            default:
                throw new Error('Unknown conversion mode.')
        }
    }

    handleClear() {
        this.sourceCodeArea.value = ''
        this.outputArea.innerHTML = ''
        this.outputArea.dataset.raw = ''
        this.showStatus('')
        this.updateStats()
        this.errorCount = 0
        if(this.logsArea)
            this.logsArea.innerHTML = '<div class="log-item log-muted">Waiting for execution...</div>';
    }

    handleSample() {
        const selectedMode = document.querySelector('input[name="conversionMode"]:checked').value
        this.sourceCodeArea.value = helperInstance.sampleData[selectedMode] || helperInstance.sampleData.task
    }

    handleCopy() {
        const rawJSON = this.outputArea.dataset.raw
        if(!rawJSON) return alert('No result to copy')

        navigator.clipboard.writeText(rawJSON).then(() => {
            const span = this.copyBtn.querySelector('span')
            const originalText = span.textContent
            span.textContent = 'Copied!'
            setTimeout(() => (span.textContent = originalText), 1500)
        }).catch(e => console.error('Failed to copy text: ', e))
    }

    handleDrag(e, isOver) {
        e.preventDefault()
        e.stopPropagation()
        this.sourceCodeArea.classList.toggle('drag-over', isOver)
    }

    handleDrop(e) {
        this.handleDrag(e, false)
        const file = e.dataTransfer.files[0]
        if(file && file.type === 'text/plain') {
            const reader = new FileReader()
            reader.onload = (ev) => this.sourceCodeArea.value = ev.target.result
            reader.readAsText(file)
        }
    }

    setLoadingState(isLoading) {
        this.convertBtn.disabled = isLoading
        this.convertBtn.classList.toggle('loading', isLoading)
        if (isLoading) {
            this.showStatus('Converting...', '')
            this.outputArea.innerHTML = ''
        }
    }

    showStatus(message, type) {
        this.statusEl.textContent = message
        this.statusEl.className = type
    }

    updateOutput(jsonString) {
        this.outputArea.innerHTML = this.syntaxHighlight(jsonString)
        this.outputArea.dataset.raw = jsonString;
    }

    updateStats(objects = 0, nulls = 0, errors = 0, lines = 0) {
        document.getElementById('statObjects').textContent = objects
        document.getElementById('statNulls').textContent = nulls
        document.getElementById('statErrors').textContent = errors
        document.getElementById('statLines').textContent = lines
        helperInstance.resetNullCount()
    }

    syntaxHighlight(json) {
        if (typeof json !== 'string')
            json = JSON.stringify(json, null, 2)

        json = json.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')
        return json.replace(/("(\\u[a-zA-Z0-9]{4}|\\[^u]|[^\\"])*"(?:\s*:)?|\b(true|false|null)\b|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?)/g,
            function (match) {
            let cls = /^"/.test(match)
                ? /:$/.test(match) ? 'key' : 'string'
                : /true|false/.test(match)
                    ? 'boolean'
                    : /null/.test(match)
                        ? 'null'
                        : 'number'

            return `<span class="${cls}">${match}</span>`
        })
    }

    getCountryInfo(countryInfo) {
        const matchResult = countryInfo.match(/^[A-Z]{2}/)
        return matchResult ? matchResult[0] : "unknown"
    }
    getMapNameInfo(nameInfo) {
        const matchResult = nameInfo.match(/^.*?_.*?_.*?_/);
        if(matchResult) {
            const matchLength = matchResult[0].length
            const fullName = `level_${nameInfo.slice(0, matchLength - 1).toLowerCase()}`
            return helperInstance.formatLevelName(fullName)
        }
        return helperInstance.formatLevelName(nameInfo)
    }
    renderLogs(w) {
        if (!this.logsArea) return

        if (w.length === 0) {
            this.logsArea.innerHTML = `<div class="log-item log-success"><i data-lucide="check-circle-2"></i> No unmapped properties. Code is clean.</div>`;
        } else {
            this.logsArea.innerHTML = w.map(w => `<div class="log-item log-warn"><i data-lucide="alert-triangle"></i> ${w}</div>`).join('');
        }
        lucide.createIcons();
    }
}

new AppController()