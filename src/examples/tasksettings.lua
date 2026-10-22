tasksSettings   =   {
   US_18_02_DANGER_CONTAMINATION_TASK   =   {
      uiDesc   =   "US_18_02_DANGER_CONTAMINATION_DESC"
      stages   =   [
         {
            actions   =   {
               zoneToFill   =   [
                  {
                     uiDesc   =   "US_18_02_DANGER_CONTAMINATION_S"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_DANGER_CONTAMINATION_DELIVERY"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoBarrelsChemicals"
                        count   =   3
                        __type   =   "CargoPack"
                     }
                  }
               ]
               __type   =   "ActionPackSettings"
            }
            spawnCargoOnStageActive   =   [
               {
                  zone   =   {
                     globalZoneId   =   "level_us_18_02 || US_18_02_DANGER_CONTAMINATION_SPAWN_01"
                     __type   =   "ZoneGlobalIdentificator"
                  }
                  cargos   =   [
                     {
                        name   =   "CargoBarrelsChemicals"
                        count   =   1
                     }
                  ]
               },
               {
                  zone   =   {
                     globalZoneId   =   "level_us_18_02 || US_18_02_DANGER_CONTAMINATION_SPAWN_02"
                     __type   =   "ZoneGlobalIdentificator"
                  }
                  cargos   =   [
                     {
                        name   =   "CargoBarrelsChemicals"
                        count   =   1
                     }
                  ]
               },
               {
                  zone   =   {
                     globalZoneId   =   "level_us_18_02 || US_18_02_DANGER_CONTAMINATION_SPAWN_03"
                     __type   =   "ZoneGlobalIdentificator"
                  }
                  cargos   =   [
                     {
                        name   =   "CargoBarrelsChemicals"
                        count   =   1
                     }
                  ]
               }
            ]
         }
      ]
      description   =   "US_18_02_DANGER_CONTAMINATION_REW"
      recommendedTruck   =   "CRANE"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   890
         }
         ObjectiveRewardMoney   =   {
            amount   =   9750
         }
      }
      taskGiverZone   =   {
         globalZoneId   =   "level_us_18_02 || US_18_02_DANGER_CONTAMINATION_GIVER"
         __type   =   "ZoneGlobalIdentificator"
      }
      __type   =   "TaskSettings"
   }
   US_18_02_CURSED_ISLAND_TASK   =   {
      uiDesc   =   "US_18_02_CURSED_ISLAND_DESC"
      stages   =   [
         {
            truckDelivery   =   [
               {
                  truckId   =   "US_18_02_CURSED_ISLAND_TRUCK"
                  afterStageFinished   =   "DESTROY"
                  mustDestroyAfterSubstage   =   True
                  globalZoneDeliveryId   =   {
                     globalZoneId   =   "level_us_18_02 || US_18_02_CURSED_ISLAND_TRUCK"
                     __type   =   "ZoneGlobalIdentificator"
                  }
                  uiDesc   =   "US_18_02_CURSED_ISLAND_S"
               }
            ]
         }
      ]
      description   =   "US_18_02_CURSED_ISLAND_REW"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   520
         }
         ObjectiveRewardMoney   =   {
            amount   =   5700
         }
      }
      taskGiverZone   =   {
         globalZoneId   =   "level_us_18_02 || US_18_02_CURSED_ISLAND_GIVER_01"
         __type   =   "ZoneGlobalIdentificator"
      }
      additionalTaskGivers   =   [
         "US_18_02_CURSED_ISLAND_GIVER_02"
      ]
      __type   =   "TaskSettings"
   }
   US_18_02_5G_CONNECTION_TASK   =   {
      uiDesc   =   "US_18_02_5G_CONNECTION_DESC"
      stages   =   [
         {
            actions   =   {
               zoneToFill   =   [
                  {
                     uiDesc   =   "US_18_02_5G_ANTENNA_S_01"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_5G_CONNECTION_DELIVERY_01"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoServiceSpareParts"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_5G_ANTENNA_BUILD_01"
                        stagesProgress   =   {
                           state_start   =   {
                           }
                           state_end   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  },
                  {
                     sslModule   =   "game.missions.cargo_unloading_zone_settings"
                     uiDesc   =   "US_18_02_5G_ANTENNA_S_01"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_5G_CONNECTION_DELIVERY_01"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoSolarPanel"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        sslModule   =   "game.missions.models_phase_bulding.model_building_settings"
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_5G_SOLAR_BUILD_01"
                        stagesProgress   =   {
                           build_stage_0   =   {
                           }
                           build_stage_1   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_5G_ANTENNA_S_03"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_5G_CONNECTION_DELIVERY_02"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoServiceSpareParts"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_5G_ANTENNA_BUILD_02"
                        stagesProgress   =   {
                           state_start   =   {
                           }
                           state_end   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  },
                  {
                     sslModule   =   "game.missions.cargo_unloading_zone_settings"
                     uiDesc   =   "US_18_02_5G_ANTENNA_S_03"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_5G_CONNECTION_DELIVERY_02"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoSolarPanel"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        sslModule   =   "game.missions.models_phase_bulding.model_building_settings"
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_5G_SOLAR_BUILD_02"
                        stagesProgress   =   {
                           build_stage_0   =   {
                           }
                           build_stage_1   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_5G_ANTENNA_S_02"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_5G_CONNECTION_DELIVERY_03"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoServiceSpareParts"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_5G_ANTENNA_BUILD_03"
                        stagesProgress   =   {
                           state_start   =   {
                           }
                           state_end   =   {
                              __value   =   1
                           }
                        }
                        __type   =   "ModelBuildingSettings"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_5G_ANTENNA_S_04"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_5G_CONNECTION_DELIVERY_04"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoServiceSpareParts"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_5G_ANTENNA_BUILD_04"
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
               __type   =   "ActionPackSettings"
            }
            spawnCargoOnStageActive   =   [
               {
                  zone   =   {
                     globalZoneId   =   "level_us_18_02 || US_18_02_5G_CONNECTION_SPAWN_01"
                     __type   =   "ZoneGlobalIdentificator"
                  }
                  cargos   =   [
                     {
                        name   =   "CargoSolarPanel"
                        count   =   1
                     }
                  ]
               },
               {
                  zone   =   {
                     globalZoneId   =   "level_us_18_02 || US_18_02_5G_CONNECTION_SPAWN_02"
                     __type   =   "ZoneGlobalIdentificator"
                  }
                  cargos   =   [
                     {
                        name   =   "CargoSolarPanel"
                        count   =   1
                     }
                  ]
               }
            ]
         }
      ]
      blockerObjectives   =   [
         "US_18_02_HELICOPTER_SUPPLY_CONTRACT"
      ]
      description   =   "US_18_02_5G_CONNECTION_REW"
      recommendedTruck   =   "CRANE"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   1910
         }
         ObjectiveRewardMoney   =   {
            amount   =   22550
         }
      }
      taskGiverZone   =   {
         globalZoneId   =   "level_us_18_02 || US_18_02_5G_CONNECTION_DELIVERY_01"
         __type   =   "ZoneGlobalIdentificator"
      }
      additionalTaskGivers   =   [
         "US_18_02_5G_CONNECTION_DELIVERY_02",
         "US_18_02_5G_CONNECTION_DELIVERY_03",
         "US_18_02_5G_CONNECTION_DELIVERY_04"
      ]
      __type   =   "TaskSettings"
   }
   US_18_02_POOR_LOGISTICS_TASK   =   {
      uiDesc   =   "US_18_02_POOR_LOGISTICS_DESC"
      stages   =   [
         {
            truckDelivery   =   [
               {
                  truckId   =   "US_18_02_POOR_LOGISTICS_TRAILER"
                  afterStageFinished   =   "DESTROY"
                  mustDestroyAfterSubstage   =   True
                  globalZoneDeliveryId   =   {
                     globalZoneId   =   "level_us_18_02 || US_18_02_POOR_LOGISTICS_DELIVERY"
                     __type   =   "ZoneGlobalIdentificator"
                  }
                  uiDesc   =   "US_18_02_POOR_LOGISTICS_S"
               }
            ]
         }
      ]
      description   =   "US_18_02_POOR_LOGISTICS_REW"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   390
         }
         ObjectiveRewardMoney   =   {
            amount   =   3700
         }
      }
      taskGiverZone   =   {
         globalZoneId   =   "level_us_18_02 || US_18_02_POOR_LOGISTICS_GIVER_01"
         __type   =   "ZoneGlobalIdentificator"
      }
      additionalTaskGivers   =   [
         "US_18_02_POOR_LOGISTICS_GIVER_02"
      ]
      __type   =   "TaskSettings"
   }
   US_18_02_RACING_TRUCK_TASK   =   {
      uiDesc   =   "US_18_02_RACING_TRUCK_DESC"
      stages   =   [
         {
            truckDelivery   =   [
               {
                  truckId   =   "US_18_02_RACING_TRUCK"
                  afterStageFinished   =   "DETACH"
                  mustDestroyAfterSubstage   =   False
                  globalZoneDeliveryId   =   {
                     globalZoneId   =   "level_us_18_02 || US_18_02_RACING_TRUCK_DELIVERY"
                     __type   =   "ZoneGlobalIdentificator"
                  }
                  uiDesc   =   "US_18_02_RACING_TRUCK_S_02"
               }
            ]
         },
         {
            repairTruck   =   [
               {
                  truckId   =   "US_18_02_RACING_TRUCK"
                  afterStageFinished   =   "DESTROY"
                  mustDestroyAfterSubstage   =   True
                  uiDesc   =   "US_18_02_RACING_TRUCK_S_01"
               }
            ]
         }
      ]
      description   =   "US_18_02_RACING_TRUCK_REW"
      recommendedTruck   =   "CRANE"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   610
         }
         ObjectiveRewardMoney   =   {
            amount   =   5400
         }
      }
      FreezeTrailer   =   {
         __type   =   "null"
      }
      taskGiverZone   =   {
         globalZoneId   =   "level_us_18_02 || US_18_02_RACING_TRUCK_GIVER_01"
         __type   =   "ZoneGlobalIdentificator"
      }
      additionalTaskGivers   =   [
         "US_18_02_RACING_TRUCK_GIVER_02"
      ]
      __type   =   "TaskSettings"
   }
   US_18_02_FOREST_CUTTING_TASK   =   {
      uiDesc   =   "US_18_02_FOREST_CUTTING_DESC"
      stages   =   [
         {
            actions   =   {
               zoneToFill   =   [
                  {
                     uiDesc   =   "US_18_02_FOREST_CUTTING_S"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_FOREST_CUTTING_DELIVERY_01"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoServiceSpareParts"
                        count   =   3
                        __type   =   "CargoPack"
                     }
                  }
               ]
               __type   =   "ActionPackSettings"
            }
            farmingInfo   =   {
               farmingZone   =   {
                  globalZoneId   =   "level_us_18_02 || US_18_02_FOREST_CUTTING_AREA"
                  __type   =   "ZoneGlobalIdentificator"
               }
               neededState   =   "FIELD_STATE_PLOWED"
               tolerance   =   1
               hideStageFromUi   =   False
               uiDesc   =   ""
               __type   =   "null"
            }
            model   =   {
               levelName   =   "level_us_18_02"
               modelTag   =   "US_18_02_FOREST_CUTTING_MODEL"
               stagesProgress   =   {
                  stage_00   =   {
                  }
                  stage_01   =   {
                     __value   =   1
                  }
               }
               __type   =   "ModelBuildingSettings"
            }
            restartBlockedZoneIds   =   [
               {
                  globalZoneId   =   "level_us_18_02 || US_18_02_FOREST_CUTTING_AREA"
               }
            ]
         }
      ]
      model   =   {
         __type   =   "null"
      }
      unloadBlockedZoneId   =   {
         globalZoneId   =   "level_us_18_02 || US_18_02_FOREST_CUTTING_AREA"
         __type   =   "null"
      }
      description   =   "US_18_02_FOREST_CUTTING_REW"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   730
         }
         ObjectiveRewardMoney   =   {
            amount   =   9700
         }
      }
      taskGiverZone   =   {
         globalZoneId   =   "level_us_18_02 || US_18_02_FOREST_CUTTING_GIVER_01"
         __type   =   "ZoneGlobalIdentificator"
      }
      __type   =   "TaskSettings"
   }
   US_18_02_NEW_TRUCK_TASK   =   {
      uiDesc   =   "US_18_02_NEW_TRUCK_DESC"
      stages   =   [
         {
            repairTruck   =   [
               {
                  truckId   =   "US_18_02_NEW_TRUCK"
                  afterStageFinished   =   "DO_NOTHING"
                  uiDesc   =   "US_18_02_NEW_TRUCK_S_01"
               }
            ]
         },
         {
            changeTruck   =   {
               truckId   =   "US_18_02_NEW_TRUCK"
               afterStageFinished   =   "REWARD"
               uiDesc   =   "US_18_02_NEW_TRUCK_S_02"
               truckRestrictionList   =   [
                  "NO_GARAGE_ACCESS"
               ]
               __type   =   "ChangeTruckSettings"
            }
         },
         {
            visitAllZones   =   {
               zones   =   [
                  {
                     uiDesc   =   "US_18_02_NEW_TRUCK_S_03"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_NEW_TRUCK_DELIVERY"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     truckUid   =   "US_18_02_NEW_TRUCK"
                  }
               ]
               __type   =   "VisitAllZonesSettings"
            }
         }
      ]
      description   =   "US_18_02_NEW_TRUCK_REW"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   580
         }
         ObjectiveRewardMoney   =   {
            amount   =   5650
         }
      }
      taskGiverZone   =   {
         globalZoneId   =   "level_us_18_02 || US_18_02_NEW_TRUCK_GIVER_01"
         __type   =   "ZoneGlobalIdentificator"
      }
      additionalTaskGivers   =   [
         "US_18_02_NEW_TRUCK_GIVER_02"
      ]
      __type   =   "TaskSettings"
   }
   US_18_02_WATER_TOWER_TASK   =   {
      uiDesc   =   "US_18_02_WATER_TOWER_DESC"
      stages   =   [
         {
            actions   =   {
               zoneToFill   =   [
                  {
                     uiDesc   =   "US_18_02_WATER_TOWER_S_02"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_WATER_TOWER_DELIVERY_02"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoCellulose"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_WATER_TOWER_S_02"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_WATER_TOWER_DELIVERY_02"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoNPPPump"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                  }
               ]
               __type   =   "ActionPackSettings"
            }
            spawnCargoOnStageActive   =   [
               {
                  zone   =   {
                     globalZoneId   =   "level_us_18_02 || US_18_02_WATER_TOWER_SPAWN"
                     __type   =   "ZoneGlobalIdentificator"
                  }
                  cargos   =   [
                     {
                        name   =   "CargoNPPPump"
                        count   =   1
                     }
                  ]
               }
            ]
         },
         {
            actions   =   {
               sslModule   =   "game.missions.task_settings"
               zoneToFill   =   [
                  {
                     sslModule   =   "game.missions.cargo_unloading_zone_settings"
                     uiDesc   =   "US_18_02_WATER_TOWER_S_01"
                     globalZoneId   =   {
                        sslModule   =   "game.terrain_descs_storage.zone_identificator_utils"
                        globalZoneId   =   "level_us_18_02 || US_18_02_WATER_TOWER_DELIVERY_01"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        sslModule   =   "game.missions.cargo_unloading_zone_settings"
                        name   =   "CargoPipesMedium"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                     model   =   {
                        levelName   =   "level_us_18_02"
                        modelTag   =   "US_18_02_WATER_TOWER_BUILD"
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
         "US_18_02_FERTILIZERS_CONTRACT"
      ]
      description   =   "US_18_02_WATER_TOWER_REW"
      recommendedTruck   =   "CRANE"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   1750
         }
         ObjectiveRewardMoney   =   {
            amount   =   19850
         }
         ObjectiveRewardOpenZoneProperties   =   {
            zoneSettings   =   {
               ZonePropertiesSettingsObjectiveReward   =   {
                  zoneId   =   "US_18_02_WATER_STATION"
                  mapId   =   "level_us_18_02"
                  props   =   {
                     ZonePropertyWaterStation   =   {
                     }
                  }
               }
            }
         }
      }
      taskGiverZone   =   {
         globalZoneId   =   "level_us_18_02 || US_18_02_WATER_TOWER_GIVER_01"
         __type   =   "ZoneGlobalIdentificator"
      }
      additionalTaskGivers   =   [
         "US_18_02_WATER_TOWER_GIVER_02"
      ]
      __type   =   "TaskSettings"
   }
   US_18_02_PORTABLE_RADAR_TASK   =   {
      uiDesc   =   "US_18_02_PORTABLE_RADAR_DESC"
      stages   =   [
         {
            truckDelivery   =   [
               {
                  truckId   =   "US_18_02_PORTABLE_RADAR"
                  afterStageFinished   =   "DO_NOTHING"
                  globalZoneDeliveryId   =   {
                     globalZoneId   =   "level_us_18_02 || US_18_02_PORTABLE_RADAR_DELIVERY"
                     __type   =   "ZoneGlobalIdentificator"
                  }
                  uiDesc   =   "US_18_02_PORTABLE_RADAR_S"
               }
            ]
         }
      ]
      description   =   "US_18_02_PORTABLE_RADAR_REW"
      recommendedTruck   =   "SCOUT"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   530
         }
         ObjectiveRewardMoney   =   {
            amount   =   6250
         }
      }
      FreezeTrailer   =   {
         trailerId   =   "US_18_02_PORTABLE_RADAR"
         animationId   =   "Watchpoint_Trailer"
         __type   =   "TrailerFreezeSettings"
      }
      taskGiverZone   =   {
         globalZoneId   =   "level_us_18_02 || US_18_02_PORTABLE_RADAR_GIVER"
         __type   =   "ZoneGlobalIdentificator"
      }
      __type   =   "TaskSettings"
   }
   US_18_02_CELLULOSE_FOR_SCIENCE_TASK   =   {
      uiDesc   =   "US_18_02_CELLULOSE_FOR_SCIENCE_DESC"
      stages   =   [
         {
            actions   =   {
               zoneToFill   =   [
                  {
                     uiDesc   =   "US_18_02_CELLULOSE_FOR_SCIENCE_S"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_CELLULOSE_FOR_SCIENCE_DELIVERY"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoCellulose"
                        count   =   4
                        __type   =   "CargoPack"
                     }
                  }
               ]
               __type   =   "ActionPackSettings"
            }
         }
      ]
      blockerObjectives   =   [
         "US_18_02_FERTILIZERS_CONTRACT"
      ]
      description   =   "US_18_02_CELLULOSE_FOR_SCIENCE_REW"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   530
         }
         ObjectiveRewardMoney   =   {
            amount   =   6250
         }
      }
      taskGiverZone   =   {
         globalZoneId   =   "level_us_18_02 || US_18_02_CELLULOSE_FOR_SCIENCE_GIVER"
         __type   =   "ZoneGlobalIdentificator"
      }
      __type   =   "TaskSettings"
   }
   US_18_02_LOCAL_HOUSES_TASK   =   {
      uiDesc   =   "US_18_02_LOCAL_HOUSES_DESC"
      stages   =   [
         {
            actions   =   {
               zoneToFill   =   [
                  {
                     uiDesc   =   "US_18_02_LOCAL_HOUSES_S_01"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_LOCAL_HOUSES_DELIVERY_01"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoBags2"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_LOCAL_HOUSES_S_01"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_LOCAL_HOUSES_DELIVERY_01"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoCellulose"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_LOCAL_HOUSES_S_02"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_LOCAL_HOUSES_DELIVERY_02"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoBags2"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_LOCAL_HOUSES_S_02"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_LOCAL_HOUSES_DELIVERY_02"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoCellulose"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_LOCAL_HOUSES_S_03"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_LOCAL_HOUSES_DELIVERY_03"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoBags2"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                  },
                  {
                     uiDesc   =   "US_18_02_LOCAL_HOUSES_S_03"
                     globalZoneId   =   {
                        globalZoneId   =   "level_us_18_02 || US_18_02_LOCAL_HOUSES_DELIVERY_03"
                        __type   =   "ZoneGlobalIdentificator"
                     }
                     cargo   =   {
                        name   =   "CargoCellulose"
                        count   =   1
                        __type   =   "CargoPack"
                     }
                  }
               ]
               __type   =   "ActionPackSettings"
            }
         }
      ]
      blockerObjectives   =   [
         "US_18_02_DRILLING_HELP_CONTRACT"
      ]
      description   =   "US_18_02_LOCAL_HOUSES_REW"
      rewards   =   {
         ObjectiveRewardExperience   =   {
            amount   =   2410
         }
         ObjectiveRewardMoney   =   {
            amount   =   27350
         }
      }
      taskGiverZone   =   {
         globalZoneId   =   "level_us_18_02 || US_18_02_LOCAL_HOUSES_GIVER_01"
         __type   =   "ZoneGlobalIdentificator"
      }
      additionalTaskGivers   =   [
         "US_18_02_LOCAL_HOUSES_GIVER_02",
         "US_18_02_LOCAL_HOUSES_GIVER_03"
      ]
      __type   =   "TaskSettings"
   }