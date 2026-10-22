export function modAfterStageFinished(afterStageFinished) {
  if (afterStageFinished) return 3 // DO NOTHING is default, not 0
  switch (afterStageFinished) {
    case "REWARD":
      return 0
      break
    case "DETACH":
      return 1
      break
    case "DESTROY":
      return 2
      break
    case "DO_NOTHING":
      return 3
      break
    default:
      console.log(`unexpected afterStageFinished entry ; ${afterStageFinished}`)
      return 3
      break
  }
}

export function modNeededStateFarm(neededState) {
  if (!neededState) return 0
  switch (neededState) {
    case "FIELD_STATE_DEFAULT":
      return 0
      break
    case "FIELD_STATE_PLOWED":
      return 1
      break
    case "FIELD_STATE_SOWN":
      return 2
      break
    case "FIELD_STATE_SOWN_GROWN":
      return 3
      break
    case "FIELD_STATE_COMPLETE":
      return 4
      break
    case "FIELD_STATE_COMPLETE_GROWN":
      return 5
      break
    default:
      console.log(`unexpected neededState entry ; ${neededState}`)
      return 0
      break
  }
}

export function modRequiredTrailerFarm(requiredTrailer) {
  if (!requiredTrailer) return 0
  switch (requiredTrailer) {
    case "None":
      return 0
      break
    case "Cultivator":
      return 1
      break
    case "Planter":
      return 2
      break
    case "Harvester":
      return 3
      break
    default:
      console.log(`unexpected requiredTrailer entry ; ${requiredTrailer}`)
      return 0
      break
  }
}

export function modModelType(modelType) {
  if (!modelType) return 0
  switch (modelType) {
    case "COMMON":
      return 0
      break
    case "WOOD":
      return 1
      break
    case "BRICK":
      return 2
      break
    case "METAL":
      return 3
      break
    case "LOG":
      return 4
      break
    default:
      console.log(`unexpectedmodelbuildingsetttings modelType entry ; ${modelType}`)
      return 0
      break
  }
}

export function modGarageFeature(feature) {
  switch (feature) {
    case "SLOTS":
      return 0
      break
    case "CUSTOMIZATION":
      return 1
      break
    case "STORE":
      return 2
      break
    case "REPAIR":
      return 3
      break
    default:
      console.log(`unexpected garagefeature entry ; ${feature}`)
      return 0
      break
  }
}

export function modRecommendedTruck(recommendedTruck) {
  if (!recommendedTruck) return 0
  switch (recommendedTruck) {
    case "NONE":
      return 0
      break
    case "CRANE":
      return 1
      break
    case "OFFROAD":
      return 2
      break
    case "SCOUT":
      return 3
      break
    case "SEISMIC":
      return 4
      break
    case "METAL_DETECTOR":
      return 5
      break
    case "LOGS":
      return 6
      break
    case "FARMING_EQUIPMENT":
      return 7
      break
    case "KIROVETS_MANIPULATOR":
      return 8
      break
    default:
      console.log(`unexpected recommendedTruck entry ; ${recommendedTruck}`)
      return 0
      break
  }
}

export function modWaterStationType(stationType) {
  switch (stationType) {
    case "PICK_UP":
      return 0
      break
    case "TRANSIT":
      return 1
      break
    case "DROP":
      return 2
      break
    default:
      return 0
      break
  }
}
