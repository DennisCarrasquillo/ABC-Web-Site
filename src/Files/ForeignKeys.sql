USE [BLSInventory]

ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_ClientAddress] FOREIGN KEY([Client_Id])
REFERENCES [dbo].[Client] ([Id])

ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_ClientAddress]

ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_ContactAddress] FOREIGN KEY([Contact_Id])
REFERENCES [dbo].[Contacts] ([Id])

ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_ContactAddress]

ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAddress] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Id])

ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_CustomerAddress]

ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_VendorAddress] FOREIGN KEY([Vendor_Id])
REFERENCES [dbo].[Vendors] ([Id])

ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_VendorAddress]

ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_WarehouseAddress] FOREIGN KEY([Warehouse_Id])
REFERENCES [dbo].[Warehouses] ([Id])

ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_WarehouseAddress]

ALTER TABLE [dbo].[Bins]  WITH CHECK ADD  CONSTRAINT [FK_ShelfBin] FOREIGN KEY([Shelf_Id])
REFERENCES [dbo].[Shelves] ([Id])

ALTER TABLE [dbo].[Bins] CHECK CONSTRAINT [FK_ShelfBin]

ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_CustomerContacts] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Id])

ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_CustomerContacts]

ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_UsersContact] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])

ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_UsersContact]

ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_VendorContact] FOREIGN KEY([Vendor_Id])
REFERENCES [dbo].[Vendors] ([Id])

ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_VendorContact]

ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_SalesmanCustomer] FOREIGN KEY([Salesman_Id])
REFERENCES [dbo].[Salesmen] ([Id])

ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_SalesmanCustomer]

ALTER TABLE [dbo].[FloorPlans]  WITH CHECK ADD  CONSTRAINT [FK_WarehouseFloorPlan] FOREIGN KEY([Warehouse_Id])
REFERENCES [dbo].[Warehouses] ([Id])

ALTER TABLE [dbo].[FloorPlans] CHECK CONSTRAINT [FK_WarehouseFloorPlan]

ALTER TABLE [dbo].[FrequencyDiscounts]  WITH CHECK ADD  CONSTRAINT [FK_Item_MasterFrequencyDiscounts] FOREIGN KEY([Item_Master_Id])
REFERENCES [dbo].[Item_Master] ([Id])

ALTER TABLE [dbo].[FrequencyDiscounts] CHECK CONSTRAINT [FK_Item_MasterFrequencyDiscounts]

ALTER TABLE [dbo].[Item_Alternates]  WITH CHECK ADD  CONSTRAINT [FK_Item_MasterItem_Alternates] FOREIGN KEY([Item_Master_Id])
REFERENCES [dbo].[Item_Master] ([Id])

ALTER TABLE [dbo].[Item_Alternates] CHECK CONSTRAINT [FK_Item_MasterItem_Alternates]

ALTER TABLE [dbo].[Item_Images]  WITH CHECK ADD  CONSTRAINT [FK_Item_MasterItem_Images] FOREIGN KEY([Item_Master_Id])
REFERENCES [dbo].[Item_Master] ([Id])

ALTER TABLE [dbo].[Item_Images] CHECK CONSTRAINT [FK_Item_MasterItem_Images]

ALTER TABLE [dbo].[Item_Master]  WITH CHECK ADD  CONSTRAINT [FK_Item_Master_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Id])

ALTER TABLE [dbo].[Item_Master] CHECK CONSTRAINT [FK_Item_Master_Category]

ALTER TABLE [dbo].[Item_Master]  WITH CHECK ADD  CONSTRAINT [FK_Item_Master_SubCategory] FOREIGN KEY([SubCategory_Id])
REFERENCES [dbo].[SubCategory] ([Id])

ALTER TABLE [dbo].[Item_Master] CHECK CONSTRAINT [FK_Item_Master_SubCategory]

