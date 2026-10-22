contractsSettings   =   {
   US_18_02_VILLAGE_SCOUTING_CONTRACT   =   {
      uiDesc   =   "US_18_02_VILLAGE_SCOUTING_DESC"
      stages   =   [
         {
            visitAllZones   =   {
               zones   =   [
                  {
                     uiDesc   =   "US_18_02_VILLAGE_SCOUTING_S_01"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_VILLAGE_SCOUTING_01"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_VILLAGE_SCOUTING_S_02"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_VILLAGE_SCOUTING_02"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_VILLAGE_SCOUTING_S_03"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_VILLAGE_SCOUTING_03"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                  }
               ]
               __type   =   "VisitAllZonesSettings"
            }
         }
      ]
      description   =   "US_18_02_VILLAGE_SCOUTING_REW"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   690
         }
         ObjectiveRewardMoney   =   {
            amount   =   11950
         }
      }
      employer   =   "AdministracionRegionaldeChiapas"
      region   =   "us_18"
      __type   =   "ContractSettings"
   }
   US_18_02_SEISMIC_EXPLORATION_CONTRACT   =   {
      uiDesc   =   "US_18_02_SEISMIC_EXPLORATION_DESC"
      stages   =   [
         {
            makeActionInZone   =   {
               zones   =   [
                  {
                     uiDesc   =   "US_18_02_SEISMOGRAPH_S_02"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_SEISMIC_EXPLORATION_01"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     truckUid   =   "US_18_02_SEISMOGRAPH_TRUCK"
                     hideZone   =   True
                  },
                  {
                     uiDesc   =   "US_18_02_SEISMOGRAPH_S_03"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_SEISMIC_EXPLORATION_02"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     truckUid   =   "US_18_02_SEISMOGRAPH_TRUCK"
                     hideZone   =   True
                  },
                  {
                     uiDesc   =   "US_18_02_SEISMOGRAPH_S_04"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_SEISMIC_EXPLORATION_03"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     truckUid   =   "US_18_02_SEISMOGRAPH_TRUCK"
                     hideZone   =   True
                  }
               ]
               __type   =   "VisitAllZonesSettings"
            }
         },
         {
            visitAllZones   =   {
               zones   =   [
                  {
                     uiDesc   =   "US_18_02_SEISMOGRAPH_S_05"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_SEISMIC_EXPLORATION_VISIT"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     truckUid   =   ""
                  }
               ]
               __type   =   "VisitAllZonesSettings"
            }
            changeTruck   =   {
               __type   =   "null"
            }
            livingAreaInfo   =   {
               __type   =   "null"
            }
         }
      ]
      truckDeliveryBlockedZoneId   =   {
         __type   =   "null"
      }
      description   =   "US_18_02_SEISMIC_EXPLORATION_REW"
      recommendedTruck   =   "SEISMIC"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   650
         }
         ObjectiveRewardMoney   =   {
            amount   =   11200
         }
      }
      FreezeTrailer   =   {
         trailerId   =   "US_18_02_SEISMOGRAPH_TRUCK"
         __type   =   "null"
      }
      employer   =   "ComisionNacionaldeEnergia"
      region   =   "us_18"
      __type   =   "ContractSettings"
   }
   US_18_02_TRANSFORMER_STATION_CONTRACT   =   {
      uiDesc   =   "US_18_02_TRANSFORMER_STATION_DESC"
      stages   =   [
         {
            truckDelivery   =   [
               {
                  truckId   =   "US_18_02_TRANSFORMER_TRAILER"
                  afterStageFinished   =   "DESTROY"
                  mustDestroyAfterSubstage   =   False
                  globalZoneDeliveryId   =   {
                     globalZoneId   =   "level_us_18_02 || US_18_02_TRANSFORMER_STATION_TRAILER"
                     __type   =   "ZoneGlobalIdentificator"
                  }
                  uiDesc   =   "US_18_02_TRANSFORMER_STATION_S"
               }
            ]
         },
         {
            actions   =   {
               zoneToFill   =   [
                  {
                     uiDesc   =   "US_18_02_TRANSFORMER_STATION_S"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_TRANSFORMER_CHECK_01"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     manualSettings   =   {
                        interactionZoneId   =   {
                           globalZoneId   =   "level_us_18_02 || US_18_02_TRANSFORMER_STATION_DELIVERY"
                           __type   =   "ZoneGlobalIdentificator"
                        }
                        isVisible   =   True
                        platformColorOverride   =   {
                           a   =   127
                           r   =   255
                           g   =   0
                           b   =   0
                           __type   =   "Color"
                        }
                        __type   =   "CargoManualUnloadingSettings"
                     }
                     cargo   =   {
                        name   =   "CargoTransformer"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_TRANSFORMER_01"
                        stagesProgress   =   {
                           build_stage_0   =   {
                           }
                           build_stage_1   =   {
                              __value   =   2
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  }
               ]
               __type   =   "ActionPackSettings"
            }
            spawnCargoOnStageActive   =   [
               {
                  zone   =   {
                     globalZoneId   =   "level_us_18_02 || US_18_02_TRANSFORMER_SPAWN_01"
                     __type   =   "ZoneGlobalIdentificator"
                  }
                  cargos   =   [
                     {
                        name   =   "CargoTransformer"
                        count   =   1
                     }
                  ]
               },
               {
                  zone   =   {
                     globalZoneId   =   "level_us_18_02 || US_18_02_TRANSFORMER_SPAWN_02"
                     __type   =   "ZoneGlobalIdentificator"
                  }
                  cargos   =   [
                     {
                        name   =   "CargoTransformer"
                        count   =   1
                     }
                  ]
               }
            ]
         },
         {
            actions   =   {
               zoneToFill   =   [
                  {
                     uiDesc   =   "US_18_02_TRANSFORMER_STATION_S"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_TRANSFORMER_CHECK_02"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     manualSettings   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        interactionZoneId   =   {
                           sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                           globalZoneId   =   "level_us_18_02 || US_18_02_TRANSFORMER_STATION_DELIVERY"
                           __type   =   "ZoneGlobalIdentificator"
                        }
                        isVisible   =   True
                        platformColorOverride   =   {
                           sslModule   =   "math.color"
                           a   =   127
                           r   =   255
                           g   =   0
                           b   =   0
                           __type   =   "Color"
                        }
                        __type   =   "CargoManualUnloadingSettings"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoTransformer"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        sslModule   =   "game.missions.models_phase_bulding.model_building_settings"
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_TRANSFORMER_02"
                        stagesProgress   =   {
                           build_stage_0   =   {
                           }
                           build_stage_1   =   {
                              __value   =   2
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  }
               ]
               __type   =   "ActionPackSettings"
            }
         }
      ]
      unloadBlockedZoneId   =   {
         globalZoneId   =   "level_us_18_02 || US_18_02_TRANSFORMER_STATION_BLOCKER"
         __type   =   "ZoneGlobalIdentificator"
      }
      description   =   "US_18_02_TRANSFORMER_STATION_REW"
      recommendedTruck   =   "CRANE"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   2030
         }
         ObjectiveRewardMoney   =   {
            amount   =   19650
         }
      }
      employer   =   "ComisionNacionaldeEnergia"
      region   =   "us_18"
      __type   =   "ContractSettings"
   }
   US_18_02_PIPE_DISTRIBUTOR_CONTRACT   =   {
      uiDesc   =   "US_18_02_PIPE_DISTRIBUTOR_DESC"
      stages   =   [
         {
            actions   =   {
               zoneToFill   =   [
                  {
                     uiDesc   =   "US_18_02_PIPE_DISTRIBUTOR_S"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_PIPE_DISTRIBUTOR_DELIVERY"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoBags"
                        count   =   2
                        __type   =   "CargoPack"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_PIPE_DISTRIBUTOR_S"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_PIPE_DISTRIBUTOR_DELIVERY"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoMetalRoll"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_PIPE_DISTRIBUTOR_S"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_PIPE_DISTRIBUTOR_DELIVERY"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoPipesSmall"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                  }
               ]
               __type   =   "ActionPackSettings"
            }
            model   =   {
               levelName   =   "level_us_18_02"
               modelTag   =   "US_18_02_DISTRIBUTION_CENTER"
               stagesProgress   =   {
                  state_start   =   {
                  }
                  state_end   =   {
                     __value   =   1
                  }
               }
               __type   =   "ModelBuildingSettings"
            }
         }
      ]
      description   =   "US_18_02_PIPE_DISTRIBUTOR_REW"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   1230
         }
         ObjectiveRewardMoney   =   {
            amount   =   12650
         }
      }
      employer   =   "ComisionNacionaldeEnergia"
      region   =   "us_18"
      __type   =   "ContractSettings"
   }
   US_18_02_BUILD_SUBSTATIONS_01_CONTRACT   =   {
      uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_01_DESC"
      stages   =   [
         {
            actions   =   {
               zoneToFill   =   [
                  {
                     uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_S_01"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_BUILD_SUBSTATIONS_01_DELIVERY_01"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoPipesSmall"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_SUBSTATION_01_INTAKER_01"
                        stagesProgress   =   {
                           stage_00   =   {
                           }
                           stage_01   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_S_02"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_BUILD_SUBSTATIONS_01_DELIVERY_02"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoPipesMedium"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        sslModule   =   "game.missions.models_phase_bulding.model_building_settings"
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_SUBSTATION_01_INTAKER_02"
                        stagesProgress   =   {
                           stage_00   =   {
                           }
                           stage_01   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_S_03"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_BUILD_SUBSTATIONS_01_DELIVERY_03"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoMetalRoll"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        sslModule   =   "game.missions.models_phase_bulding.model_building_settings"
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_SUBSTATION_01_INTAKER_03"
                        stagesProgress   =   {
                           stage_00   =   {
                           }
                           stage_01   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_S_04"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_BUILD_SUBSTATIONS_01_DELIVERY_04"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoBricks"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        sslModule   =   "game.missions.models_phase_bulding.model_building_settings"
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_SUBSTATION_01_INTAKER_04"
                        stagesProgress   =   {
                           stage_00   =   {
                           }
                           stage_01   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  }
               ]
               __type   =   "ActionPackSettings"
            }
         }
      ]
      blockerObjectives   =   [
         "US_18_02_TRANSFORMER_STATION_CONTRACT",
         "US_18_02_PIPE_DISTRIBUTOR_CONTRACT"
      ]
      description   =   "US_18_02_BUILD_SUBSTATIONS_01_REW"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   1770
         }
         ObjectiveRewardMoney   =   {
            amount   =   19100
         }
      }
      employer   =   "ComisionNacionaldeEnergia"
      region   =   "us_18"
      __type   =   "ContractSettings"
   }
   US_18_02_BUILD_SUBSTATIONS_02_CONTRACT   =   {
      uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_02_DESC"
      stages   =   [
         {
            actions   =   {
               zoneToFill   =   [
                  {
                     uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_S_01"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_BUILD_SUBSTATIONS_02_DELIVERY_01"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoMetalRoll"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_SUBSTATION_02_INTAKER_01"
                        stagesProgress   =   {
                           stage_00   =   {
                           }
                           stage_01   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_S_02"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_BUILD_SUBSTATIONS_02_DELIVERY_02"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoBricks"
                        count   =   2
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        sslModule   =   "game.missions.models_phase_bulding.model_building_settings"
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_SUBSTATION_02_INTAKER_02"
                        stagesProgress   =   {
                           stage_00   =   {
                           }
                           stage_01   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_S_03"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_BUILD_SUBSTATIONS_02_DELIVERY_03"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoMetalPlanks"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        sslModule   =   "game.missions.models_phase_bulding.model_building_settings"
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_SUBSTATION_02_INTAKER_03"
                        stagesProgress   =   {
                           stage_00   =   {
                           }
                           stage_01   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_S_04"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_BUILD_SUBSTATIONS_02_DELIVERY_04"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoPipesSmall"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        sslModule   =   "game.missions.models_phase_bulding.model_building_settings"
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_SUBSTATION_02_INTAKER_04"
                        stagesProgress   =   {
                           stage_00   =   {
                           }
                           stage_01   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  }
               ]
               __type   =   "ActionPackSettings"
            }
         }
      ]
      blockerObjectives   =   [
         "US_18_02_TRANSFORMER_STATION_CONTRACT",
         "US_18_02_PIPE_DISTRIBUTOR_CONTRACT"
      ]
      description   =   "US_18_02_BUILD_SUBSTATIONS_02_REW"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   2190
         }
         ObjectiveRewardMoney   =   {
            amount   =   25650
         }
      }
      employer   =   "ComisionNacionaldeEnergia"
      region   =   "us_18"
      __type   =   "ContractSettings"
   }
   US_18_02_BUILD_SUBSTATIONS_03_CONTRACT   =   {
      uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_03_DESC"
      stages   =   [
         {
            actions   =   {
               zoneToFill   =   [
                  {
                     uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_S_01"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_BUILD_SUBSTATIONS_03_DELIVERY_01"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoPipesSmall"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_SUBSTATION_03_INTAKER_01"
                        stagesProgress   =   {
                           stage_00   =   {
                           }
                           stage_01   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_S_02"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_BUILD_SUBSTATIONS_03_DELIVERY_02"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoVehiclesSpareParts"
                        count   =   2
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        sslModule   =   "game.missions.models_phase_bulding.model_building_settings"
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_SUBSTATION_03_INTAKER_02"
                        stagesProgress   =   {
                           stage_00   =   {
                           }
                           stage_01   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_S_03"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_BUILD_SUBSTATIONS_03_DELIVERY_03"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoCrateLarge"
                        count   =   2
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        sslModule   =   "game.missions.models_phase_bulding.model_building_settings"
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_SUBSTATION_03_INTAKER_03"
                        stagesProgress   =   {
                           stage_00   =   {
                           }
                           stage_01   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_BUILD_SUBSTATIONS_S_04"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_BUILD_SUBSTATIONS_03_DELIVERY_04"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoMetalRoll"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        sslModule   =   "game.missions.models_phase_bulding.model_building_settings"
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_SUBSTATION_03_INTAKER_04"
                        stagesProgress   =   {
                           stage_00   =   {
                           }
                           stage_01   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  }
               ]
               __type   =   "ActionPackSettings"
            }
         }
      ]
      blockerObjectives   =   [
         "US_18_02_TRANSFORMER_STATION_CONTRACT",
         "US_18_02_PIPE_DISTRIBUTOR_CONTRACT"
      ]
      description   =   "US_18_02_BUILD_SUBSTATIONS_03_REW"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   1820
         }
         ObjectiveRewardMoney   =   {
            amount   =   19850
         }
      }
      employer   =   "ComisionNacionaldeEnergia"
      region   =   "us_18"
      __type   =   "ContractSettings"
   }