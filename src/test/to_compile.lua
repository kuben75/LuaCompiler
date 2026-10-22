US_10_02_DELIVERY_OILTANK_01_TSK   =   {
      uiDesc   =   "US_10_02_DELIVERY_OILTANK_01_DESC"
      stages   =   [
         {
            truckDelivery   =   [
               {
                  truckId   =   "US_10_02_OILTANK_1"
                  afterStageFinished   =   "DESTROY"
                  globalZoneDeliveryId   =   {
                     globalZoneId   =   "level_us_10_02 || US_10_02_DELIVERY_OILTANK_01_TSK"
                     __type   =   "ZoneGlobalIdentificator"
                  }
                  uiDesc   =   "US_10_02_DELIVERY_OILTANK_01_S"
               }
            ]
         }
      ]
      description   =   "US_10_02_DELIVERY_OILTANK_01_REW"
      rewards   =   {
               ObjectiveRewardsUpgradeGarage   =   {
                           zone   =   "level_us_06_01 || US_06_01_GARAGE_ENTRANCE"
                           feature   =   "SLOTS"
                        }
            }
      taskGiverZone   =   {
         globalZoneId   =   "level_us_10_02 || US_10_02_DELIVERY_OILTANK_01_A_TSK"
         __type   =   "ZoneGlobalIdentificator"
      }
      additionalTaskGivers   =   [
         "US_10_02_DELIVERY_OILTANK_01_B_TSK"
      ]
      __type   =   "TaskSettings"
   }