ALTER TABLE [dbo].[Item_Quantity]  WITH CHECK ADD  CONSTRAINT [FK_Item_MasterItem_Quantity] FOREIGN KEY([Item_Master_Id])
REFERENCES [dbo].[Item_Master] ([Id])

ALTER TABLE [dbo].[Item_Quantity] CHECK CONSTRAINT [FK_Item_MasterItem_Quantity]

ALTER TABLE [dbo].[Item_Quantity]  WITH CHECK ADD  CONSTRAINT [FK_LotsItem_Quantity] FOREIGN KEY([Lot_Id])
REFERENCES [dbo].[Lots] ([Id])

ALTER TABLE [dbo].[Item_Quantity] CHECK CONSTRAINT [FK_LotsItem_Quantity]

ALTER TABLE [dbo].[Item_Quantity]  WITH CHECK ADD  CONSTRAINT [FK_PODetailQuantity] FOREIGN KEY([PODetail_Id])
REFERENCES [dbo].[PODetails] ([Id])

ALTER TABLE [dbo].[Item_Quantity] CHECK CONSTRAINT [FK_PODetailQuantity]

ALTER TABLE [dbo].[Item_Quantity]  WITH CHECK ADD  CONSTRAINT [FK_VendorItem_Quantity] FOREIGN KEY([Vendor_Id])
REFERENCES [dbo].[Vendors] ([Id])

ALTER TABLE [dbo].[Item_Quantity] CHECK CONSTRAINT [FK_VendorItem_Quantity]

ALTER TABLE [dbo].[Item_QuantityBin]  WITH CHECK ADD  CONSTRAINT [FK_Item_QuantityBin_Bin] FOREIGN KEY([Bins_Id])
REFERENCES [dbo].[Bins] ([Id])

ALTER TABLE [dbo].[Item_QuantityBin] CHECK CONSTRAINT [FK_Item_QuantityBin_Bin]

ALTER TABLE [dbo].[Item_QuantityBin]  WITH CHECK ADD  CONSTRAINT [FK_Item_QuantityBin_Item_Quantity] FOREIGN KEY([Item_Quantity_Id])
REFERENCES [dbo].[Item_Quantity] ([Id])

ALTER TABLE [dbo].[Item_QuantityBin] CHECK CONSTRAINT [FK_Item_QuantityBin_Item_Quantity]

ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_WarehouseLocations] FOREIGN KEY([Warehouse_Id])
REFERENCES [dbo].[Warehouses] ([Id])

ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_WarehouseLocations]

ALTER TABLE [dbo].[Lots]  WITH CHECK ADD  CONSTRAINT [FK_VendorLots] FOREIGN KEY([Vendor_Id])
REFERENCES [dbo].[Vendors] ([Id])

ALTER TABLE [dbo].[Lots] CHECK CONSTRAINT [FK_VendorLots]

ALTER TABLE [dbo].[Note]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Note] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Id])

ALTER TABLE [dbo].[Note] CHECK CONSTRAINT [FK_Customer_Note]

ALTER TABLE [dbo].[Note]  WITH CHECK ADD  CONSTRAINT [FK_VendorNote] FOREIGN KEY([Vendor_Id])
REFERENCES [dbo].[Vendors] ([Id])

ALTER TABLE [dbo].[Note] CHECK CONSTRAINT [FK_VendorNote]

ALTER TABLE [dbo].[PODetails]  WITH CHECK ADD  CONSTRAINT [FK_PODetailItem_Master] FOREIGN KEY([Item_Master_Id])
REFERENCES [dbo].[Item_Master] ([Id])

ALTER TABLE [dbo].[PODetails] CHECK CONSTRAINT [FK_PODetailItem_Master]

ALTER TABLE [dbo].[PODetails]  WITH CHECK ADD  CONSTRAINT [FK_POHeaderPODetail] FOREIGN KEY([POHeader_Id])
REFERENCES [dbo].[POHeaders] ([Id])

