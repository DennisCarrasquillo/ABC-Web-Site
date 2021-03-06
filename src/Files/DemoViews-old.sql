USE [BLSInventory]
GO
CREATE VIEW [dbo].[ViewPO]
AS
SELECT     TOP (100) PERCENT dbo.POHeaders.PONumber, dbo.POHeaders.PODate, dbo.Vendors.VendorName, dbo.PODetails.Quantity, dbo.PODetails.Cost, 
                      dbo.PODetails.Manufacturer, dbo.PODetails.Datecode, dbo.PODetails.ItemNumber, dbo.PODetails.Description, dbo.POHeaders.Status, 
                      dbo.POHeaders.Vendor_LocationId, dbo.POHeaders.Vendor_ContactId, dbo.POHeaders.BillTo_LocationId, dbo.POHeaders.ShipTo_LocationId, 
                      dbo.POHeaders.BillTo_ContactId, dbo.POHeaders.ShipTo_ContactId, dbo.POHeaders.VendorId, dbo.PODetails.Item_Master_Id, dbo.PODetails.POHeader_Id, 
                      dbo.PODetails.Qty_Received, dbo.PODetails.Qty_Returned, dbo.PODetails.Id AS DetailId, dbo.PODetails.Cost * dbo.PODetails.Quantity AS DetailTotal
FROM         dbo.POHeaders INNER JOIN
                      dbo.PODetails ON dbo.POHeaders.Id = dbo.PODetails.POHeader_Id INNER JOIN
                      dbo.Vendors ON dbo.POHeaders.VendorId = dbo.Vendors.Id
ORDER BY dbo.POHeaders.PONumber;
GO
CREATE VIEW [dbo].[ViewPurchPending]
AS
SELECT     TOP (100) PERCENT dbo.Vendors.VendorName, dbo.PurchasePending.ItemNumber, dbo.PurchasePending.Description, dbo.PurchasePending.Quantity, 
                      dbo.PurchasePending.UnitPrice, dbo.PurchasePending.Manufacturer, dbo.PurchasePending.RequestDate
FROM         dbo.PurchasePending LEFT OUTER JOIN
                      dbo.Vendors ON dbo.PurchasePending.Vendor_Id = dbo.Vendors.Id;
GO
CREATE VIEW [dbo].[ViewSO]
AS
SELECT     dbo.SOHeaders.SONumber, dbo.SOHeaders.Salesman_Id, dbo.SOHeaders.Customer_Id, dbo.SOHeaders.SaleDate, dbo.SOHeaders.SalesTax, 
                      dbo.SOHeaders.ShipContact_Id, dbo.SOHeaders.BillLocation_Id, dbo.SOHeaders.ShipLocation_Id, dbo.SOHeaders.BillContact_Id, dbo.SOHeaders.STatus, 
                      dbo.SOHeaders.Email, dbo.SODetails.SalePrice, dbo.SODetails.Quantity, dbo.SODetails.SOHeader_Id, dbo.SODetails.UnitCost, dbo.SODetails.DateCode, 
                      dbo.SODetails.LotNumber, dbo.Item_Master.Item_Number, dbo.Item_Master.Description, dbo.SODetails.Manufacturer, dbo.Customer.CustomerName, 
                      dbo.SODetails.SalePrice * dbo.SODetails.Quantity AS DetailTotal, dbo.SODetails.Id AS DetailId
FROM         dbo.SOHeaders INNER JOIN
                      dbo.SODetails ON dbo.SOHeaders.Id = dbo.SODetails.SOHeader_Id INNER JOIN
                      dbo.Customer ON dbo.SOHeaders.Customer_Id = dbo.Customer.Id INNER JOIN
                      dbo.Salesmen ON dbo.SOHeaders.Salesman_Id = dbo.Salesmen.Id AND dbo.Customer.Salesman_Id = dbo.Salesmen.Id INNER JOIN
                      dbo.Users ON dbo.Salesmen.User_Id = dbo.Users.Id INNER JOIN
                      dbo.Item_Master ON dbo.SODetails.Item_Master_Id = dbo.Item_Master.Id;

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "POHeaders"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 261
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PODetails"
            Begin Extent = 
               Top = 10
               Left = 507
               Bottom = 232
               Right = 664
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Vendors"
            Begin Extent = 
               Top = 50
               Left = 266
               Bottom = 255
               Right = 422
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3000
         Alias = 1200
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewPO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewPO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PurchasePending"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 227
               Right = 195
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Vendors"
            Begin Extent = 
               Top = 6
               Left = 233
               Bottom = 114
               Right = 389
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewPurchPending'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewPurchPending'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[46] 4[25] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "SOHeaders"
            Begin Extent = 
               Top = 4
               Left = 470
               Bottom = 258
               Right = 626
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SODetails"
            Begin Extent = 
               Top = 69
               Left = 265
               Bottom = 295
               Right = 422
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Customer"
            Begin Extent = 
               Top = 17
               Left = 1031
               Bottom = 261
               Right = 1184
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Salesmen"
            Begin Extent = 
               Top = 104
               Left = 832
               Bottom = 197
               Right = 983
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Users"
            Begin Extent = 
               Top = 209
               Left = 643
               Bottom = 317
               Right = 794
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Item_Master"
            Begin Extent = 
               Top = 189
               Left = 58
               Bottom = 297
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4365
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewSO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      Alias = 1980
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewSO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewSO'
GO
