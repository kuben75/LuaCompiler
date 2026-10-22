zoneDesc   =   {
   US_04_01_GARAGE_ENT   =   {
      props   =   {
         ZonePropertyGarageEntrance   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_GARAGE_EXT   =   {
      props   =   {
         ZonePropertyGarageExit   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_FUEL_STATION   =   {
      props   =   {
         ZonePropertyFuelStation   =   {
            pricePerLiter   =   8
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_TRAILER_GARAGE_01   =   {
      props   =   {
         ZonePropertyTrailerAttach   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_TRAILER_GARAGE_02   =   {
      props   =   {
         ZonePropertyTrailerAttach   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_TRAILER_GARAGE_03   =   {
      props   =   {
         ZonePropertyTrailerAttach   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_TRANSIT_01   =   {
      __type   =   "ZoneSettings"
   }
   US_04_01_TRANSIT_02   =   {
      props   =   {
         ZonePropertyGateway   =   {
            cameraPos   =   {
               x   =   780.7391
               y   =   72.53647
               z   =   -712.2739
               __type   =   "Vector3d"
            }
            cameraDir   =   {
               x   =   0.93036
               y   =   -0.05183
               z   =   0.36298
               __type   =   "Vector3d"
            }
            animationTime   =   8000
            startDelayTime   =   3000
            levelZoneLink   =   "level_us_04_02 || US_04_02_TRANSIT_A"
            extraZoneToPlaceTrucks   =   "level_us_04_01 || US_04_01_GATE_OUT_02"
            extraZoneToPlaceWinch   =   "level_us_04_01 || US_04_01_GATE_OUT_02_WINCH"
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_RAILWAY   =   {
      props   =   {
         ZonePropertyCargoLoading   =   {
            cargosSettings   =   [
               {
                  name   =   "CargoBarrels"
                  count   =   6
               },
               {
                  name   =   "CargoConcreteSlab"
                  count   =   2
               },
               {
                  name   =   "CargoMetalPlanks"
                  count   =   2
               },
               {
                  name   =   "CargoMetalRoll"
                  count   =   4
               },
               {
                  name   =   "CargoCrateLarge"
                  count   =   4
               },
               {
                  name   =   "CargoContainerSmall"
               },
               {
                  name   =   "CargoConcreteBlocks"
                  count   =   4
               }
            ]
            platformId   =   "US_04_01_RAILWAY_MANUAL"
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_RAILWAY_MANUAL   =   {
      props   =   {
         ZonePropertyManualLoading   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CRAFT_01_C   =   {
      props   =   {
         ZonePropertyStorehouseCraft   =   {
            craftSettings   =   [
               {
                  name   =   "CargoForkliftCaravanContainer2"
                  cargoComponents   =   [
                     {
                        name   =   "CargoContainerSmall"
                     },
                     {
                        name   =   "CargoWoodenPlanks"
                        count   =   2
                     }
                  ]
               }
            ]
            platformId   =   "US_04_01_CRAFT_01_MANUAL"
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CRAFT_01_MANUAL   =   {
      props   =   {
         ZonePropertyManualLoading   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CRAFT_02_C   =   {
      props   =   {
         ZonePropertyStorehouseCraft   =   {
            craftSettings   =   [
               {
                  name   =   "CargoMetalRoll"
                  craftCount   =   2
                  cargoComponents   =   [
                     {
                        name   =   "CargoMetalPlanks"
                     }
                  ]
               }
            ]
            platformId   =   "US_04_01_CRAFT_02_MANUAL"
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CRAFT_02_MANUAL   =   {
      props   =   {
         ZonePropertyManualLoading   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CRAFT_03_C   =   {
      props   =   {
         ZonePropertyStorehouseCraft   =   {
            craftSettings   =   [
               {
                  name   =   "CargoConcreteBlocks"
                  cargoComponents   =   [
                     {
                        name   =   "CargoBags"
                     }
                  ]
               },
               {
                  name   =   "CargoConcreteSlab"
                  cargoComponents   =   [
                     {
                        name   =   "CargoBags"
                        count   =   2
                     }
                  ]
               }
            ]
            platformId   =   "US_04_01_CRAFT_03_MANUAL"
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CRAFT_03_MANUAL   =   {
      props   =   {
         ZonePropertyManualLoading   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CHANGE_01   =   {
      props   =   {
         ZonePropertyLivingArea   =   {
            name   =   "CargoForkliftCaravanContainer2"
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CHANGE_02   =   {
      props   =   {
         ZonePropertyLivingArea   =   {
            name   =   "CargoForkliftCaravanContainer2"
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_WT_01   =   {
      props   =   {
         ZonePropertyWatchpoint   =   {
            range   =   680
            cameraPosStart   =   {
               x   =   -544.7759
               y   =   154.8554
               z   =   905.0128
               __type   =   "Vector3d"
            }
            cameraDirStart   =   {
               x   =   -0.6374
               y   =   0.06868
               z   =   -0.76747
               __type   =   "Vector3d"
            }
            cameraPosEnd   =   {
               x   =   -571.1123
               y   =   169.7241
               z   =   909.8348
               __type   =   "Vector3d"
            }
            cameraDirEnd   =   {
               x   =   0.52325
               y   =   -0.32527
               z   =   -0.78766
               __type   =   "Vector3d"
            }
            animationTime   =   5000
            finishDelayTime   =   500
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_WT_02   =   {
      props   =   {
         ZonePropertyWatchpoint   =   {
            range   =   500
            cameraPosStart   =   {
               x   =   547.4507
               y   =   152.9984
               z   =   -155.4871
               __type   =   "Vector3d"
            }
            cameraDirStart   =   {
               x   =   0.56531
               y   =   -0.00664
               z   =   0.82485
               __type   =   "Vector3d"
            }
            cameraPosEnd   =   {
               x   =   541.9542
               y   =   161.56
               z   =   -143.8185
               __type   =   "Vector3d"
            }
            cameraDirEnd   =   {
               x   =   0.91235
               y   =   -0.40437
               z   =   0.064
               __type   =   "Vector3d"
            }
            animationTime   =   5000
            finishDelayTime   =   500
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_WT_03   =   {
      props   =   {
         ZonePropertyWatchpoint   =   {
            range   =   600
            cameraPosStart   =   {
               x   =   -703.3947
               y   =   89.04664
               z   =   -362.213
               __type   =   "Vector3d"
            }
            cameraDirStart   =   {
               x   =   -0.37207
               y   =   0.20029
               z   =   -0.90634
               __type   =   "Vector3d"
            }
            cameraPosEnd   =   {
               x   =   -721.8391
               y   =   102.2512
               z   =   -366.0218
               __type   =   "Vector3d"
            }
            cameraDirEnd   =   {
               x   =   0.71229
               y   =   -0.29363
               z   =   -0.63752
               __type   =   "Vector3d"
            }
            animationTime   =   5000
            finishDelayTime   =   500
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_WT_04   =   {
      props   =   {
         ZonePropertyWatchpoint   =   {
            range   =   250
            cameraPosStart   =   {
               x   =   210.123
               y   =   45.08856
               z   =   -627.718
               __type   =   "Vector3d"
            }
            cameraDirStart   =   {
               x   =   -0.9442
               y   =   0.19862
               z   =   -0.26276
               __type   =   "Vector3d"
            }
            cameraPosEnd   =   {
               x   =   217.2447
               y   =   69.19805
               z   =   -646.6718
               __type   =   "Vector3d"
            }
            cameraDirEnd   =   {
               x   =   -0.92674
               y   =   -0.27634
               z   =   0.25452
               __type   =   "Vector3d"
            }
            animationTime   =   5000
            finishDelayTime   =   500
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_MINE   =   {
      __type   =   "ZoneSettings"
   }
   US_04_01_SORT   =   {
      __type   =   "ZoneSettings"
   }
   US_04_01_CONV_01_01   =   {
      props   =   {
         ZonePropertyUnloadingCargo   =   {
            blockingZoneGlobalId   =   {
               globalZoneId   =   "level_us_04_01 || US_04_01_CONV_CHECK_01"
               __type   =   "ZoneGlobalIdentificator"
            }
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CONV_02_01   =   {
      props   =   {
         ZonePropertyUnloadingCargo   =   {
            blockingZoneGlobalId   =   {
               globalZoneId   =   "level_us_04_01 || US_04_01_CONV_CHECK_02"
               __type   =   "ZoneGlobalIdentificator"
            }
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CONV_03_01   =   {
      props   =   {
         ZonePropertyUnloadingCargo   =   {
            blockingZoneGlobalId   =   {
               globalZoneId   =   "level_us_04_01 || US_04_01_CONV_CHECK_03"
               __type   =   "ZoneGlobalIdentificator"
            }
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_WARE_01   =   {
      props   =   {
         ZonePropertyCargoLoading   =   {
            cargosSettings   =   [
               {
                  name   =   "CargoBricks"
               },
               {
                  name   =   "CargoMetalRoll"
                  count   =   2
               },
               {
                  name   =   "CargoMetalPlanks"
                  count   =   2
               },
               {
                  name   =   "CargoCrateLarge"
               },
               {
                  name   =   "CargoPipesSmall"
               },
               {
                  name   =   "CargoBags"
               },
               {
                  name   =   "CargoBarrels"
               }
            ]
            platformId   =   "US_04_01_WARE_01_MANUAL"
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_WARE_01_MANUAL   =   {
      props   =   {
         ZonePropertyManualLoading   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_WARE_02   =   {
      props   =   {
         ZonePropertyCargoLoading   =   {
            cargosSettings   =   [
               {
                  name   =   "CargoMetalRoll"
                  count   =   2
               },
               {
                  name   =   "CargoMetalPlanks"
                  count   =   3
               },
               {
                  name   =   "CargoCrateLarge"
                  count   =   2
               },
               {
                  name   =   "CargoConcreteSlab"
                  count   =   2
               },
               {
                  name   =   "CargoConcreteBlocks"
                  count   =   2
               }
            ]
            platformId   =   "US_04_01_WARE_02_MANUAL"
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_WARE_02_MANUAL   =   {
      props   =   {
         ZonePropertyManualLoading   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_WARE_03   =   {
      props   =   {
         ZonePropertyCargoLoading   =   {
            cargosSettings   =   [
               {
                  name   =   "CargoMetalPlanks"
                  count   =   -1
               },
               {
                  name   =   "CargoMetalRoll"
                  count   =   4
               },
               {
                  name   =   "CargoBags"
                  count   =   10
               },
               {
                  name   =   "CargoPipesSmall"
                  count   =   2
               },
               {
                  name   =   "CargoWoodenPlanks"
                  count   =   2
               },
               {
                  name   =   "CargoBarrels"
                  count   =   6
               }
            ]
            platformId   =   "US_04_01_WARE_03_MANUAL"
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_WARE_03_MANUAL   =   {
      props   =   {
         ZonePropertyManualLoading   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_LUMBER   =   {
      props   =   {
         ZonePropertyCargoLoading   =   {
            cargosSettings   =   [
               {
                  name   =   "CargoWoodenPlanks"
               }
            ]
            platformId   =   "US_04_01_LUMBER_MANUAL"
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_LUMBER_MANUAL   =   {
      props   =   {
         ZonePropertyManualLoading   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_LOGS_01   =   {
      props   =   {
         ZonePropertyCargoLoading   =   {
            cargosSettings   =   [
               {
                  name   =   "CargoWoodenPlanks"
                  count   =   4
               }
            ]
            platformId   =   "US_04_01_LOGS_01_MANUAL"
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_LOGS_01_MANUAL   =   {
      props   =   {
         ZonePropertyManualLoading   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_LOGS_02   =   {
      props   =   {
         ZonePropertyCargoLoading   =   {
            cargosSettings   =   [
               {
                  name   =   "CargoWoodenPlanks"
                  count   =   2
               }
            ]
            platformId   =   "US_04_01_LOGS_02_MANUAL"
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_LOGS_02_MANUAL   =   {
      props   =   {
         ZonePropertyManualLoading   =   {
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CR_MET_01   =   {
      props   =   {
         ZonePropertyCargoLoading   =   {
            cargosSettings   =   [
               {
                  name   =   "CargoMetalPlanks"
                  count   =   1
               }
            ]
            platformId   =   "US_04_01_CR_MET_01_MAN"
            modelBuildingSetting   =   {
               levelName   =   "level_us_04_01"
               modelTag   =   "US_04_01_CR_MET_01_OBJ"
               stagesProgress   =   {
                  state_end   =   {
                  }
                  state_start   =   {
                     __value   =   1
                  }
               }
               modelType   =   "METAL"
               __type   =   "ZoneModelBuildingSettings"
            }
            isHiddenArea   =   True
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CR_MET_02   =   {
      props   =   {
         ZonePropertyCargoLoading   =   {
            cargosSettings   =   [
               {
                  name   =   "CargoMetalPlanks"
                  count   =   2
               }
            ]
            platformId   =   "US_04_01_CR_MET_02_MAN"
            modelBuildingSetting   =   {
               levelName   =   "level_us_04_01"
               modelTag   =   "US_04_01_CR_MET_02_OBJ"
               stagesProgress   =   {
                  state_end   =   {
                  }
                  state_start   =   {
                     __value   =   2
                  }
               }
               modelType   =   "METAL"
               __type   =   "ZoneModelBuildingSettings"
            }
            isHiddenArea   =   True
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CR_MET_03   =   {
      props   =   {
         ZonePropertyCargoLoading   =   {
            cargosSettings   =   [
               {
                  name   =   "CargoMetalPlanks"
                  count   =   2
               }
            ]
            platformId   =   "US_04_01_CR_MET_03_MAN"
            modelBuildingSetting   =   {
               levelName   =   "level_us_04_01"
               modelTag   =   "US_04_01_CR_MET_03_OBJ"
               stagesProgress   =   {
                  state_end   =   {
                  }
                  state_start   =   {
                     __value   =   2
                  }
               }
               modelType   =   "METAL"
               __type   =   "ZoneModelBuildingSettings"
            }
            isHiddenArea   =   True
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CR_MET_04   =   {
      props   =   {
         ZonePropertyCargoLoading   =   {
            cargosSettings   =   [
               {
                  name   =   "CargoMetalPlanks"
                  count   =   2
               }
            ]
            platformId   =   "US_04_01_CR_MET_04_MAN"
            modelBuildingSetting   =   {
               levelName   =   "level_us_04_01"
               modelTag   =   "US_04_01_CR_MET_04_OBJ"
               stagesProgress   =   {
                  state_end   =   {
                  }
                  state_start   =   {
                     __value   =   2
                  }
               }
               modelType   =   "METAL"
               __type   =   "ZoneModelBuildingSettings"
            }
            isHiddenArea   =   True
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CR_MET_05   =   {
      props   =   {
         ZonePropertyCargoLoading   =   {
            cargosSettings   =   [
               {
                  name   =   "CargoMetalPlanks"
                  count   =   2
               }
            ]
            platformId   =   "US_04_01_CR_MET_05_MAN"
            modelBuildingSetting   =   {
               levelName   =   "level_us_04_01"
               modelTag   =   "US_04_01_CR_MET_05_OBJ"
               stagesProgress   =   {
                  state_end   =   {
                  }
                  state_start   =   {
                     __value   =   2
                  }
               }
               modelType   =   "METAL"
               __type   =   "ZoneModelBuildingSettings"
            }
            isHiddenArea   =   True
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CR_BR_01   =   {
      props   =   {
         ZonePropertyCargoLoading   =   {
            cargosSettings   =   [
               {
                  name   =   "CargoBricks"
                  count   =   2
               }
            ]
            platformId   =   "US_04_01_CR_BR_01_MAN"
            modelBuildingSetting   =   {
               levelName   =   "level_us_04_01"
               modelTag   =   "US_04_01_CR_BR_01_OBJ"
               stagesProgress   =   {
                  state_end   =   {
                  }
                  state_start   =   {
                     __value   =   2
                  }
               }
               modelType   =   "BRICK"
               __type   =   "ZoneModelBuildingSettings"
            }
            isHiddenArea   =   True
         }
      }
      __type   =   "ZoneSettings"
   }
   US_04_01_CR_BR_02   =   {
      props   =   {
         ZonePropertyCargoLoading   =   {
            cargosSettings   =   [
               {
                  name   =   "CargoBricks"
                  count   =   2
               }
            ]
            platformId   =   "US_04_01_CR_BR_02_MAN"
            modelBuildingSetting   =   {
               levelName   =   "level_us_04_01"
               modelTag   =   "US_04_01_CR_BR_02_OBJ"
               stagesProgress   =   {
                  state_end   =   {
                  }
                  state_start   =   {
                     __value   =   2
                  }
               }
               modelType   =   "BRICK"
               __type   =   "ZoneModelBuildingSettings"
            }
            isHiddenArea   =   True
         }
      }
      __type   =   "ZoneSettings"
   }