SELECT TOP (@PerPageResults) A.* ,
                                C.Name AS CompanyName,
                                EW.Name AS FirstWeighbridgeName,
                                HW.Name AS SecondWeighbridgeName,
                                RS_WU.Name AS ReceivingStaffName,
                                SS_WU.Name AS ShipStaffName,
                                D.DictText AS EntryGateName
                                FROM (SELECT ROW_NUMBER() OVER(ORDER BY CreatedTime DESC) AS RowNumber,
                                SL.Id,
                                SL.Company,
                                SL.Code,
                                SL.Driver,
                                SL.PlateNo,
                                SL.WeighingType,
                                SL.IsSideWeighing,
                                SL.AdmissionTime,
                                SL.FactoryTime,
                                SL.FirstTime,
                                SL.FirstWeight,
                                SL.FirstWeighbridge,
                                SL.SecondTime,
                                SL.SecondWeight,
                                SL.SecondWeighbridge,
                                SL.NetWeight,
                                SL.RadiometerData,
                                SL.CustomerCode,
                                SL.CustomerName,
                                SL.ProductCode,
                                SL.ProductName,
                                SL.CarDealership,
                                SL.Plant,
                                SL.DistinguishingCode,
                                SL.ContainerNoOne,
                                SL.ContainerNoTwo,
                                SL.ReceivingStaffId,
                                SL.ReceivingTime,
                                SL.ShipStaffId,
                                SL.ShipTime,
                                SL.SignatureTime,
                                SL.SignaturePhoto,
                                SL.PurchaseCaseNumber AS PurchaseNumber,
                                SL.EntryApplicationId,
                                SL.InvalidStatus,
                                SL.ErpScaleNo,
                                SL.ErpMonitorNo,
                                SL.WaterWeight,
                                SL.ImpuritiesWeight,
                                SL.CompletedStatus
                                FROM ShippingList AS SL
                                      { whereSql}  ) A 
                                LEFT JOIN Company AS C ON C.Id = A.Company
                                LEFT JOIN Weighbridge AS EW ON EW.Id = A.FirstWeighbridge
                                LEFT JOIN Weighbridge AS HW ON HW.Id = A.SecondWeighbridge
                                LEFT JOIN WeChatUser AS RS_WU ON RS_WU.Id = A.ReceivingStaffId
                                LEFT JOIN WeChatUser AS SS_WU ON SS_WU.Id = A.ShipStaffId
                                LEFT JOIN EntryApplication AS EA ON EA.Id = A.EntryApplicationId
                                LEFT JOIN Dict AS D ON D.DictType ='EntryGate' AND D.DictValue = EA.EntryGate

WHERE RowNumber > 20

 SELECT * FROM WeighingRecord WHERE ShippingListId IN ({shippingListIds}) AND IsUsing = 1 AND WeighingTime IS NOT NULL 