ALTER TABLE [dbo].[PODetails] CHECK CONSTRAINT [FK_POHeaderPODetail]

ALTER TABLE [dbo].[POHeaders]  WITH CHECK ADD  CONSTRAINT [FK_POHeaderVendor] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendors] ([Id])

ALTER TABLE [dbo].[POHeaders] CHECK CONSTRAINT [FK_POHeaderVendor]

ALTER TABLE [dbo].[PricingBasis]  WITH CHECK ADD  CONSTRAINT [FK_Item_MasterPricingBasis] FOREIGN KEY([Item_Master_Id])
REFERENCES [dbo].[Item_Master] ([Id])

ALTER TABLE [dbo].[PricingBasis] CHECK CONSTRAINT [FK_Item_MasterPricingBasis]

ALTER TABLE [dbo].[PurchaseHistory]  WITH CHECK ADD  CONSTRAINT [FK_Item_MasterPurchseHistory] FOREIGN KEY([Item_Master_Id])
REFERENCES [dbo].[Item_Master] ([Id])

ALTER TABLE [dbo].[PurchaseHistory] CHECK CONSTRAINT [FK_Item_MasterPurchseHistory]

ALTER TABLE [dbo].[PurchaseHistory]  WITH CHECK ADD  CONSTRAINT [FK_VendorPurchseHistory] FOREIGN KEY([Vendor_Id])
REFERENCES [dbo].[Vendors] ([Id])

ALTER TABLE [dbo].[PurchaseHistory] CHECK CONSTRAINT [FK_VendorPurchseHistory]

ALTER TABLE [dbo].[PurchasePending]  WITH CHECK ADD  CONSTRAINT [FK_ItemMasterPurchasePending] FOREIGN KEY([Item_Master_Id])
REFERENCES [dbo].[Item_Master] ([Id])

ALTER TABLE [dbo].[PurchasePending] CHECK CONSTRAINT [FK_ItemMasterPurchasePending]

ALTER TABLE [dbo].[PurchasePending]  WITH CHECK ADD  CONSTRAINT [FK_VendorPurchasePending] FOREIGN KEY([Vendor_Id])
REFERENCES [dbo].[Vendors] ([Id])

ALTER TABLE [dbo].[PurchasePending] CHECK CONSTRAINT [FK_VendorPurchasePending]

ALTER TABLE [dbo].[Racks]  WITH CHECK ADD  CONSTRAINT [FK_LocationsRack] FOREIGN KEY([Location_Id])
REFERENCES [dbo].[Locations] ([Id])

ALTER TABLE [dbo].[Racks] CHECK CONSTRAINT [FK_LocationsRack]

ALTER TABLE [dbo].[Reminders]  WITH CHECK ADD  CONSTRAINT [FK_User_Reminders] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])

ALTER TABLE [dbo].[Reminders] CHECK CONSTRAINT [FK_User_Reminders]

ALTER TABLE [dbo].[SalesHistories]  WITH CHECK ADD  CONSTRAINT [FK_Customer_SalesHistories] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])

ALTER TABLE [dbo].[SalesHistories] CHECK CONSTRAINT [FK_Customer_SalesHistories]

ALTER TABLE [dbo].[SalesHistories]  WITH CHECK ADD  CONSTRAINT [FK_Item_MasterSalesHistory] FOREIGN KEY([Item_Master_Id])
REFERENCES [dbo].[Item_Master] ([Id])

ALTER TABLE [dbo].[SalesHistories] CHECK CONSTRAINT [FK_Item_MasterSalesHistory]

ALTER TABLE [dbo].[SalesHistories]  WITH CHECK ADD  CONSTRAINT [FK_Vendor_SalesHistories] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendors] ([Id])

ALTER TABLE [dbo].[SalesHistories] CHECK CONSTRAINT [FK_Vendor_SalesHistories]

