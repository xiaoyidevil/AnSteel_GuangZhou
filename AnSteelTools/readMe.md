SELECT TOP (20) * FROM (SELECT ROW_NUMBER() OVER(ORDER BY SL.CreatedTime DESC) AS RowNumber,
                        SL.Id,
                        SL.Company,
                        C.Name AS CompanyName,
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
                        EW.Name AS FirstWeighbridgeName,
                        SL.SecondTime,
                        SL.SecondWeight,
                        SL.SecondWeighbridge,
                        HW.Name AS SecondWeighbridgeName,
                        SL.NetWeight,
                        SL.RadiometerData,
                        SL.PurchaseCaseNumber AS PurchaseNumber,
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
                        RS_WU.Name AS ReceivingStaffName,
                        SL.ReceivingTime,
                        SL.ShipStaffId,
                        SS_WU.Name AS ShipStaffName,
                        SL.ShipTime,
                        SL.SignatureTime,
                        SL.SignaturePhoto,
                        SL.InvalidStatus,
                        SL.ErpScaleNo,
                        SL.ErpMonitorNo,
                        SL.WaterWeight,
                        SL.ImpuritiesWeight,
                        SL.CompletedStatus
                        FROM ShippingList AS SL
                        LEFT JOIN Company AS C ON C.Id = SL.Company
                        LEFT JOIN Weighbridge AS EW ON EW.Id = SL.FirstWeighbridge
                        LEFT JOIN Weighbridge AS HW ON HW.Id = SL.SecondWeighbridge
                        LEFT JOIN WeChatUser AS RS_WU ON RS_WU.Id = SL.ReceivingStaffId
                        LEFT JOIN WeChatUser AS SS_WU ON SS_WU.Id = SL.ShipStaffId
WHERE RowNumber > 20

 SELECT * FROM WeighingRecord WHERE ShippingListId IN ({shippingListIds}) AND IsUsing = 1 AND WeighingTime IS NOT NULL 