ALTER TABLE [dbo].[Salesmen]  WITH CHECK ADD  CONSTRAINT [FK_UsersSalesmen] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])

ALTER TABLE [dbo].[Salesmen] CHECK CONSTRAINT [FK_UsersSalesmen]

ALTER TABLE [dbo].[SalesPending]  WITH CHECK ADD  CONSTRAINT [FK_CustomerSalesPending] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Id])

ALTER TABLE [dbo].[SalesPending] CHECK CONSTRAINT [FK_CustomerSalesPending]

ALTER TABLE [dbo].[SalesPending]  WITH CHECK ADD  CONSTRAINT [FK_ItemMasterSalesPending] FOREIGN KEY([Item_Master_Id])
REFERENCES [dbo].[Item_Master] ([Id])

ALTER TABLE [dbo].[SalesPending] CHECK CONSTRAINT [FK_ItemMasterSalesPending]

ALTER TABLE [dbo].[SalesPending]  WITH CHECK ADD  CONSTRAINT [FK_QuantitySalesPending] FOREIGN KEY([Quantity_Id])
REFERENCES [dbo].[Item_Quantity] ([Id])

ALTER TABLE [dbo].[SalesPending] CHECK CONSTRAINT [FK_QuantitySalesPending]

ALTER TABLE [dbo].[Shelves]  WITH CHECK ADD  CONSTRAINT [FK_RackShelf] FOREIGN KEY([Rack_Id])
REFERENCES [dbo].[Racks] ([Id])

ALTER TABLE [dbo].[Shelves] CHECK CONSTRAINT [FK_RackShelf]

ALTER TABLE [dbo].[SODetails]  WITH CHECK ADD  CONSTRAINT [FK_Item_MasterSODetail] FOREIGN KEY([Item_Master_Id])
REFERENCES [dbo].[Item_Master] ([Id])

ALTER TABLE [dbo].[SODetails] CHECK CONSTRAINT [FK_Item_MasterSODetail]

ALTER TABLE [dbo].[SODetails]  WITH CHECK ADD  CONSTRAINT [FK_SOHeaderSODetail] FOREIGN KEY([SOHeader_Id])
REFERENCES [dbo].[SOHeaders] ([Id])

ALTER TABLE [dbo].[SODetails] CHECK CONSTRAINT [FK_SOHeaderSODetail]

ALTER TABLE [dbo].[SOHeaders]  WITH CHECK ADD  CONSTRAINT [FK_CustomerSOHeaders] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([Id])

ALTER TABLE [dbo].[SOHeaders] CHECK CONSTRAINT [FK_CustomerSOHeaders]

ALTER TABLE [dbo].[SOHeaders]  WITH CHECK ADD  CONSTRAINT [FK_SalesmanSOHeader] FOREIGN KEY([Salesman_Id])
REFERENCES [dbo].[Salesmen] ([Id])

ALTER TABLE [dbo].[SOHeaders] CHECK CONSTRAINT [FK_SalesmanSOHeader]

ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([Id])

ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Category]

ALTER TABLE [dbo].[Template_Item]  WITH CHECK ADD  CONSTRAINT [FK_VendorVendor_Template] FOREIGN KEY([Vendor_Id])
REFERENCES [dbo].[Vendors] ([Id])

ALTER TABLE [dbo].[Template_Item] CHECK CONSTRAINT [FK_VendorVendor_Template]

ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_ClientUser] FOREIGN KEY([Client_Id])
REFERENCES [dbo].[Client] ([Id])

ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_ClientUser]

ALTER TABLE [dbo].[Warehouses]  WITH CHECK ADD  CONSTRAINT [FK_POHeaderWarehouse] FOREIGN KEY([POHeader_Id])
REFERENCES [dbo].[POHeaders] ([Id])

ALTER TABLE [dbo].[Warehouses] CHECK CONSTRAINT [FK_POHeaderWarehouse]

