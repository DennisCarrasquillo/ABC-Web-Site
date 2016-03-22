USE [BLSInventory]

SET IDENTITY_INSERT [dbo].[Vendors] ON 


INSERT [dbo].[Vendors] ([Id], [Description], [BusinessType], [VendorName], [ReorderDays], [MinShipAmount], [AccountNumber], [CageCode], [SICcode], [NAICCode]) VALUES (1, N'Electronics and more', 1, N'ABC Inventory', 5, CAST(0.0000 AS Decimal(19, 4)), N'V001001', N'ABC001', N'123456', N'423690')

INSERT [dbo].[Vendors] ([Id], [Description], [BusinessType], [VendorName], [ReorderDays], [MinShipAmount], [AccountNumber], [CageCode], [SICcode], [NAICCode]) VALUES (3, N'Large Inventory', 1, N'DEF Parts', 3, CAST(100.0000 AS Decimal(19, 4)), N'DP001001', N'DP001', N'', N'423690')

INSERT [dbo].[Vendors] ([Id], [Description], [BusinessType], [VendorName], [ReorderDays], [MinShipAmount], [AccountNumber], [CageCode], [SICcode], [NAICCode]) VALUES (4, N'Connectors and more', 1, N'GHI Suppliers', 10, CAST(200.0000 AS Decimal(19, 4)), N'GS09009', N'GS009', N'', N'334417')

INSERT [dbo].[Vendors] ([Id], [Description], [BusinessType], [VendorName], [ReorderDays], [MinShipAmount], [AccountNumber], [CageCode], [SICcode], [NAICCode]) VALUES (5, N'Parts Mfg.', 3, N'JKL Industries', 30, CAST(1000.0000 AS Decimal(19, 4)), N'78910', N'', N'', N'')

SET IDENTITY_INSERT [dbo].[Vendors] OFF

SET IDENTITY_INSERT [dbo].[Lots] ON 


INSERT [dbo].[Lots] ([Id], [Lot_Number], [Lot_Date], [Vendor_Id]) VALUES (1, N'NEX1_2015114', CAST(N'2016-03-20 00:00:00.000' AS DateTime), 1)

INSERT [dbo].[Lots] ([Id], [Lot_Number], [Lot_Date], [Vendor_Id]) VALUES (2, N'Import1_2015114', CAST(N'2015-11-04 19:14:47.087' AS DateTime), 3)

INSERT [dbo].[Lots] ([Id], [Lot_Number], [Lot_Date], [Vendor_Id]) VALUES (3, N'DEFLot1', CAST(N'2016-03-20 00:00:00.000' AS DateTime), 3)

SET IDENTITY_INSERT [dbo].[Lots] OFF

SET IDENTITY_INSERT [dbo].[Category] ON 


INSERT [dbo].[Category] ([Id], [Category]) VALUES (2, N'Battery Products')

INSERT [dbo].[Category] ([Id], [Category]) VALUES (3, N'Cable Assemblies')

INSERT [dbo].[Category] ([Id], [Category]) VALUES (4, N'Wire Cable')

INSERT [dbo].[Category] ([Id], [Category]) VALUES (5, N'Connectors')

SET IDENTITY_INSERT [dbo].[Category] OFF

SET IDENTITY_INSERT [dbo].[SubCategory] ON 


INSERT [dbo].[SubCategory] ([Id], [SubCategory], [Category_Id]) VALUES (5, N'Accessories', 2)

INSERT [dbo].[SubCategory] ([Id], [SubCategory], [Category_Id]) VALUES (6, N'Chargers', 2)

INSERT [dbo].[SubCategory] ([Id], [SubCategory], [Category_Id]) VALUES (7, N'Barrel Audio Cables', 3)

INSERT [dbo].[SubCategory] ([Id], [SubCategory], [Category_Id]) VALUES (8, N'Caxial', 4)

SET IDENTITY_INSERT [dbo].[SubCategory] OFF

SET IDENTITY_INSERT [dbo].[Item_Master] ON 


INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (1, N'42946-2', N'5/16R 8-12ga Tyco 42946-2          ', NULL, N'95232390', NULL, NULL, NULL, 3900, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (2, N'DT04-6P gray', N'Conn  Deutsch DT04-6P gray         ', NULL, N'94928720', NULL, NULL, NULL, 1000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (3, N'DTCE04-1-12P-E003', N'Conn 1way Deu DTCE04-1-12P-E003    ', NULL, N'94928790', NULL, NULL, NULL, 105, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (4, N'09 4413 11', N'Conn 3way Kostal 09 4413 11        ', NULL, N'94933280', NULL, NULL, NULL, 7012, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (5, N'12065158', N'Connector 5 Way 12065158           ', NULL, N'94933790', NULL, NULL, NULL, 300, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (6, N'174044-2', N'Conn 8way Mate&LK Tyco 174044-2    ', NULL, N'94935700', NULL, NULL, NULL, 1888, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (7, N'3 334 485 045', N'Conn 5way Bosch 3 334 485 045      ', NULL, N'94935810', NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (8, N'12047783', N'Lock Packard 12047783              ', NULL, N'94946770', NULL, NULL, NULL, 12936, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (9, N'IL-AG5-14S-D3C1-A', N'Conn 14way JAE IL-AG5-14S-D3C1-A   ', NULL, N'94948470', NULL, NULL, NULL, 2098, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (10, N'HD36-24-19SN', N'Conn 19way Deutsch HD36-24-19SN    ', NULL, N'94951060', NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (11, N'15492546', N'Conn 18way P2S Packard 15492546    ', NULL, N'94951070', NULL, NULL, NULL, 442, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (12, N'932-977-100', N'Conn 3way w/dio Hirsh 932-977-100  ', NULL, N'94951550', NULL, NULL, NULL, 148, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (13, N'01520006Z', N'Conn LittelFuse 01520006Z          ', NULL, N'94952590', N'', N'', NULL, 300, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (14, N'1-928403-137', N'Conn 2way Bosch 1-928403-137       ', NULL, N'94952720', NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (15, N'32006-D22', N'Conn 8way Bussman 32006-D22        ', NULL, N'94953560', NULL, NULL, NULL, 195, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (16, N'32006-B22', N'Conn 8way Bussman 32006-B22        ', NULL, N'94953570', NULL, NULL, NULL, 499, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (17, N'32006-A22', N'Conn 8way Bussman 32006-A22        ', NULL, N'94953580', NULL, NULL, NULL, 771, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (18, N'12092840', N'Conn 5way P&S 12092840             ', NULL, N'94953860', NULL, NULL, NULL, 548, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (19, N'12047886', N'Conn 8way P&S 12047886             ', NULL, N'94956300', NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (20, N'12191910', N'Conn 6way GT150 P&S 12191910       ', NULL, N'94956320', NULL, NULL, NULL, 800, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (21, N'171898-1', N'Conn 6way Tyco 171898-1            ', NULL, N'94958720', NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (22, N'6288757', N'Conn 6way P&S 06288757             ', NULL, N'94958820', N'', N'', NULL, 338, NULL, 5, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (23, N'172129-1', N'Connector 2way Tyco 172129-1       ', NULL, N'94958860', NULL, NULL, NULL, 9262, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (24, N'174932-1', N'Connector 10way Tyco 174932-1      ', NULL, N'94958880', NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (25, N'770 030-1', N'Conn Kit 15way Tyco 770 030-1      ', NULL, N'94958990', NULL, NULL, NULL, 373, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (26, N'1718284-1', N'Backshell 90 degree Tyco 1718284-1 ', NULL, N'94959976', NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (27, N'DT06-2S-E003', N'Conn 2way Deutsch DT06-2S-E003     ', NULL, N'94960181', NULL, NULL, NULL, 204, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (28, N'DRC26-50S04', N'Conn 50way Deutsch DRC26-50S04     ', NULL, N'94960234', NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (29, N'206070-1', N'Clamp Tyco 206070-1                ', NULL, N'94960520', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (30, N'59187', N'Switch Module  Fargo 59187         ', NULL, N'94960559', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (31, N'1541 0208', N'Sec Lock  P&S 1541 0208            ', NULL, N'94960866', NULL, NULL, NULL, 892, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (32, N'7157-7813-80', N'Sec Lock 2cav Yazaki 7157-7813-80  ', NULL, N'94960966', NULL, NULL, NULL, 2184, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (33, N'12047900', N'Sec Lock   P&S 12047900            ', NULL, N'94961017', NULL, NULL, NULL, 213, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (34, N'15373422', N'Primary Lock GT P&S 15373422       ', NULL, N'94961199', NULL, NULL, NULL, 985, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (35, N'15369322', N'Lever Lock GT Series P&S 15369322  ', NULL, N'94961201', NULL, NULL, NULL, 279, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (36, N'32006-C22', N'Conn 8way Grn Buss 32006-C22       ', NULL, N'94961229', NULL, NULL, NULL, 437, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (37, N'DT06-12SA-C015', N'Conn 12way Blk  DEU DT06-12SB-C015 ', NULL, N'94961412', NULL, NULL, NULL, 362, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (38, N'1-967627-1', N'Conn 12way Tyco 1-967627-1         ', NULL, N'94961474', NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (39, N'DRC26-50S01', N'Conn 50way DEU DRC26-50S01         ', NULL, N'94961549', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (40, N'10-584459-08P', N'Conn 8way Amphenol 10-584459-08P   ', NULL, N'94961587', NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (41, N'174952-1', N'Conn 20way hinge wht Tyco 174952-1 ', NULL, N'94961896', NULL, NULL, NULL, 413, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (42, N'E-4550', N'Wire Dress upper half AFL E-4550   ', NULL, N'94961902', NULL, NULL, NULL, 2760, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (43, N'E-4551', N'Wire Dress lower half AFL E-4551   ', NULL, N'94961903', NULL, NULL, NULL, 3576, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (44, N'WB-51SAR', N'Sec Lock Left WB-51SAR             ', NULL, N'94961920', NULL, NULL, NULL, 216, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (45, N'DRC26-60S06', N'Conn 60way Ladd DRC26-60S06        ', NULL, N'94962001', NULL, NULL, NULL, 3263, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (46, N'DTM06-08SA', N'Conn 8way Ladd DTM06-08SA          ', NULL, N'94962002', NULL, NULL, NULL, 2442, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (47, N'15326904', N'Conn 6way GT280 P&S 15326904       ', NULL, N'94962022', NULL, NULL, NULL, 597, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (48, N'15336004', N'Conn 2way GT150 P&S 15336004       ', NULL, N'94962046', NULL, NULL, NULL, 530, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (49, N'13614626', N'Conn 2way P&S 13614626             ', NULL, N'94962247', NULL, NULL, NULL, 1000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (50, N'MS25042-18DA', N'Conn Cap  Amphenol MS25042-18DA    ', NULL, N'94962564', NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (51, N'10-150921-162', N'Dummy conn Amphenol 10-150921-162  ', NULL, N'94962661', NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (52, N'DT04-12PB-P021', N'Conn 12way Ladd DT04-12PB-P021     ', NULL, N'94962709', NULL, NULL, NULL, 200, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (53, N'1-1418448-1', N'Conn 7way Tyco 1-1418480-1         ', NULL, N'94967257', NULL, NULL, NULL, 1217, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (54, N'12059185', N'Sec Lock  P&S 12059185             ', NULL, N'94962869', NULL, NULL, NULL, 1746, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (55, N'12059183', N'Conn 2way P&S 12059183             ', NULL, N'94962870', NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (56, N'12110541', N'Conn 6way P&S 12110541             ', NULL, N'94962871', NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (57, N'15357161', N'Lock  P&S 15357161                 ', NULL, N'94963027', NULL, NULL, NULL, 10000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (58, N'15357160', N'Cover 56way P&S 15357160           ', NULL, N'94963028', NULL, NULL, NULL, 800, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (59, N'10-453981-205', N'Cap ASM Amphenol 10-453981-205     ', NULL, N'94965848', NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (60, N'15492553', N'Conn 30way P2S P&S 15492553        ', NULL, N'94965930', NULL, NULL, NULL, 324, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (61, N'2-1703639-1', N'Conn 12way code B Tyco 2-1703639-1 ', NULL, N'94966069', NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (62, N'DTM04-08PA', N'Conn 8way Ladd DTM04-08PA          ', NULL, N'94966070', NULL, NULL, NULL, 395, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (63, N'2040327-1', N'Conn 12way Tyco 2040327-1          ', NULL, N'94966136', NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (64, N'2040328-2', N'Conn 1way Tyco 2040328-2           ', NULL, N'94966137', NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (65, N'09-50-1051', N'Conn 5way Molex 09-50-1051         ', NULL, N'94966221', NULL, NULL, NULL, 79, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (66, N'1411001-1', N'Conn 8way push lk Tyco 1411001-1   ', NULL, N'94966229', NULL, NULL, NULL, 1800, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (67, N'8905117', N'Conn 3way P&S 08905117             ', NULL, N'94966332', N'', N'', NULL, 2972, NULL, 5, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (68, N'DRC26-60S07', N'Conn 60way Ladd DRC26-60S07        ', NULL, N'94966427', NULL, NULL, NULL, 125, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (69, N'15410209', N'Sec Lock P&S 15410209              ', NULL, N'94966430', NULL, NULL, NULL, 794, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (70, N'2013492-1', N'Conn 54way   Tyco 2013492-1        ', NULL, N'94966442', NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (71, N'R63140-001', N'Conn Cover AFL R63140-001          ', NULL, N'94966446', NULL, NULL, NULL, 962, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (72, N'R63516-001', N'PDM Block 55way AFL R63516-001     ', NULL, N'94966449', NULL, NULL, NULL, 2824, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (73, N'AFL E-5914', N'PDM Cover AFL E-5914               ', NULL, N'94966450', NULL, NULL, NULL, 523, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (74, N'E-5914', N'PDM Cover AFL E-5914               ', NULL, N'94966450', NULL, NULL, NULL, 889, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (75, N'R62895-001', N'PDM Bussbar cover AFL R62895-001   ', NULL, N'94966451', NULL, NULL, NULL, 1274, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (76, N'AFL E-5978', N'Term Lock AFL E-5978               ', NULL, N'94966452', NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (77, N'E-5978', N'Term Lock AFL E-5978               ', NULL, N'94966452', NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (78, N'E-5967', N'Term Lock AFL E-5967               ', NULL, N'94966453', NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (79, N'L E-5967', N'Term Lock AFL E-5967               ', NULL, N'94966453', NULL, NULL, NULL, 1269, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (80, N'15326633', N'Conn 4way GT280 P&S 15326633       ', NULL, N'94966457', NULL, NULL, NULL, 800, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (81, N'12129387', N'Conn 1way MP800 P&S 12129387       ', NULL, N'94966475', NULL, NULL, NULL, 3049, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (82, N'12129384', N'Sec Lock  P&S 12129384             ', NULL, N'94966476', NULL, NULL, NULL, 5820, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (83, N'4-1437290-7', N'Conn 32way Tyco 4-1437290-7        ', NULL, N'94966526', NULL, NULL, NULL, 4065, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (84, N'7123-1424-40', N'Conn 2way Yazaki 7123-1424-40      ', NULL, N'94966607', NULL, NULL, NULL, 482, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (85, N'0528-003-3805', N'Back shell strain  0528-003-3805   ', NULL, N'94966676', N'', N'', NULL, 766, NULL, 5, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (86, N'HDP26-24-19SE-L017', N'Conn 19way HDP26-24-19SE-L017      ', NULL, N'94966678', NULL, NULL, NULL, 137, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (87, N'172129-9', N'Connector 2way Tyco 172129-9       ', NULL, N'94966681', NULL, NULL, NULL, 4000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (88, N'184163-1', N'Cap conn Tyco 184163-1             ', NULL, N'94966884', NULL, NULL, NULL, 1982, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (89, N'15480528', N'Lock Retainer Blk P&S 15480528     ', NULL, N'94966898', NULL, NULL, NULL, 1500, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (90, N'0528-002-6005', N'BKshell90deg16mm 60cav0528-002-6005', NULL, N'94966914', N'', N'', NULL, 9, NULL, 5, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (91, N'DT16-15SA-K003', N'Conn 15way Deutsch DT16-15SA-K003  ', NULL, N'94966967', NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (92, N'100608', N'Conn 28way Fargo 100608            ', NULL, N'94966994', NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (93, N'13603404', N'Conn 100w 11way P&S 13603404       ', NULL, N'94967004', NULL, NULL, NULL, 494, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (94, N'12160544', N'Conn 20way  P&S 12160544           ', NULL, N'94967005', NULL, NULL, NULL, 350, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (95, N'15339498', N'Conn 8way   P&S 15339498           ', NULL, N'94967007', NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (96, N'15339497', N'Conn 8way   P&S 15339497           ', NULL, N'94967008', NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (97, N'15317237', N'Conn 8way   P&S 15317237           ', NULL, N'94967009', NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (98, N'15317238', N'Conn 8way   P&S 15317238           ', NULL, N'94967010', NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (99, N'12146046', N'Conn 5way MP150 P&S 12146046       ', NULL, N'94967011', NULL, NULL, NULL, 1008, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (100, N'206322-1', N'Backshell Tyco 206322-1            ', NULL, N'94967035', NULL, NULL, NULL, 86, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (101, N'59188', N'Conn Dbl relay module 059188       ', NULL, N'94967069', NULL, NULL, NULL, 314, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (102, N'HDP26-18-14SE', N'Conn 14way Ladd HDP26-18-14SE      ', NULL, N'94967238', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (103, N'794223-1', N'Term 16-20ga Tyco 794223-1         ', NULL, N'95203185', NULL, NULL, NULL, 5000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (104, N'171661-1', N'Term 16-20ga Tyco 171661-1         ', NULL, N'95203191', NULL, NULL, NULL, 6000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (105, N'S 12129373', N'Term 20-22ga P&S 12129373          ', NULL, N'95203192', NULL, NULL, NULL, 6608, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (106, N'282109-1', N'Term 20-16ga Tyco 282109-1         ', NULL, N'95214400', NULL, NULL, NULL, 4000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (107, N'1411596-1', N'Terminal Amp 1411596-1             ', NULL, N'95220440', NULL, NULL, NULL, 3000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (108, N'12015301', N'Terminal 12015301                  ', NULL, N'95224360', N'', N'', NULL, 4500, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (109, N'7116-4100-02', N'Term Yazaki 7116-4100-02           ', NULL, N'95224960', NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (110, N'1-968851-3', N'Term 14-16ga  Tyco 1-968851-3      ', NULL, N'95225270', NULL, NULL, NULL, 8100, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (111, N'61988-2', N'Term Amp 61988-2                   ', NULL, N'95225840', NULL, NULL, NULL, 1278, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (112, N'7114-4140-02', N'Term 16-20ga 6.3 Yaz 7114-4140-02  ', NULL, N'95226461', NULL, NULL, NULL, 1000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (113, N'8240-4882', N'Term .3-.5mm Sumitomo 8240-4882    ', NULL, N'95227070', NULL, NULL, NULL, 52000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (114, N'12084913', N'Term 0.5-0.35mm 100w P&S 12084913  ', NULL, N'95228030', NULL, NULL, NULL, 12390, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (115, N'15336748', N'Term MP800 5,0mm P&S 15336748      ', NULL, N'95228150', NULL, NULL, NULL, 795, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (116, N'1210 3504', N'Ring M8 5,0mm P&S 1210 3504        ', NULL, N'95228270', NULL, NULL, NULL, 4880, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (117, N'2962985', N'Splice Clip P&S 02962985           ', NULL, N'95228290', NULL, NULL, NULL, 2960, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (118, N'12004439', N'Term Punch Pack P&S 12004439       ', NULL, N'95228700', NULL, NULL, NULL, 5600, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (119, N'12004437', N'Term Punch Pack P&S 12004437       ', NULL, N'95228710', N'', N'', NULL, 3722, NULL, 5, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (120, N'W-ST-200', N'Term 16-18ga Euramtec W-ST-200     ', NULL, N'95229420', NULL, NULL, NULL, 1000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (121, N'110644', N'Term Bus 20ga P&S 12110644         ', NULL, N'95229970', NULL, NULL, NULL, 4250, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (122, N'485030-1', N'5/16R 18-14ga Tyco 485030-1        ', NULL, N'95230290', NULL, NULL, NULL, 6705, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (123, N'3-521057-2', N'Term 14-16ga M Full Tyco 3-521057-2', NULL, N'95230620', NULL, NULL, NULL, 2989, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (124, N'170340-3', N'Term 20-14ga Tyco 170340-3         ', NULL, N'95230670', NULL, NULL, NULL, 3000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (125, N'2971962', N'Term 14-16ga P&S 02971962          ', NULL, N'95230850', NULL, NULL, NULL, 5724, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (126, N'2-1393310-5', N'Term 20-16ga TYCO 2-1393310-5      ', NULL, N'95231302', NULL, NULL, NULL, 27520, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (127, N'7116-1472', N'Term 14-16ga Yazaki 7116-1472      ', NULL, N'95231340', NULL, NULL, NULL, 3000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (128, N'2-33466-3', N'5/16R 6Ga Tyco 2-33466-3           ', NULL, N'95231405', NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (129, N'2984008', N'Term (2)14-16ga P&S 02984008       ', NULL, N'95231412', NULL, NULL, NULL, 1000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (130, N'2977100', N'Term 12ga P&S 02977100             ', NULL, N'95231415', NULL, NULL, NULL, 1200, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (131, N'12103513', N'1/4R 12-14ga P&S 12103513          ', NULL, N'95231432', NULL, NULL, NULL, 2970, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (132, N'12103505', N'3/8R Term 12-14ga P&S 12103505     ', NULL, N'95231438', NULL, NULL, NULL, 2940, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (133, N'12020400', N'Term 10-12ga P&S 12020400          ', NULL, N'95231441', NULL, NULL, NULL, 1220, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (134, N'12084201', N'Term 20ga    P&S 12084201          ', NULL, N'95231447', NULL, NULL, NULL, 2000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (135, N'15304710', N'Term GT280 20ga P&S 15304710       ', NULL, N'95231549', NULL, NULL, NULL, 6170, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (136, N'1202 0334', N'Term 18-20ga P&S 1202 0334         ', NULL, N'95231565', NULL, NULL, NULL, 2550, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (137, N'34004', N'Term 1/2R 6ga Waytek 34004         ', NULL, N'95231620', NULL, NULL, NULL, 4318, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (138, N'0460-204-08141', N'Term 8-10ga Ladd 0460-204-08141    ', NULL, N'95231669', N'', N'', NULL, 35, NULL, 5, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (139, N'2965867', N'Term 14-16ga P&S 02965867          ', NULL, N'95231755', NULL, NULL, NULL, 640, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (140, N'42474-4', N'Term 18-14ga 250 M Tyco 42474-4    ', NULL, N'95231861', NULL, NULL, NULL, 1500, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (141, N'696362-1', N'Term 18-14ga 250M INS 696362-1     ', NULL, N'95231862', NULL, NULL, NULL, 7000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (142, N'39-00-0081', N'Term 16ga Molex 39-00-0081         ', NULL, N'95231888', NULL, NULL, NULL, 4000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (143, N'LSP1411-58AU', N'Term 14ga FCI LSP1411-58AU         ', NULL, N'95231953', NULL, NULL, NULL, 8555, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (144, N'31711', N'Term14-16ga250F F/INS Waytek 31711 ', NULL, N'95232032', NULL, NULL, NULL, 471, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (145, N'BSN18-3K', N'Butt spl 16-18ga reel Pan BSN18-3K ', NULL, N'95232312', NULL, NULL, NULL, 3000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (146, N'1 928 498 146', N'Term 20-22ga Bosch 1 928 498 146   ', NULL, N'95232325', NULL, NULL, NULL, 10000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (147, N'12124977', N'Term 20-22ga P&S 12124977          ', NULL, N'95232388', NULL, NULL, NULL, 4800, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (148, N'12048254', N'Term 12ga P&S 12048254             ', NULL, N'95232391', NULL, NULL, NULL, 2986, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (149, N'40723', N'Ring Term #6 14-18ga Tyco 40723    ', NULL, N'95232392', NULL, NULL, NULL, 10000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (150, N'3-520116-2', N'Term 14-16ga PreI Tyco 3-520116-2  ', NULL, N'95232396', NULL, NULL, NULL, 120, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (151, N'3T-4944', N'#6Ring 10-12ga Metallon 3T-4944    ', NULL, N'95232426', NULL, NULL, NULL, 6000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (152, N'1 928 498 147', N'Term 0.75-2,0 Bosch 1 928 498 147  ', NULL, N'95232445', NULL, NULL, NULL, 8900, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (153, N'13528779', N'Term GT280 14-12ga P&S 13528779    ', NULL, N'95232474', NULL, NULL, NULL, 8000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (154, N'12103503', N'R Term 10.6 ID 10-12ga P&S 12103503', NULL, N'95232598', NULL, NULL, NULL, 1947, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (155, N'33113-0005', N'Term 14-16ga Molex 33113-0005      ', NULL, N'95232605', NULL, NULL, NULL, 5889, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (156, N'12191479', N'Term 14-16ga P&S 12191479          ', NULL, N'95232678', NULL, NULL, NULL, 1160, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (157, N'60001231', N'Term FCI 60001231                  ', NULL, N'95232712', NULL, NULL, NULL, 19574, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (158, N'12020758', N'Term 14ga P&S 12020758             ', NULL, N'95232750', NULL, NULL, NULL, 4000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (159, N'66100-1', N'Term 18-16ga Tyco 66100-1          ', NULL, N'95292948', NULL, NULL, NULL, 67, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (160, N'5290433', N'Splice Clip P&S 05290433           ', NULL, N'95292966', NULL, NULL, NULL, 5700, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (161, N'42037-2', N'#10R 18-22ga  Tyco 42037-2         ', NULL, N'95293003', NULL, NULL, NULL, 20000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (162, N'Ask 412', N'1/2R term 4ga Ask 412              ', NULL, N'95293013', NULL, NULL, NULL, 4612, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (163, N'33113-0004', N'Term 18-20ga Molex 33113-0004      ', NULL, N'95293014', NULL, NULL, NULL, 5000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (164, N'Term 10-12ga', N'Term 10-12ga                       ', NULL, N'95293015', NULL, NULL, NULL, 14315, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (165, N'AFL E-2045-001', N'Term 2.8 Busbar AFL E-2045-001     ', NULL, N'95293017', NULL, NULL, NULL, 9172, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (166, N'771416HK200', N'Term 14-16ga Lear 771416HK200      ', NULL, N'95293018', NULL, NULL, NULL, 3736, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (167, N'R62893-001', N'Term busbar 6way 6ga R62893-001    ', NULL, N'95293019', NULL, NULL, NULL, 950, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (168, N'361430-YF200', N'Term 14-16ga Lear 361430-YF200     ', NULL, N'95293022', NULL, NULL, NULL, 1715, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (169, N'7116-3250', N'Term 8-10ga Yazaki 7116-3250       ', NULL, N'95293023', NULL, NULL, NULL, 15200, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (170, N'33061-0003', N'Term 10-12ga Molex 33061-0003      ', NULL, N'95293026', NULL, NULL, NULL, 4015, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (171, N'771816-HK200', N'Term 18-20ga Lear 771816-HK200     ', NULL, N'95293027', NULL, NULL, NULL, 6445, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (172, N'12020335', N'Term 14-16ga P&S 12020335          ', NULL, N'95293055', NULL, NULL, NULL, 2313, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (173, N'12160991', N'Term 5/16R 8ga P&S 12160991        ', NULL, N'95293066', NULL, NULL, NULL, 6376, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (174, N'54001414', N'Term 14-16ga FCI 54001414          ', NULL, N'95293070', NULL, NULL, NULL, 7820, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (175, N'2984747', N'Term #4R 18-20ga P&S 02984747      ', NULL, N'95293080', NULL, NULL, NULL, 4000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (176, N'15356827', N'Term 20-22ga Txl Au P&S 15356827   ', NULL, N'95293085', NULL, NULL, NULL, 7600, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (177, N'12110846', N'Term 20-22ga P&S 12110846          ', NULL, N'95293093', NULL, NULL, NULL, 2300, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (178, N'TF-17PC1UC', N'Term (2)18-20ga Fargo TF-17PC1UC   ', NULL, N'95293124', NULL, NULL, NULL, 2095, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (179, N'10TPT', N'Term 3/8R 1/0 Julian 10TPT         ', NULL, N'95293129', NULL, NULL, NULL, 195, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (180, N'12034001', N'Term 10-12ga 630s P&S 12034001     ', NULL, N'95293140', NULL, NULL, NULL, 1865, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (181, N'51026-00000-00', N'Tape 19mm Tesa 51026-00000-00      ', NULL, N'95819374', NULL, NULL, NULL, 62400, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (182, N'12186167', N'Heat Shrink 12186167               ', NULL, N'95835830', NULL, NULL, NULL, 20148, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (183, N'Heat Shrink Blk 65mm', N'Heat Shrink Blk 65mm               ', NULL, N'95847566', NULL, NULL, NULL, 3598, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (184, N'221-1-1/2', N'HSS Alpha Fit-221-1-1/2            ', NULL, N'95847995', NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (185, N'RNF 100-1-BK L=75mm', N'RNF 100-1-BK L=75mm Raychem        ', NULL, N'95848007', NULL, NULL, NULL, 3000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (186, N'RNF 100-1-BK L=75mm Raychem', N'RNF 100-1-BK L=75mm Raychem        ', NULL, N'95848007', NULL, NULL, NULL, 470, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (187, N'hss .375 Alpha Fit-221-3/8-50mm', N'hss .375 Alpha Fit-221-3/8-50mm    ', NULL, N'95848083', NULL, NULL, NULL, 10000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (188, N'Fit-221-3/8-50mm', N'hss .375 Alpha Fit-221-3/8-50mm    ', NULL, N'95848083', NULL, NULL, NULL, 30000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (189, N'Hss 3/4Alpha Fit-221-3/4-130mm', N'Hss 3/4"Alpha Fit-221-3/4-130mm    ', NULL, N'95848505', NULL, NULL, NULL, 952, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (190, N'Heat Slv6.35x55mm blk', N'Heat Slv6.35x55mm blk              ', NULL, N'95848716', NULL, NULL, NULL, 1355, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (191, N'Hss w/melt AL3X 9.5x55mm', N'Hss w/melt AL3X 9.5x55mm           ', NULL, N'95848952', NULL, NULL, NULL, 355, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (192, N'AL3X 6.35x30mm', N'Hss w/melt AL3X 6.35x30mm          ', NULL, N'95848992', NULL, NULL, NULL, 3304, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (193, N'AL3X 12.7x55mm', N'Hss w/melt AL3X 12.7x55mm          ', NULL, N'95848993', NULL, NULL, NULL, 674, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (194, N'CDT NW7.5 PPBS Blk/Yel stripe L=290', N'CDT NW7.5 PPBS Blk/Yel stripe L=290', NULL, N'95849797', NULL, NULL, NULL, 200, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (195, N'Hss 2x4wht 3M FP301-2-Wht', N'Hss 2"x4''wht 3M FP301-2-Wht        ', NULL, N'95849862', NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (196, N'FP301-2-Clear', N'Hss 2"x6"clear 3M FP301-2-Clear    ', NULL, N'95849863', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (197, N'Splicemelt No4 100mm Clear', N'Splicemelt No4 100mm Clear         ', NULL, N'95892910', NULL, NULL, NULL, 1500, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (198, N'SRN29', N'Sealing Bushing SRN29              ', NULL, N'95915810', NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (199, N'1214 6808', N'Boot Packard 1214 6808             ', NULL, N'95916680', NULL, NULL, NULL, 244, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (200, N'7158-3080-60', N'Cavity Plug 6.3 Yaz 7158-3080-60   ', NULL, N'95962130', NULL, NULL, NULL, 616, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (201, N'19 15495721', N'CDT Clip size 19 15495721          ', NULL, N'95962245', NULL, NULL, NULL, 1380, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (202, N'15486971', N'Cable seal 31way P&S 15486971      ', NULL, N'95962265', NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (203, N'9307K79', N'Grommet 1"hole McMaster 9307K79    ', NULL, N'95962274', NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (204, N'90PC20B', N'Boot Blk Julian 90PC20B            ', NULL, N'95962278', NULL, NULL, NULL, 992, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (205, N'FHA002', N'Fuse hld 2*12 w/30amp fuse FHA002  ', NULL, N'96716141', NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (206, N'449 362 041 0', N'796 148-60/00   (449 362 041 0)    ', NULL, N'96716144', NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (207, N'Molded .180 Recept L= 385 MM', N'Molded .180 Recept L= 385 MM       ', NULL, N'96716232', NULL, NULL, NULL, 954, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (208, N'Plug 2*16ga wht/blk L=118', N'Plug 2*16ga wht/blk L=118"         ', NULL, N'96716603', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (209, N'12040984', N'Cdt clip size 6 P&S 12040984       ', NULL, N'96811014', NULL, NULL, NULL, 249, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (210, N'12160374', N'Cdt clip size 19 P&S 12160374      ', NULL, N'96811015', NULL, NULL, NULL, 1951, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (211, N'96811019', N'Conn Bracket                       ', NULL, N'96811019', NULL, NULL, NULL, 150, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (212, N'7807729', N'Cap   Schlemmer 7807729            ', NULL, N'96820095', NULL, NULL, NULL, 2000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (213, N'CN32-20', N'Cap Nut 21mm CN32-20               ', NULL, N'96820835', NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (214, N'1217 6538', N'Shroud P&S 1217 6538               ', NULL, N'96820920', NULL, NULL, NULL, 640, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (215, N'95865751', N'Fur tree clip use w/Tie 95865751   ', NULL, N'96821439', NULL, NULL, NULL, 1500, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (216, N'12059271', N'CDT clip 30mm P&S 12059271         ', NULL, N'96821495', NULL, NULL, NULL, 1745, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (217, N'15305188', N'CDT clip 40mm P&S 15305188         ', NULL, N'96821496', NULL, NULL, NULL, 1048, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (218, N'15417551', N'Cdt Lk Ring 19mm P&S 15417551      ', NULL, N'96821670', NULL, NULL, NULL, 700, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (219, N'17-13-17', N'Cdt Y 17-13-17                     ', NULL, N'96827494', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (220, N'492.16.222', N'T-Clip 22-10-22   492.16.222       ', NULL, N'96827540', NULL, NULL, NULL, 261, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (221, N'4542  Backshell', N'Backshell 4542                     ', NULL, N'96827605', NULL, NULL, NULL, 2915, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (222, N'1 928 404 886', N'End Clip  Bosch 1 928 404 886      ', NULL, N'96828874', NULL, NULL, NULL, 2000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (223, N'82516001', N'Combo cable tie Raymond 082516001  ', NULL, N'96829501', N'', N'', NULL, 2700, NULL, 3, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (224, N'11.48999', N'Cap connector Poppelmann 11.48999  ', NULL, N'96829537', NULL, NULL, NULL, 618, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (225, N'299040', N'Fuse 2amp Littelfuse 299040        ', NULL, N'96830697', NULL, NULL, NULL, 1065, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (226, N'YYYYYYYY', N'Conn w/resistor and diode          ', NULL, N'96837092', NULL, NULL, NULL, 214, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (227, N'6-1393298-2 Relay 12v', N'Relay 12v mini 6-1393298-2         ', NULL, N'96837117', NULL, NULL, NULL, 539, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (228, N'299020', N'Maxi Fuse 20amp Littelfuse 299020  ', NULL, N'96837138', NULL, NULL, NULL, 835, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (229, N'0298100.ZXB', N'Bolt down Fuse 100w 0298100.ZXB    ', NULL, N'96837144', NULL, NULL, NULL, 340, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (230, N'4SGX 150A L=400x2', N'MLD fuse cable 4SGX 150A L=400x2   ', NULL, N'96837149', NULL, NULL, NULL, 420, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (231, N'PAPER TAG 20*100MM HWS 80 (PAPER)', N'PAPER TAG 20*100MM HWS 80 (PAPER)  ', NULL, N'96880203', NULL, NULL, NULL, 42000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (232, N'12015909', N'3/8Ring P&S 12015909               ', NULL, N'95229010', NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (233, N'1-968849-3', N'Term 20ga Tyco 1-968849-3          ', NULL, N'95216020', NULL, NULL, NULL, 11260, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (234, N'1-967627-5', N'Conn 12way Tyco 1-967627-5         ', NULL, N'94951390', NULL, NULL, NULL, 300, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (235, N'12020663', N'Tape on Clip 12020663              ', NULL, N'96827026', NULL, NULL, NULL, 101, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (236, N'M902-2161', N'Backshell Ladd M902-2161           ', NULL, N'96821303', NULL, NULL, NULL, 59, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (237, N'206044-1', N'Conn 14way Tyco 206044-1           ', NULL, N'94961667', NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (238, N'C-2007', N'Conn 5way Sprague C-2007           ', NULL, N'94960277', NULL, NULL, NULL, 187, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (239, N'STB-9050', N'Elbow .50mm cdt Appleton STB-9050  ', NULL, N'96829120', NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (240, N'12110542', N'Sec Lock  P&S 12110542             ', NULL, N'94962872', NULL, NULL, NULL, 2060, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (241, N'282110-1', N'Term Tyco 282 110-1                ', NULL, N'95214410', NULL, NULL, NULL, 5381, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (242, N'51001125', N'Upper cable shaft Schl 51001125    ', NULL, N'96829337', NULL, NULL, NULL, 525, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (243, N'Q0125-020-130-100-002', N'Clear Hss 1/8"Q0125-020-130-100-002', NULL, N'95846827', NULL, NULL, NULL, 25284, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (244, N'192900-0313', N'Conn 12way ITT Cannon 192900-0313  ', NULL, N'94957240', NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (245, N'Q0250-526-900-024', N'Hss w/melt AL3X6.35x76mm           ', NULL, N'95849330', NULL, NULL, NULL, 4976, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (246, N'172888-2', N'Seal Tyco 172888-2                 ', NULL, N'95916910', NULL, NULL, NULL, 5000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (247, N'15326177', N'Stabilizer Packard 15326177        ', NULL, N'96820818', NULL, NULL, NULL, 4464, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (248, N'190020027', N'Term 14-16ga F ins Molex 190020027 ', NULL, N'95292883', NULL, NULL, NULL, 2490, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (249, N'696357-1', N'Term 22-18ga Tyco 696357-1         ', NULL, N'95230630', NULL, NULL, NULL, 5217, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (250, N'8242-4142', N'Terminal Sumitomo 8242-4142        ', NULL, N'95229000', NULL, NULL, NULL, 7340, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (251, N'1011-241-0605', N'Backshell 180deg 1011-241-0605     ', NULL, N'96821451', NULL, NULL, NULL, 422, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (252, N'963243-1', N'cable seal Tyco 963243-1           ', NULL, N'95907250', NULL, NULL, NULL, 7161, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (253, N'2322 187 73121', N'Resist 120 OHM 1/2w 2322 187 73121 ', NULL, N'96830638', NULL, NULL, NULL, 35000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (254, N'9806167', N'Tee 17-17-7.5 9806167              ', NULL, N'96829126', NULL, NULL, NULL, 3059, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (255, N'V1723-00', N'Grommet 20 hole V1723-00           ', NULL, N'95919078', NULL, NULL, NULL, 96, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (256, N'DT06-3S-C015', N'Conn 3way Deutsch DT06-3S-C015     ', NULL, N'94940180', NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (257, N'350537-6', N'Term 20-14ga Au Tyco 350537-6      ', NULL, N'95292785', NULL, NULL, NULL, 2450, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (258, N'297 348 3801', N'Clip 297 348 3801                  ', NULL, N'95812410', NULL, NULL, NULL, 13000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (259, N'1241581-2', N'Conn 17way Tyco 1241581-2          ', NULL, N'94960180', NULL, NULL, NULL, 636, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (260, N'65197', N'Rubber Hose Griffith 65197         ', NULL, N'95846290', NULL, NULL, NULL, 180, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (261, N'9806091', N'T-Mantifold Schlemmer 9806091      ', NULL, N'96828851', NULL, NULL, NULL, 1464, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (262, N'03*0,4MM BLK 073070', N'03*0,4mm blk 073070                ', NULL, N'95820010', NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (263, N'1011-247-1205', N'Backshell Ladd 1011-247-1205       ', NULL, N'96821306', NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (264, N'178421-7', N'Cavity Plug Tyco 178421-7          ', NULL, N'95919193', NULL, NULL, NULL, 29000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (265, N'180923-0', N'Conn 2way  Tyco 180923-0           ', NULL, N'94903920', NULL, NULL, NULL, 6000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (266, N'1N5401DICT-ND', N'Diode 100v3ampDigi-KeyIN5401DICT-ND', NULL, N'96830612', NULL, NULL, NULL, 140, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (267, N'7806102', N'Backshell Schlemmer 7806 102       ', NULL, N'96829090', NULL, NULL, NULL, 1724, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (268, N'12059486', N'Bracket Packard 12059486           ', NULL, N'96810319', NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (269, N'V1995-00', N'Cable Channel V-1995               ', NULL, N'96829064', NULL, NULL, NULL, 118, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (270, N'V1996-00', N'Injector Channel V-1996            ', NULL, N'96829065', NULL, NULL, NULL, 130, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (271, N'V1997-00', N'Injector Channel V-1997            ', NULL, N'96829066', NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (272, N'170258-1', N'Term 14-12ga Tyco 170258-1         ', NULL, N'95232389', NULL, NULL, NULL, 5000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (273, N'492.65.100', N'Y-Clip 10-10-10  492.65.100        ', NULL, N'96828994', NULL, NULL, NULL, 105, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (274, N'1161000603M0200', N'1220 Thermflex slv L=200           ', NULL, N'95848659', NULL, NULL, NULL, 2455, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (275, N'1161000603M0515', N'1220 Thermflex slv L=515           ', NULL, N'95849039', NULL, NULL, NULL, 970, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (276, N'ES2000-NO.2-B9-0-65MM', N'HSS ES2000-No.2-B9-0-65mm          ', NULL, N'95848110', NULL, NULL, NULL, 1180, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (277, N'TAT-125-1-1/2-0-STK', N'HSS w/melt TAT-125-1-1/2-0         ', NULL, N'95848318', NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (278, N'PUR S 4*0,4 L= 110+/-3MM', N'Pur Sleeving 4*0.4mm L=110         ', NULL, N'95829520', NULL, NULL, NULL, 6000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (279, N'9X-2383', N'Tubing .375ID nyl/fiber            ', NULL, N'95848543', NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (280, N'7806851', N'Adapter 90deg NW7.5 Schl 7806851   ', NULL, N'96829185', NULL, NULL, NULL, 96, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (281, N'492.90.045', N'Backshell  Frank 492.90.045        ', NULL, N'96829455', NULL, NULL, NULL, 149, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (282, N'0810-201-2401', N'Bk Shell Grommet DEU 0810-201-2401 ', NULL, N'95918876', NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (283, N'PLT1M-C5', N'Cable Tie GRN Panduit PLT1M-C5     ', NULL, N'95815945', NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (284, N'STB-50', N'Cap w/nut .50mm cdt Appleton STB-50', NULL, N'96829121', NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (285, N'COV-1213Z1', N'Clamp KMC Wiring COV-1213Z1        ', NULL, N'96810450', NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (286, N'019408 001', N'Clip A. Raymond 019 408 001        ', NULL, N'96810316', NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (287, N'178409-6', N'Conn 40way Tyco 178409-6           ', NULL, N'94961682', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (288, N'12129426-B', N'Hex Bolt  P&S 12129426             ', NULL, N'96810460', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (289, N'PVC PURPLE 2 TAPE', N'PVC Purple 2" Tape                 ', NULL, N'95819366', NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (290, N'DERAY-I 3000 6/2 BLKL=46MM+-1,5MM', N'Schr-Schl. DSG Deray-I3000 6/2L=46 ', NULL, N'95827550', NULL, NULL, NULL, 2592, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (291, N'PF-130-8 L=565MM', N'Silicone Fiberglass Slv L=565mm    ', NULL, N'95842730', NULL, NULL, NULL, 124, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (292, N'9806092', N'T Maniforld Schlemmer 9806092      ', NULL, N'96820244', NULL, NULL, NULL, 105, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (293, N'492.16.172', N'T-Clip 17-10-17 492.16.172         ', NULL, N'96829089', NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (294, N'9817303', N'Y-Manifold Schlemmer 9817303       ', NULL, N'96820414', NULL, NULL, NULL, 3000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (295, N'08911368', N'Clamp  Packard 08911368            ', NULL, N'96810320', NULL, NULL, NULL, 1135, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (296, N'12129538', N'Clamp 6mm std M8 P&S 12129538      ', NULL, N'96810449', NULL, NULL, NULL, 711, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (297, N'CAP-21', N'Heat Shrink end cap Alpha Cap-21   ', NULL, N'95847160', NULL, NULL, NULL, 250, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (298, N'655 990 00 54', N'Metal Nut Burger 655 990 00 54     ', NULL, N'96810246', NULL, NULL, NULL, 10100, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (299, N'1-967 416-1', N'1-967416-1 Blk Protective Cap 18way', NULL, N'94922510', NULL, NULL, NULL, 2000, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (300, N'DT04-12PA-BE02', N'Conn 12way  Deutsch DT04-12PA-BE02 ', NULL, N'94962884', NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (301, N'DT06-12SD', N'Conn 12way Deutsch DT06-12SD       ', NULL, N'94949790', NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (302, N'017160', N'Fur tree clip use w/Tie 95865751   ', NULL, N'96821439', NULL, NULL, NULL, 2416, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (303, N'LAT-18-361-2.5 BRADY', N'Label 25.4mm*33.78mm LAT-18-361-2.5', NULL, N'96880225', NULL, NULL, NULL, 4795, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (304, N'12020592', N'Sec Lock P&S 12020592              ', NULL, N'94960097', NULL, NULL, NULL, 218, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (305, N'968037-2', N'Term 14-20ga Tyco 968037-2         ', NULL, N'95232250', NULL, NULL, NULL, 1100, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (306, N'12077993', N'Conn 5way P2S 12077993             ', NULL, N'94960098', NULL, NULL, NULL, 585, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (307, N'52197-1', N'#10R 6ga Tyco 52197-1              ', NULL, N'95231404', NULL, NULL, NULL, 6600, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (308, N'54001819RWA', N'Term 18-20ga FCI 54001819RWA       ', NULL, N'95232016', NULL, NULL, NULL, 15230, NULL, NULL, NULL, NULL)

INSERT [dbo].[Item_Master] ([Id], [Item_Number], [Description], [ItemType], [Internal_Number], [SKU], [NSN], [UnitOfMeasure], [OnHand], [OnOrder], [Category_Id], [SubCategory_Id], [IsAssembly]) VALUES (309, N'H0125-025-300-900-007', N'Heat Slv HS105 1/8x1" Grayline     ', NULL, N'95846819', NULL, NULL, NULL, 49883, NULL, NULL, NULL, NULL)

SET IDENTITY_INSERT [dbo].[Item_Master] OFF

SET IDENTITY_INSERT [dbo].[POHeaders] ON 


INSERT [dbo].[POHeaders] ([Id], [Status], [Vendor_LocationId], [Vendor_ContactId], [PONumber], [PODate], [BillTo_LocationId], [ShipTo_LocationId], [BillTo_ContactId], [ShipTo_ContactId], [VendorId]) VALUES (1, N'RECEIVING', 10, 5, N'PO00004', CAST(N'2015-11-20' AS Date), 1, 2, 1, 1, 3)

INSERT [dbo].[POHeaders] ([Id], [Status], [Vendor_LocationId], [Vendor_ContactId], [PONumber], [PODate], [BillTo_LocationId], [ShipTo_LocationId], [BillTo_ContactId], [ShipTo_ContactId], [VendorId]) VALUES (2, N'CREATED', 6, 3, N'PO00005', CAST(N'2015-12-01' AS Date), 0, 0, 0, 0, 1)

INSERT [dbo].[POHeaders] ([Id], [Status], [Vendor_LocationId], [Vendor_ContactId], [PONumber], [PODate], [BillTo_LocationId], [ShipTo_LocationId], [BillTo_ContactId], [ShipTo_ContactId], [VendorId]) VALUES (3, N'CREATED', 14, 7, N'PO00006', CAST(N'2015-12-02' AS Date), 1, 2, 1, 1, 4)

INSERT [dbo].[POHeaders] ([Id], [Status], [Vendor_LocationId], [Vendor_ContactId], [PONumber], [PODate], [BillTo_LocationId], [ShipTo_LocationId], [BillTo_ContactId], [ShipTo_ContactId], [VendorId]) VALUES (4, N'CREATED', 10, 5, N'PO00001', CAST(N'2016-01-26' AS Date), 1, 2, 12, 2, 3)

INSERT [dbo].[POHeaders] ([Id], [Status], [Vendor_LocationId], [Vendor_ContactId], [PONumber], [PODate], [BillTo_LocationId], [ShipTo_LocationId], [BillTo_ContactId], [ShipTo_ContactId], [VendorId]) VALUES (1004, N'CREATED', 14, 7, N'PO00011', CAST(N'2016-01-31' AS Date), 1, 2, 2, 12, 4)

SET IDENTITY_INSERT [dbo].[POHeaders] OFF

SET IDENTITY_INSERT [dbo].[PODetails] ON 


INSERT [dbo].[PODetails] ([Id], [ItemNumber], [Quantity], [Cost], [POHeader_Id], [Item_Master_Id], [Manufacturer], [Datecode], [Description], [Qty_Received], [Qty_Returned]) VALUES (1, N'12015909', 100, CAST(0.110000 AS Decimal(18, 6)), 1, 232, N'POWER & SIGNAL   ', NULL, N'3/8Ring P&S 12015909               ', 75, 0)

INSERT [dbo].[PODetails] ([Id], [ItemNumber], [Quantity], [Cost], [POHeader_Id], [Item_Master_Id], [Manufacturer], [Datecode], [Description], [Qty_Received], [Qty_Returned]) VALUES (2, N'1202 0334', 150, CAST(0.040000 AS Decimal(18, 6)), 1, 136, N'Any Manufacturer', NULL, N'Term 18-20ga P&S 1202 0334         ', 25, 10)

INSERT [dbo].[PODetails] ([Id], [ItemNumber], [Quantity], [Cost], [POHeader_Id], [Item_Master_Id], [Manufacturer], [Datecode], [Description], [Qty_Received], [Qty_Returned]) VALUES (1002, N'DT06-12SA-C015', 75, CAST(1.800000 AS Decimal(18, 6)), 2, 37, N'Any Manufacturer', NULL, N'Conn 12way Blk  DEU DT06-12SB-C015 ', 0, 0)

INSERT [dbo].[PODetails] ([Id], [ItemNumber], [Quantity], [Cost], [POHeader_Id], [Item_Master_Id], [Manufacturer], [Datecode], [Description], [Qty_Received], [Qty_Returned]) VALUES (1003, N'DT04-12PA-BE02', 60, CAST(5.300000 AS Decimal(18, 6)), 2, 300, N'LADD IND.        ', NULL, N'Conn 12way  Deutsch DT04-12PA-BE02 ', 0, 0)

INSERT [dbo].[PODetails] ([Id], [ItemNumber], [Quantity], [Cost], [POHeader_Id], [Item_Master_Id], [Manufacturer], [Datecode], [Description], [Qty_Received], [Qty_Returned]) VALUES (1004, N'DT04-12PA-BE02', 18, CAST(5.200000 AS Decimal(18, 6)), 2, 300, N'LADD IND.        ', NULL, N'Conn 12way  Deutsch DT04-12PA-BE02 ', 0, 0)

INSERT [dbo].[PODetails] ([Id], [ItemNumber], [Quantity], [Cost], [POHeader_Id], [Item_Master_Id], [Manufacturer], [Datecode], [Description], [Qty_Received], [Qty_Returned]) VALUES (1005, N'DT06-12SD', 33, CAST(2.400000 AS Decimal(18, 6)), 2, 301, N'LADD IND.        ', NULL, N'Conn 12way Deutsch DT06-12SD       ', 0, 0)

INSERT [dbo].[PODetails] ([Id], [ItemNumber], [Quantity], [Cost], [POHeader_Id], [Item_Master_Id], [Manufacturer], [Datecode], [Description], [Qty_Received], [Qty_Returned]) VALUES (1006, N'IL-AG5-14S-D3C1-A', 150, CAST(0.260000 AS Decimal(18, 6)), 2, 9, N'Any Manufacturer', NULL, N'Conn 14way JAE IL-AG5-14S-D3C1-A   ', 0, 0)

INSERT [dbo].[PODetails] ([Id], [ItemNumber], [Quantity], [Cost], [POHeader_Id], [Item_Master_Id], [Manufacturer], [Datecode], [Description], [Qty_Received], [Qty_Returned]) VALUES (1007, N'32006-D22', 75, CAST(0.940000 AS Decimal(18, 6)), 3, 15, N'Any Manufacturer', NULL, N'Conn 8way Bussman 32006-D22        ', 0, 0)

INSERT [dbo].[PODetails] ([Id], [ItemNumber], [Quantity], [Cost], [POHeader_Id], [Item_Master_Id], [Manufacturer], [Datecode], [Description], [Qty_Received], [Qty_Returned]) VALUES (1008, N'59187', 50, CAST(1.070000 AS Decimal(18, 6)), 3, 30, N'Any Manufacturer', NULL, N'Switch Module  Fargo 59187         ', 0, 0)

INSERT [dbo].[PODetails] ([Id], [ItemNumber], [Quantity], [Cost], [POHeader_Id], [Item_Master_Id], [Manufacturer], [Datecode], [Description], [Qty_Received], [Qty_Returned]) VALUES (1016, N'1202 0334', 25, CAST(0.050000 AS Decimal(18, 6)), 1, 136, N'Any Manufacturer', NULL, N'Term 18-20ga P&S 1202 0334         ', 25, 0)

INSERT [dbo].[PODetails] ([Id], [ItemNumber], [Quantity], [Cost], [POHeader_Id], [Item_Master_Id], [Manufacturer], [Datecode], [Description], [Qty_Received], [Qty_Returned]) VALUES (1017, N'12004439', 55, CAST(0.250000 AS Decimal(18, 6)), 4, 118, N'Any Manufacturer', NULL, N'Term Punch Pack P&S 12004439       ', 0, 0)

INSERT [dbo].[PODetails] ([Id], [ItemNumber], [Quantity], [Cost], [POHeader_Id], [Item_Master_Id], [Manufacturer], [Datecode], [Description], [Qty_Received], [Qty_Returned]) VALUES (2017, N'12015909', 100, CAST(0.110000 AS Decimal(18, 6)), 1004, 232, N'Any Manufacturer', NULL, N'3/8Ring P&S 12015909               ', 0, 0)

INSERT [dbo].[PODetails] ([Id], [ItemNumber], [Quantity], [Cost], [POHeader_Id], [Item_Master_Id], [Manufacturer], [Datecode], [Description], [Qty_Received], [Qty_Returned]) VALUES (2018, N'01520006Z', 50, CAST(4.000000 AS Decimal(18, 6)), 1004, 13, N'Any Manufacturer', NULL, N'Conn LittelFuse 01520006Z          ', 0, 0)

SET IDENTITY_INSERT [dbo].[PODetails] OFF

SET IDENTITY_INSERT [dbo].[Item_Quantity] ON 


INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (1, 2000, 0, 1, N'', N'', 0, CAST(0.160000 AS Decimal(19, 6)), 1, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (2, 550, 0, 1, N'', N'', 0, CAST(0.910000 AS Decimal(19, 6)), 2, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (3, 300, 0, 1, N'', N'', 0, CAST(0.910000 AS Decimal(19, 6)), 2, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (4, 100, 0, 1, N'', N'', 0, CAST(0.910000 AS Decimal(19, 6)), 2, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (5, 105, 0, 1, N'', N'', 0, CAST(1.320000 AS Decimal(19, 6)), 3, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (6, 1500, 0, 1, N'', N'', 0, CAST(0.260000 AS Decimal(19, 6)), 4, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (7, 300, 0, 1, N'', N'', 0, CAST(0.210000 AS Decimal(19, 6)), 5, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (8, 1888, 0, 1, N'', N'', 0, CAST(0.410000 AS Decimal(19, 6)), 6, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (9, 32, 0, 1, N'', N'', 0, CAST(0.420000 AS Decimal(19, 6)), 7, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (10, 12936, 0, 1, N'', N'', 0, CAST(0.020000 AS Decimal(19, 6)), 8, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (11, 300, 0, 1, N'', N'', 0, CAST(0.270000 AS Decimal(19, 6)), 9, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (12, 600, 0, 1, N'', N'', 0, CAST(0.270000 AS Decimal(19, 6)), 9, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (13, 600, 0, 1, N'', N'', 0, CAST(0.270000 AS Decimal(19, 6)), 9, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (14, 598, 0, 1, N'', N'', 0, CAST(0.270000 AS Decimal(19, 6)), 9, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (15, 50, 0, 1, N'', N'', 0, CAST(8.680000 AS Decimal(19, 6)), 10, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (16, 442, 0, 1, N'', N'', 0, CAST(4.540000 AS Decimal(19, 6)), 11, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (17, 148, 0, 1, N'', N'', 0, CAST(1.090000 AS Decimal(19, 6)), 12, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (18, 300, 0, 1, N'', N'', 0, CAST(4.000000 AS Decimal(19, 6)), 13, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (19, 30, 0, 1, N'', N'', 0, CAST(0.350000 AS Decimal(19, 6)), 14, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (20, 156, 0, 1, N'', N'', 0, CAST(0.940000 AS Decimal(19, 6)), 15, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (21, 39, 0, 1, N'', N'', 0, CAST(0.940000 AS Decimal(19, 6)), 15, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (22, 499, 0, 1, N'', N'', 0, CAST(1.050000 AS Decimal(19, 6)), 16, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (23, 290, 0, 1, N'', N'', 0, CAST(1.050000 AS Decimal(19, 6)), 17, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (24, 481, 0, 1, N'', N'', 0, CAST(1.050000 AS Decimal(19, 6)), 17, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (25, 548, 0, 1, N'', N'', 0, CAST(0.420000 AS Decimal(19, 6)), 18, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (26, 42, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 19, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (27, 800, 0, 1, N'', N'', 0, CAST(0.230000 AS Decimal(19, 6)), 20, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (28, 61, 0, 1, N'', N'', 0, CAST(0.150000 AS Decimal(19, 6)), 21, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (29, 338, 0, 1, N'', N'', 0, CAST(0.000000 AS Decimal(19, 6)), 22, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (30, 2000, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 23, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (31, 2000, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 23, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (32, 4000, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 23, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (33, 1262, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 23, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (34, 500, 0, 1, N'', N'', 0, CAST(0.430000 AS Decimal(19, 6)), 24, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (35, 123, 0, 1, N'', N'', 0, CAST(0.790000 AS Decimal(19, 6)), 25, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (36, 250, 0, 1, N'', N'', 0, CAST(0.790000 AS Decimal(19, 6)), 25, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (37, 15, 0, 1, N'', N'', 0, CAST(4.380000 AS Decimal(19, 6)), 26, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (38, 100, 0, 1, N'', N'', 0, CAST(0.550000 AS Decimal(19, 6)), 27, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (39, 20, 0, 1, N'', N'', 0, CAST(10.300000 AS Decimal(19, 6)), 28, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (40, 7, 0, 1, N'', N'', 0, CAST(2.090000 AS Decimal(19, 6)), 29, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (41, 4, 0, 1, N'', N'', 0, CAST(1.070000 AS Decimal(19, 6)), 30, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (42, 892, 0, 1, N'', N'', 0, CAST(0.140000 AS Decimal(19, 6)), 31, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (43, 200, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 32, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (44, 1984, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 32, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (45, 213, 0, 1, N'', N'', 0, CAST(0.160000 AS Decimal(19, 6)), 33, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (46, 985, 0, 1, N'', N'', 0, CAST(0.170000 AS Decimal(19, 6)), 34, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (47, 279, 0, 1, N'', N'', 0, CAST(0.320000 AS Decimal(19, 6)), 35, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (48, 400, 0, 1, N'', N'', 0, CAST(0.940000 AS Decimal(19, 6)), 36, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (49, 37, 0, 1, N'', N'', 0, CAST(0.940000 AS Decimal(19, 6)), 36, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (50, 40, 0, 1, N'', N'', 0, CAST(1.780000 AS Decimal(19, 6)), 37, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (51, 3, 0, 1, N'', N'', 0, CAST(2.250000 AS Decimal(19, 6)), 37, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (52, 300, 0, 1, N'', N'', 0, CAST(2.250000 AS Decimal(19, 6)), 37, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (53, 19, 0, 1, N'', N'', 0, CAST(2.250000 AS Decimal(19, 6)), 37, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (54, 41, 0, 1, N'', N'', 0, CAST(0.270000 AS Decimal(19, 6)), 38, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (55, 2, 0, 1, N'', N'', 0, CAST(8.660000 AS Decimal(19, 6)), 39, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (56, 29, 0, 1, N'', N'', 0, CAST(9.430000 AS Decimal(19, 6)), 40, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (57, 413, 0, 1, N'', N'', 0, CAST(0.640000 AS Decimal(19, 6)), 41, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (58, 156, 0, 1, N'', N'', 0, CAST(0.280000 AS Decimal(19, 6)), 42, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (59, 300, 0, 1, N'', N'', 0, CAST(0.280000 AS Decimal(19, 6)), 42, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (60, 300, 0, 1, N'', N'', 0, CAST(0.280000 AS Decimal(19, 6)), 42, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (61, 300, 0, 1, N'', N'', 0, CAST(0.280000 AS Decimal(19, 6)), 42, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (62, 300, 0, 1, N'', N'', 0, CAST(0.280000 AS Decimal(19, 6)), 42, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (63, 300, 0, 1, N'', N'', 0, CAST(0.280000 AS Decimal(19, 6)), 42, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (64, 300, 0, 1, N'', N'', 0, CAST(0.280000 AS Decimal(19, 6)), 42, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (65, 300, 0, 1, N'', N'', 0, CAST(0.280000 AS Decimal(19, 6)), 42, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (66, 204, 0, 1, N'', N'', 0, CAST(0.280000 AS Decimal(19, 6)), 42, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (67, 300, 0, 1, N'', N'', 0, CAST(0.280000 AS Decimal(19, 6)), 42, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (68, 276, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 43, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (69, 300, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 43, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (70, 300, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 43, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (71, 300, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 43, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (72, 300, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 43, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (73, 300, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 43, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (74, 300, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 43, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (75, 300, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 43, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (76, 300, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 43, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (77, 300, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 43, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (78, 300, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 43, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (79, 300, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 43, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (80, 48, 0, 1, N'', N'', 0, CAST(0.790000 AS Decimal(19, 6)), 44, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (81, 84, 0, 1, N'', N'', 0, CAST(0.790000 AS Decimal(19, 6)), 44, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (82, 84, 0, 1, N'', N'', 0, CAST(0.790000 AS Decimal(19, 6)), 44, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (83, 159, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (84, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (85, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (86, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (87, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (88, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (89, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (90, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (91, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (92, 60, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (93, 66, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (94, 97, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (95, 98, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (96, 66, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (97, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (98, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (99, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (100, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (101, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (102, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (103, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (104, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (105, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (106, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (107, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (108, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (109, 125, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (110, 92, 0, 1, N'', N'', 0, CAST(10.030000 AS Decimal(19, 6)), 45, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (111, 240, 0, 1, N'', N'', 0, CAST(0.820000 AS Decimal(19, 6)), 46, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (112, 900, 0, 1, N'', N'', 0, CAST(0.820000 AS Decimal(19, 6)), 46, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (113, 1, 0, 1, N'', N'', 0, CAST(0.820000 AS Decimal(19, 6)), 46, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (114, 900, 0, 1, N'', N'', 0, CAST(0.820000 AS Decimal(19, 6)), 46, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (115, 401, 0, 1, N'', N'', 0, CAST(0.820000 AS Decimal(19, 6)), 46, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (116, 597, 0, 1, N'', N'', 0, CAST(0.400000 AS Decimal(19, 6)), 47, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (117, 530, 0, 1, N'', N'', 0, CAST(0.270000 AS Decimal(19, 6)), 48, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (118, 1000, 0, 1, N'', N'', 0, CAST(0.490000 AS Decimal(19, 6)), 49, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (119, 24, 0, 1, N'', N'', 0, CAST(4.170000 AS Decimal(19, 6)), 50, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (120, 10, 0, 1, N'', N'', 0, CAST(4.170000 AS Decimal(19, 6)), 50, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (121, 15, 0, 1, N'', N'', 0, CAST(14.370000 AS Decimal(19, 6)), 51, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (122, 200, 0, 1, N'', N'', 0, CAST(5.540000 AS Decimal(19, 6)), 52, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (123, 337, 0, 1, N'', N'', 0, CAST(0.550000 AS Decimal(19, 6)), 53, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (124, 350, 0, 1, N'', N'', 0, CAST(0.550000 AS Decimal(19, 6)), 53, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (125, 350, 0, 1, N'', N'', 0, CAST(0.550000 AS Decimal(19, 6)), 53, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (126, 1500, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 54, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (127, 246, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 54, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (128, 100, 0, 1, N'', N'', 0, CAST(0.600000 AS Decimal(19, 6)), 55, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (129, 50, 0, 1, N'', N'', 0, CAST(0.240000 AS Decimal(19, 6)), 56, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (130, 5000, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 57, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (131, 5000, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 57, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (132, 800, 0, 1, N'', N'', 0, CAST(0.230000 AS Decimal(19, 6)), 58, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (133, 30, 0, 1, N'', N'', 0, CAST(21.870000 AS Decimal(19, 6)), 59, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (134, 20, 0, 1, N'', N'', 0, CAST(21.870000 AS Decimal(19, 6)), 59, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (135, 324, 0, 1, N'', N'', 0, CAST(4.360000 AS Decimal(19, 6)), 60, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (136, 70, 0, 1, N'', N'', 0, CAST(1.180000 AS Decimal(19, 6)), 61, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (137, 395, 0, 1, N'', N'', 0, CAST(1.220000 AS Decimal(19, 6)), 62, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (138, 11, 0, 1, N'', N'', 0, CAST(2.820000 AS Decimal(19, 6)), 63, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (139, 3, 0, 1, N'', N'', 0, CAST(2.790000 AS Decimal(19, 6)), 64, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (140, 4, 0, 1, N'', N'', 0, CAST(2.790000 AS Decimal(19, 6)), 64, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (141, 79, 0, 1, N'', N'', 0, CAST(0.240000 AS Decimal(19, 6)), 65, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (142, 600, 0, 1, N'', N'', 0, CAST(1.450000 AS Decimal(19, 6)), 66, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (143, 600, 0, 1, N'', N'', 0, CAST(1.450000 AS Decimal(19, 6)), 66, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (144, 600, 0, 1, N'', N'', 0, CAST(1.450000 AS Decimal(19, 6)), 66, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (145, 947, 0, 1, N'', N'', 0, CAST(0.000000 AS Decimal(19, 6)), 67, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (146, 25, 0, 1, N'', N'', 0, CAST(0.000000 AS Decimal(19, 6)), 67, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (147, 2000, 0, 1, N'', N'', 0, CAST(0.000000 AS Decimal(19, 6)), 67, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (148, 125, 0, 1, N'', N'', 0, CAST(16.760000 AS Decimal(19, 6)), 68, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (149, 794, 0, 1, N'', N'', 0, CAST(0.240000 AS Decimal(19, 6)), 69, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (150, 31, 0, 1, N'', N'', 0, CAST(21.540000 AS Decimal(19, 6)), 70, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (151, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (152, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (153, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (154, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (155, 27, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (156, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (157, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (158, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (159, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (160, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (161, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (162, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (163, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (164, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (165, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (166, 185, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (167, 50, 0, 1, N'', N'', 0, CAST(0.650000 AS Decimal(19, 6)), 71, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (168, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (169, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (170, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (171, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (172, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (173, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (174, 29, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (175, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (176, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (177, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (178, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (179, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (180, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (181, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (182, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (183, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (184, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (185, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (186, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (187, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (188, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (189, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (190, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (191, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (192, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (193, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (194, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (195, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (196, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (197, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (198, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (199, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (200, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (201, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (202, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (203, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (204, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (205, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (206, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (207, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (208, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (209, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (210, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (211, 35, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (212, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (213, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (214, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (215, 60, 0, 1, N'', N'', 0, CAST(2.410000 AS Decimal(19, 6)), 72, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (216, 185, 0, 1, N'', N'', 0, CAST(1.810000 AS Decimal(19, 6)), 73, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (217, 185, 0, 1, N'', N'', 0, CAST(1.810000 AS Decimal(19, 6)), 73, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (218, 153, 0, 1, N'', N'', 0, CAST(1.810000 AS Decimal(19, 6)), 73, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (219, 185, 0, 1, N'', N'', 0, CAST(1.810000 AS Decimal(19, 6)), 74, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (220, 185, 0, 1, N'', N'', 0, CAST(1.810000 AS Decimal(19, 6)), 74, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (221, 149, 0, 1, N'', N'', 0, CAST(1.810000 AS Decimal(19, 6)), 74, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (222, 185, 0, 1, N'', N'', 0, CAST(1.810000 AS Decimal(19, 6)), 74, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (223, 185, 0, 1, N'', N'', 0, CAST(1.810000 AS Decimal(19, 6)), 74, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (224, 1193, 0, 1, N'', N'', 0, CAST(0.150000 AS Decimal(19, 6)), 75, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (225, 81, 0, 1, N'', N'', 0, CAST(0.150000 AS Decimal(19, 6)), 75, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (226, 10, 0, 1, N'', N'', 0, CAST(0.360000 AS Decimal(19, 6)), 76, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (227, 10, 0, 1, N'', N'', 0, CAST(0.360000 AS Decimal(19, 6)), 77, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (228, 35, 0, 1, N'', N'', 0, CAST(0.300000 AS Decimal(19, 6)), 78, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (229, 600, 0, 1, N'', N'', 0, CAST(0.300000 AS Decimal(19, 6)), 79, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (230, 669, 0, 1, N'', N'', 0, CAST(0.300000 AS Decimal(19, 6)), 79, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (231, 800, 0, 1, N'', N'', 0, CAST(0.410000 AS Decimal(19, 6)), 80, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (232, 700, 0, 1, N'', N'', 0, CAST(0.940000 AS Decimal(19, 6)), 81, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (233, 700, 0, 1, N'', N'', 0, CAST(0.940000 AS Decimal(19, 6)), 81, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (234, 800, 0, 1, N'', N'', 0, CAST(0.940000 AS Decimal(19, 6)), 81, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (235, 800, 0, 1, N'', N'', 0, CAST(0.940000 AS Decimal(19, 6)), 81, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (236, 49, 0, 1, N'', N'', 0, CAST(0.940000 AS Decimal(19, 6)), 81, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (237, 4000, 0, 1, N'', N'', 0, CAST(0.070000 AS Decimal(19, 6)), 82, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (238, 1820, 0, 1, N'', N'', 0, CAST(0.070000 AS Decimal(19, 6)), 82, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (239, 200, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (240, 200, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (241, 160, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (242, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (243, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (244, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (245, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (246, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (247, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (248, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (249, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (250, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (251, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (252, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (253, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (254, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (255, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (256, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (257, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (258, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (259, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (260, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (261, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (262, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (263, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (264, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (265, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (266, 140, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (267, 5, 0, 1, N'', N'', 0, CAST(2.840000 AS Decimal(19, 6)), 83, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (268, 482, 0, 1, N'', N'', 0, CAST(0.170000 AS Decimal(19, 6)), 84, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (269, 150, 0, 1, N'', N'', 0, CAST(2.000000 AS Decimal(19, 6)), 85, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (270, 150, 0, 1, N'', N'', 0, CAST(2.000000 AS Decimal(19, 6)), 85, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (271, 150, 0, 1, N'', N'', 0, CAST(2.000000 AS Decimal(19, 6)), 85, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (272, 150, 0, 1, N'', N'', 0, CAST(2.000000 AS Decimal(19, 6)), 85, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (273, 166, 0, 1, N'', N'', 0, CAST(2.000000 AS Decimal(19, 6)), 85, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (274, 7, 0, 1, N'', N'', 0, CAST(16.610000 AS Decimal(19, 6)), 86, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (275, 130, 0, 1, N'', N'', 0, CAST(16.610000 AS Decimal(19, 6)), 86, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (276, 4000, 0, 1, N'', N'', 0, CAST(0.190000 AS Decimal(19, 6)), 87, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (277, 1982, 0, 1, N'', N'', 0, CAST(0.300000 AS Decimal(19, 6)), 88, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (278, 1500, 0, 1, N'', N'', 0, CAST(1.140000 AS Decimal(19, 6)), 89, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (279, 9, 0, 1, N'', N'', 0, CAST(3.000000 AS Decimal(19, 6)), 90, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (280, 22, 0, 1, N'', N'', 0, CAST(8.970000 AS Decimal(19, 6)), 91, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (281, 19, 0, 1, N'', N'', 0, CAST(4.930000 AS Decimal(19, 6)), 92, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (282, 494, 0, 1, N'', N'', 0, CAST(0.710000 AS Decimal(19, 6)), 93, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (283, 350, 0, 1, N'', N'', 0, CAST(0.910000 AS Decimal(19, 6)), 94, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (284, 42, 0, 1, N'', N'', 0, CAST(3.620000 AS Decimal(19, 6)), 95, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (285, 17, 0, 1, N'', N'', 0, CAST(9.600000 AS Decimal(19, 6)), 96, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (286, 45, 0, 1, N'', N'', 0, CAST(1.950000 AS Decimal(19, 6)), 97, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (287, 99, 0, 1, N'', N'', 0, CAST(3.490000 AS Decimal(19, 6)), 98, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (288, 1000, 0, 1, N'', N'', 0, CAST(0.320000 AS Decimal(19, 6)), 99, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (289, 8, 0, 1, N'', N'', 0, CAST(0.320000 AS Decimal(19, 6)), 99, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (290, 86, 0, 1, N'', N'', 0, CAST(3.000000 AS Decimal(19, 6)), 100, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (291, 314, 0, 1, N'', N'', 0, CAST(1.240000 AS Decimal(19, 6)), 101, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (292, 1, 0, 1, N'', N'', 0, CAST(9.650000 AS Decimal(19, 6)), 102, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (293, 180, 0, 1, N'', N'', 0, CAST(0.890000 AS Decimal(19, 6)), 53, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (294, 5000, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 103, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (295, 6000, 0, 1, N'', N'', 0, CAST(0.070000 AS Decimal(19, 6)), 104, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (296, 2108, 0, 1, N'', N'', 0, CAST(0.020000 AS Decimal(19, 6)), 105, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (297, 4500, 0, 1, N'', N'', 0, CAST(0.020000 AS Decimal(19, 6)), 105, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (298, 4000, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 106, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (299, 3000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 107, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (300, 4500, 0, 1, N'', N'', 0, CAST(0.110000 AS Decimal(19, 6)), 108, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (301, 100, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 109, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (302, 2300, 0, 1, N'', N'', 0, CAST(0.100000 AS Decimal(19, 6)), 110, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (303, 1278, 0, 1, N'', N'', 0, CAST(0.070000 AS Decimal(19, 6)), 111, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (304, 1000, 0, 1, N'', N'', 0, CAST(0.080000 AS Decimal(19, 6)), 112, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (305, 4000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 113, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (306, 4000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 113, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (307, 4000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 113, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (308, 4000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 113, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (309, 4000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 113, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (310, 4000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 113, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (311, 4000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 113, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (312, 4000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 113, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (313, 4000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 113, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (314, 4000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 113, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (315, 4000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 113, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (316, 4000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 113, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (317, 4000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 113, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (318, 7940, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 114, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (319, 4450, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 114, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (320, 795, 0, 1, N'', N'', 0, CAST(0.260000 AS Decimal(19, 6)), 115, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (321, 2000, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 116, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (322, 800, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 116, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (323, 1880, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 116, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (324, 200, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 116, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (325, 2960, 0, 1, N'', N'', 0, CAST(0.020000 AS Decimal(19, 6)), 117, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (326, 1300, 0, 1, N'', N'', 0, CAST(0.270000 AS Decimal(19, 6)), 118, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (327, 1500, 0, 1, N'', N'', 0, CAST(0.270000 AS Decimal(19, 6)), 118, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (328, 1300, 0, 1, N'', N'', 0, CAST(0.270000 AS Decimal(19, 6)), 118, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (329, 1500, 0, 1, N'', N'', 0, CAST(0.270000 AS Decimal(19, 6)), 118, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (330, 2100, 0, 1, N'', N'', 0, CAST(0.000000 AS Decimal(19, 6)), 119, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (331, 1975, 0, 1, N'', N'', 0, CAST(0.000000 AS Decimal(19, 6)), 119, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (332, 1000, 0, 1, N'', N'', 0, CAST(0.110000 AS Decimal(19, 6)), 120, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (333, 2500, 0, 1, N'', N'', 0, CAST(0.110000 AS Decimal(19, 6)), 121, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (334, 1750, 0, 1, N'', N'', 0, CAST(0.110000 AS Decimal(19, 6)), 121, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (335, 3000, 0, 1, N'', N'', 0, CAST(0.160000 AS Decimal(19, 6)), 122, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (336, 2050, 0, 1, N'', N'', 0, CAST(0.160000 AS Decimal(19, 6)), 122, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (337, 1655, 0, 1, N'', N'', 0, CAST(0.160000 AS Decimal(19, 6)), 122, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (338, 200, 0, 1, N'', N'', 0, CAST(0.150000 AS Decimal(19, 6)), 123, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (339, 1400, 0, 1, N'', N'', 0, CAST(0.150000 AS Decimal(19, 6)), 123, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (340, 1389, 0, 1, N'', N'', 0, CAST(0.150000 AS Decimal(19, 6)), 123, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (341, 1000, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 124, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (342, 2000, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 124, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (343, 2000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 125, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (344, 2000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 125, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (345, 1724, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 125, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (346, 7000, 0, 1, N'', N'', 0, CAST(0.170000 AS Decimal(19, 6)), 126, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (347, 7000, 0, 1, N'', N'', 0, CAST(0.170000 AS Decimal(19, 6)), 126, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (348, 7000, 0, 1, N'', N'', 0, CAST(0.170000 AS Decimal(19, 6)), 126, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (349, 6520, 0, 1, N'', N'', 0, CAST(0.170000 AS Decimal(19, 6)), 126, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (350, 3000, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 127, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (351, 90, 0, 1, N'', N'', 0, CAST(0.470000 AS Decimal(19, 6)), 128, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (352, 1000, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 129, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (353, 1200, 0, 1, N'', N'', 0, CAST(0.240000 AS Decimal(19, 6)), 130, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (354, 2970, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 131, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (355, 2940, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 132, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (356, 1220, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 133, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (357, 2000, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 134, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (358, 2670, 0, 1, N'', N'', 0, CAST(0.020000 AS Decimal(19, 6)), 135, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (359, 3500, 0, 1, N'', N'', 0, CAST(0.020000 AS Decimal(19, 6)), 135, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (360, 2500, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 136, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (361, 50, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 136, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (362, 500, 0, 1, N'', N'', 0, CAST(0.170000 AS Decimal(19, 6)), 137, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (363, 3818, 0, 1, N'', N'', 0, CAST(0.170000 AS Decimal(19, 6)), 137, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (364, 35, 0, 1, N'', N'', 0, CAST(2.000000 AS Decimal(19, 6)), 138, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (365, 640, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 139, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (366, 1500, 0, 1, N'', N'', 0, CAST(0.070000 AS Decimal(19, 6)), 140, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (367, 7000, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 141, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (368, 4000, 0, 1, N'', N'', 0, CAST(0.010000 AS Decimal(19, 6)), 142, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (369, 1500, 0, 1, N'', N'', 0, CAST(0.170000 AS Decimal(19, 6)), 143, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (370, 3570, 0, 1, N'', N'', 0, CAST(0.170000 AS Decimal(19, 6)), 143, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (371, 3485, 0, 1, N'', N'', 0, CAST(0.170000 AS Decimal(19, 6)), 143, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (372, 267, 0, 1, N'', N'', 0, CAST(0.070000 AS Decimal(19, 6)), 144, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (373, 204, 0, 1, N'', N'', 0, CAST(0.070000 AS Decimal(19, 6)), 144, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (374, 3000, 0, 1, N'', N'', 0, CAST(0.110000 AS Decimal(19, 6)), 145, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (375, 4000, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 146, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (376, 4000, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 146, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (377, 2000, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 146, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (378, 800, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 147, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (379, 2000, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 147, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (380, 2000, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 147, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (381, 1900, 0, 1, N'', N'', 0, CAST(0.160000 AS Decimal(19, 6)), 1, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (382, 1995, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 148, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (383, 991, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 148, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (384, 10000, 0, 1, N'', N'', 0, CAST(0.050000 AS Decimal(19, 6)), 149, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (385, 120, 0, 1, N'', N'', 0, CAST(0.100000 AS Decimal(19, 6)), 150, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (386, 3000, 0, 1, N'', N'', 0, CAST(0.110000 AS Decimal(19, 6)), 151, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (387, 3000, 0, 1, N'', N'', 0, CAST(0.110000 AS Decimal(19, 6)), 151, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (388, 3000, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 152, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (389, 3000, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 152, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (390, 2900, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 152, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (391, 2000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 153, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (392, 2000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 153, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (393, 2000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 153, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (394, 2000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 153, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (395, 1947, 0, 1, N'', N'', 0, CAST(0.070000 AS Decimal(19, 6)), 154, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (396, 890, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 155, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (397, 4999, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 155, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (398, 1160, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 156, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (399, 5000, 0, 1, N'', N'', 0, CAST(0.020000 AS Decimal(19, 6)), 157, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (400, 5000, 0, 1, N'', N'', 0, CAST(0.020000 AS Decimal(19, 6)), 157, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (401, 5000, 0, 1, N'', N'', 0, CAST(0.020000 AS Decimal(19, 6)), 157, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (402, 4574, 0, 1, N'', N'', 0, CAST(0.020000 AS Decimal(19, 6)), 157, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (403, 4000, 0, 1, N'', N'', 0, CAST(0.020000 AS Decimal(19, 6)), 158, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (404, 67, 0, 1, N'', N'', 0, CAST(0.530000 AS Decimal(19, 6)), 159, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (405, 2700, 0, 1, N'', N'', 0, CAST(0.020000 AS Decimal(19, 6)), 160, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (406, 3000, 0, 1, N'', N'', 0, CAST(0.020000 AS Decimal(19, 6)), 160, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (407, 20000, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 161, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (408, 1612, 0, 1, N'', N'', 0, CAST(0.270000 AS Decimal(19, 6)), 162, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (409, 1650, 0, 1, N'', N'', 0, CAST(0.270000 AS Decimal(19, 6)), 162, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (410, 1350, 0, 1, N'', N'', 0, CAST(0.270000 AS Decimal(19, 6)), 162, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (411, 5000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 163, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (412, 250, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 164, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (413, 4065, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 164, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (414, 5000, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 164, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (415, 5000, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 164, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (416, 9172, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 165, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (417, 2000, 0, 1, N'', N'', 0, CAST(0.080000 AS Decimal(19, 6)), 166, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (418, 1736, 0, 1, N'', N'', 0, CAST(0.080000 AS Decimal(19, 6)), 166, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (419, 950, 0, 1, N'', N'', 0, CAST(0.530000 AS Decimal(19, 6)), 167, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (420, 1715, 0, 1, N'', N'', 0, CAST(0.100000 AS Decimal(19, 6)), 168, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (421, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (422, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (423, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (424, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (425, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (426, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (427, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (428, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (429, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (430, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (431, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (432, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (433, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (434, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (435, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (436, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (437, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (438, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (439, 800, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 169, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (440, 2000, 0, 1, N'', N'', 0, CAST(0.080000 AS Decimal(19, 6)), 170, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (441, 600, 0, 1, N'', N'', 0, CAST(0.080000 AS Decimal(19, 6)), 170, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (442, 1415, 0, 1, N'', N'', 0, CAST(0.080000 AS Decimal(19, 6)), 170, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (443, 500, 0, 1, N'', N'', 0, CAST(0.080000 AS Decimal(19, 6)), 171, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (444, 5945, 0, 1, N'', N'', 0, CAST(0.080000 AS Decimal(19, 6)), 171, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (445, 2313, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 172, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (446, 1076, 0, 1, N'', N'', 0, CAST(0.850000 AS Decimal(19, 6)), 173, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (447, 1000, 0, 1, N'', N'', 0, CAST(0.850000 AS Decimal(19, 6)), 173, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (448, 1000, 0, 1, N'', N'', 0, CAST(0.850000 AS Decimal(19, 6)), 173, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (449, 1000, 0, 1, N'', N'', 0, CAST(0.850000 AS Decimal(19, 6)), 173, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (450, 1000, 0, 1, N'', N'', 0, CAST(0.850000 AS Decimal(19, 6)), 173, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (451, 1300, 0, 1, N'', N'', 0, CAST(0.850000 AS Decimal(19, 6)), 173, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (452, 4000, 0, 1, N'', N'', 0, CAST(0.050000 AS Decimal(19, 6)), 174, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (453, 3820, 0, 1, N'', N'', 0, CAST(0.050000 AS Decimal(19, 6)), 174, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (454, 4000, 0, 1, N'', N'', 0, CAST(0.050000 AS Decimal(19, 6)), 175, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (455, 7600, 0, 1, N'', N'', 0, CAST(0.050000 AS Decimal(19, 6)), 176, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (456, 2300, 0, 1, N'', N'', 0, CAST(0.030000 AS Decimal(19, 6)), 177, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (457, 2095, 0, 1, N'', N'', 0, CAST(0.150000 AS Decimal(19, 6)), 178, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (458, 195, 0, 1, N'', N'', 0, CAST(1.100000 AS Decimal(19, 6)), 179, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (459, 1865, 0, 1, N'', N'', 0, CAST(0.050000 AS Decimal(19, 6)), 180, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (460, 6800, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (461, 5200, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (462, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (463, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (464, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (465, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (466, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (467, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (468, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (469, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (470, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (471, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (472, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (473, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (474, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (475, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (476, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (477, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (478, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (479, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (480, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (481, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (482, 2400, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 181, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (483, 364, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 182, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (484, 356, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 182, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (485, 347, 0, 1, N'', N'', 0, CAST(0.060000 AS Decimal(19, 6)), 182, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (486, 272, 0, 1, N'', N'', 0, CAST(0.140000 AS Decimal(19, 6)), 183, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (487, 278, 0, 1, N'', N'', 0, CAST(0.140000 AS Decimal(19, 6)), 183, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (488, 282, 0, 1, N'', N'', 0, CAST(0.140000 AS Decimal(19, 6)), 183, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (489, 2766, 0, 1, N'', N'', 0, CAST(0.140000 AS Decimal(19, 6)), 183, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (490, 38, 0, 1, N'', N'', 0, CAST(4.000000 AS Decimal(19, 6)), 184, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (491, 3000, 0, 1, N'', N'', 0, CAST(0.260000 AS Decimal(19, 6)), 185, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (492, 470, 0, 1, N'', N'', 0, CAST(0.260000 AS Decimal(19, 6)), 186, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (493, 10000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 187, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (494, 15000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 188, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (495, 15000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 188, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (496, 199, 0, 1, N'', N'', 0, CAST(0.160000 AS Decimal(19, 6)), 189, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (497, 223, 0, 1, N'', N'', 0, CAST(0.160000 AS Decimal(19, 6)), 189, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (498, 206, 0, 1, N'', N'', 0, CAST(0.160000 AS Decimal(19, 6)), 189, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (499, 34, 0, 1, N'', N'', 0, CAST(0.160000 AS Decimal(19, 6)), 189, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (500, 249, 0, 1, N'', N'', 0, CAST(0.160000 AS Decimal(19, 6)), 189, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (501, 41, 0, 1, N'', N'', 0, CAST(0.160000 AS Decimal(19, 6)), 189, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (502, 671, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 190, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (503, 684, 0, 1, N'', N'', 0, CAST(0.120000 AS Decimal(19, 6)), 190, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (504, 355, 0, 1, N'', N'', 0, CAST(0.130000 AS Decimal(19, 6)), 191, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (505, 2000, 0, 1, N'', N'', 0, CAST(0.070000 AS Decimal(19, 6)), 192, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (506, 1304, 0, 1, N'', N'', 0, CAST(0.070000 AS Decimal(19, 6)), 192, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (507, 257, 0, 1, N'', N'', 0, CAST(0.150000 AS Decimal(19, 6)), 193, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (508, 235, 0, 1, N'', N'', 0, CAST(0.150000 AS Decimal(19, 6)), 193, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (509, 182, 0, 1, N'', N'', 0, CAST(0.150000 AS Decimal(19, 6)), 193, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (510, 200, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 194, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (511, 8, 0, 1, N'', N'', 0, CAST(40.740000 AS Decimal(19, 6)), 195, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (512, 3, 0, 1, N'', N'', 0, CAST(8.790000 AS Decimal(19, 6)), 196, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (513, 750, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 197, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (514, 750, 0, 1, N'', N'', 0, CAST(0.290000 AS Decimal(19, 6)), 197, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (515, 32, 0, 1, N'', N'', 0, CAST(1.550000 AS Decimal(19, 6)), 198, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (516, 244, 0, 1, N'', N'', 0, CAST(0.600000 AS Decimal(19, 6)), 199, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (517, 616, 0, 1, N'', N'', 0, CAST(0.870000 AS Decimal(19, 6)), 200, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (518, 1380, 0, 1, N'', N'', 0, CAST(0.400000 AS Decimal(19, 6)), 201, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (519, 500, 0, 1, N'', N'', 0, CAST(0.960000 AS Decimal(19, 6)), 202, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (520, 100, 0, 1, N'', N'', 0, CAST(8.530000 AS Decimal(19, 6)), 203, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (521, 992, 0, 1, N'', N'', 0, CAST(0.980000 AS Decimal(19, 6)), 204, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (522, 500, 0, 1, N'', N'', 0, CAST(0.600000 AS Decimal(19, 6)), 205, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (523, 10, 0, 1, N'', N'', 0, CAST(11.920000 AS Decimal(19, 6)), 206, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (524, 2, 0, 1, N'', N'', 0, CAST(11.920000 AS Decimal(19, 6)), 206, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (525, 954, 0, 1, N'', N'', 0, CAST(0.460000 AS Decimal(19, 6)), 207, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (526, 4, 0, 1, N'', N'', 0, CAST(2.040000 AS Decimal(19, 6)), 208, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (527, 249, 0, 1, N'', N'', 0, CAST(0.080000 AS Decimal(19, 6)), 209, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (528, 976, 0, 1, N'', N'', 0, CAST(0.050000 AS Decimal(19, 6)), 210, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (529, 975, 0, 1, N'', N'', 0, CAST(0.050000 AS Decimal(19, 6)), 210, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (530, 150, 0, 1, N'', N'', 0, CAST(2.490000 AS Decimal(19, 6)), 211, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (531, 2000, 0, 1, N'', N'', 0, CAST(0.160000 AS Decimal(19, 6)), 212, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (532, 100, 0, 1, N'', N'', 0, CAST(0.580000 AS Decimal(19, 6)), 213, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (533, 80, 0, 1, N'', N'', 0, CAST(3.460000 AS Decimal(19, 6)), 214, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (534, 80, 0, 1, N'', N'', 0, CAST(3.460000 AS Decimal(19, 6)), 214, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (535, 80, 0, 1, N'', N'', 0, CAST(3.460000 AS Decimal(19, 6)), 214, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (536, 80, 0, 1, N'', N'', 0, CAST(3.460000 AS Decimal(19, 6)), 214, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (537, 80, 0, 1, N'', N'', 0, CAST(3.460000 AS Decimal(19, 6)), 214, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (538, 80, 0, 1, N'', N'', 0, CAST(3.460000 AS Decimal(19, 6)), 214, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (539, 80, 0, 1, N'', N'', 0, CAST(3.460000 AS Decimal(19, 6)), 214, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (540, 80, 0, 1, N'', N'', 0, CAST(3.460000 AS Decimal(19, 6)), 214, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (541, 1500, 0, 1, N'', N'', 0, CAST(0.070000 AS Decimal(19, 6)), 215, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (542, 837, 0, 1, N'', N'', 0, CAST(0.180000 AS Decimal(19, 6)), 216, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (543, 8, 0, 1, N'', N'', 0, CAST(0.180000 AS Decimal(19, 6)), 216, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (544, 900, 0, 1, N'', N'', 0, CAST(0.180000 AS Decimal(19, 6)), 216, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (545, 1048, 0, 1, N'', N'', 0, CAST(0.130000 AS Decimal(19, 6)), 217, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (546, 700, 0, 1, N'', N'', 0, CAST(1.450000 AS Decimal(19, 6)), 218, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (547, 5, 0, 1, N'', N'', 0, CAST(0.250000 AS Decimal(19, 6)), 219, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (548, 200, 0, 1, N'', N'', 0, CAST(0.140000 AS Decimal(19, 6)), 220, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (549, 2915, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 221, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (550, 2000, 0, 1, N'', N'', 0, CAST(0.040000 AS Decimal(19, 6)), 222, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (551, 900, 0, 1, N'', N'', 0, CAST(0.000000 AS Decimal(19, 6)), 223, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (552, 900, 0, 1, N'', N'', 0, CAST(0.000000 AS Decimal(19, 6)), 223, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (553, 900, 0, 1, N'', N'', 0, CAST(0.000000 AS Decimal(19, 6)), 223, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (554, 618, 0, 1, N'', N'', 0, CAST(0.160000 AS Decimal(19, 6)), 224, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (555, 88, 0, 1, N'', N'', 0, CAST(0.200000 AS Decimal(19, 6)), 225, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (556, 977, 0, 1, N'', N'', 0, CAST(0.090000 AS Decimal(19, 6)), 225, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (557, 214, 0, 1, N'', N'', 0, CAST(10.670000 AS Decimal(19, 6)), 226, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (558, 345, 0, 1, N'', N'', 0, CAST(2.200000 AS Decimal(19, 6)), 227, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (559, 194, 0, 1, N'', N'', 0, CAST(2.200000 AS Decimal(19, 6)), 227, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (560, 835, 0, 1, N'', N'', 0, CAST(0.360000 AS Decimal(19, 6)), 228, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (561, 340, 0, 1, N'', N'', 0, CAST(1.050000 AS Decimal(19, 6)), 229, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (562, 20, 0, 1, N'', N'', 0, CAST(9.280000 AS Decimal(19, 6)), 230, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (563, 40, 0, 1, N'', N'', 0, CAST(9.280000 AS Decimal(19, 6)), 230, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (564, 40, 0, 1, N'', N'', 0, CAST(9.280000 AS Decimal(19, 6)), 230, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (565, 40, 0, 1, N'', N'', 0, CAST(9.280000 AS Decimal(19, 6)), 230, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (566, 40, 0, 1, N'', N'', 0, CAST(9.280000 AS Decimal(19, 6)), 230, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (567, 40, 0, 1, N'', N'', 0, CAST(9.280000 AS Decimal(19, 6)), 230, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (568, 40, 0, 1, N'', N'', 0, CAST(9.280000 AS Decimal(19, 6)), 230, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (569, 40, 0, 1, N'', N'', 0, CAST(9.280000 AS Decimal(19, 6)), 230, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (570, 40, 0, 1, N'', N'', 0, CAST(9.280000 AS Decimal(19, 6)), 230, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (571, 40, 0, 1, N'', N'', 0, CAST(9.280000 AS Decimal(19, 6)), 230, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (572, 20, 0, 1, N'', N'', 0, CAST(9.280000 AS Decimal(19, 6)), 230, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (573, 20, 0, 1, N'', N'', 0, CAST(9.280000 AS Decimal(19, 6)), 230, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (574, 14000, 0, 1, N'', N'', 0, CAST(0.000000 AS Decimal(19, 6)), 231, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (575, 14000, 0, 1, N'', N'', 0, CAST(0.000000 AS Decimal(19, 6)), 231, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (576, 14000, 0, 1, N'', N'', 0, CAST(0.000000 AS Decimal(19, 6)), 231, 1, 1, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (577, 10, 0, 2, N'', N'POWER & SIGNAL   ', 0, CAST(0.119900 AS Decimal(19, 6)), 232, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (578, 10043, 0, 2, N'', N'TTI              ', 0, CAST(0.056100 AS Decimal(19, 6)), 182, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (579, 8430, 0, 2, N'', N'POWER & SIGNAL   ', 0, CAST(0.098000 AS Decimal(19, 6)), 233, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (580, 5512, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.263700 AS Decimal(19, 6)), 4, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (581, 300, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.182700 AS Decimal(19, 6)), 234, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (582, 101, 0, 2, N'', N'POWER & SIGNAL   ', 0, CAST(0.000100 AS Decimal(19, 6)), 235, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (583, 59, 0, 2, N'', N'LADD IND.        ', 0, CAST(1.420000 AS Decimal(19, 6)), 236, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (584, 75, 0, 2, N'', N'TYCO AMP         ', 0, CAST(1.400000 AS Decimal(19, 6)), 237, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (585, 104, 0, 2, N'', N'LADD IND.        ', 0, CAST(0.550000 AS Decimal(19, 6)), 27, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (586, 187, 0, 2, N'', N'ROME             ', 0, CAST(0.630000 AS Decimal(19, 6)), 238, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (587, 29, 0, 2, N'', N'CARLTON-BATES    ', 0, CAST(4.750000 AS Decimal(19, 6)), 239, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (588, 2060, 0, 2, N'', N'POWER & SIGNAL   ', 0, CAST(0.062000 AS Decimal(19, 6)), 240, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (589, 2000, 0, 2, N'', N'TTI              ', 0, CAST(0.018000 AS Decimal(19, 6)), 241, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (590, 525, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.474400 AS Decimal(19, 6)), 242, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (591, 25284, 0, 2, N'', N'GRAYLINE         ', 0, CAST(0.009300 AS Decimal(19, 6)), 243, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (592, 1, 0, 2, N'', N'PEI              ', 0, CAST(8.150000 AS Decimal(19, 6)), 244, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (593, 2000, 0, 2, N'', N'GRAYLINE         ', 0, CAST(0.164100 AS Decimal(19, 6)), 245, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (594, 5000, 0, 2, N'', N'TYCO AMP         ', 0, CAST(0.057400 AS Decimal(19, 6)), 246, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (595, 4464, 0, 2, N'', N'POWER & SIGNAL   ', 0, CAST(0.096100 AS Decimal(19, 6)), 247, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (596, 2490, 0, 2, N'', N'HEILIND          ', 0, CAST(0.077900 AS Decimal(19, 6)), 248, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (597, 2830, 0, 2, N'', N'POWER & SIGNAL   ', 0, CAST(0.098000 AS Decimal(19, 6)), 233, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (598, 4620, 0, 2, N'', N'TYCO AMP         ', 0, CAST(0.138100 AS Decimal(19, 6)), 249, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (599, 7340, 0, 2, N'', N'SUMITOMO         ', 0, CAST(0.103000 AS Decimal(19, 6)), 250, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (600, 422, 0, 2, N'', N'LADD IND.        ', 0, CAST(0.900000 AS Decimal(19, 6)), 251, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (601, 7161, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.029500 AS Decimal(19, 6)), 252, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (602, 17, 0, 2, N'', N'PEI              ', 0, CAST(8.150000 AS Decimal(19, 6)), 244, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (603, 35000, 0, 2, N'', N'LXI              ', 0, CAST(0.009000 AS Decimal(19, 6)), 253, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (604, 1500, 0, 2, N'', N'SCHLEMMER US     ', 0, CAST(0.105600 AS Decimal(19, 6)), 254, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (605, 96, 0, 2, N'', N'VENDOR UNKOWN    ', 0, CAST(0.000000 AS Decimal(19, 6)), 255, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (606, 500, 0, 2, N'', N'LADD IND.        ', 0, CAST(0.910000 AS Decimal(19, 6)), 256, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (607, 2976, 0, 2, N'', N'GRAYLINE         ', 0, CAST(0.164100 AS Decimal(19, 6)), 245, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (608, 2450, 0, 2, N'', N'HEILIND          ', 0, CAST(0.239100 AS Decimal(19, 6)), 257, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (609, 597, 0, 2, N'', N'TYCO AMP         ', 0, CAST(0.138100 AS Decimal(19, 6)), 249, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (610, 3381, 0, 2, N'', N'TTI              ', 0, CAST(0.018000 AS Decimal(19, 6)), 241, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (611, 13000, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.020100 AS Decimal(19, 6)), 258, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (612, 627, 0, 2, N'', N'TYCO AMP         ', 0, CAST(1.161500 AS Decimal(19, 6)), 259, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (613, 9038, 0, 2, N'', N'TTI              ', 0, CAST(0.056100 AS Decimal(19, 6)), 182, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (614, 180, 0, 2, N'', N'GRIFFITH         ', 0, CAST(0.196800 AS Decimal(19, 6)), 260, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (615, 500, 0, 2, N'', N'SCHLEMMER US     ', 0, CAST(0.118100 AS Decimal(19, 6)), 261, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (616, 500, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.025800 AS Decimal(19, 6)), 262, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (617, 1, 0, 2, N'', N'LADD IND.        ', 0, CAST(1.080000 AS Decimal(19, 6)), 263, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (618, 29000, 0, 2, N'', N'TYCO AMP         ', 0, CAST(0.052700 AS Decimal(19, 6)), 264, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (619, 6000, 0, 2, N'', N'TYCO AMP         ', 0, CAST(0.086900 AS Decimal(19, 6)), 265, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (620, 140, 0, 2, N'', N'DIGI-KEY         ', 0, CAST(0.196100 AS Decimal(19, 6)), 266, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (621, 1000, 0, 2, N'', N'SCHLEMMER US     ', 0, CAST(0.063300 AS Decimal(19, 6)), 267, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (622, 24, 0, 2, N'', N'POWER & SIGNAL   ', 0, CAST(0.779100 AS Decimal(19, 6)), 268, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (623, 100, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(2.123100 AS Decimal(19, 6)), 269, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (624, 9, 0, 2, N'', N'TYCO AMP         ', 0, CAST(1.161500 AS Decimal(19, 6)), 259, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (625, 130, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(1.015400 AS Decimal(19, 6)), 270, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (626, 46, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(2.044000 AS Decimal(19, 6)), 271, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (627, 61, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.140500 AS Decimal(19, 6)), 220, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (628, 5000, 0, 2, N'', N'TYCO AMP         ', 0, CAST(0.074500 AS Decimal(19, 6)), 272, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (629, 500, 0, 2, N'', N'SCHLEMMER US     ', 0, CAST(0.118100 AS Decimal(19, 6)), 261, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (630, 100, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.144200 AS Decimal(19, 6)), 273, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (631, 2455, 0, 2, N'', N'FEDERAL MOGUL    ', 0, CAST(0.330000 AS Decimal(19, 6)), 274, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (632, 970, 0, 2, N'', N'FEDERAL MOGUL    ', 0, CAST(0.697400 AS Decimal(19, 6)), 275, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (633, 1180, 0, 2, N'', N'HEILIND          ', 0, CAST(0.160000 AS Decimal(19, 6)), 276, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (634, 12, 0, 2, N'', N'TTI              ', 0, CAST(12.270300 AS Decimal(19, 6)), 277, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (635, 6000, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.012000 AS Decimal(19, 6)), 278, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (636, 99, 0, 2, N'', N'HOLT CAT         ', 0, CAST(18.500000 AS Decimal(19, 6)), 279, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (637, 96, 0, 2, N'', N'SCHLEMMER US     ', 0, CAST(0.064300 AS Decimal(19, 6)), 280, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (638, 149, 0, 2, N'', N'FRAENKISCHE      ', 0, CAST(0.214700 AS Decimal(19, 6)), 281, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (639, 8, 0, 2, N'', N'LADD IND.        ', 0, CAST(1.080000 AS Decimal(19, 6)), 263, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (640, 724, 0, 2, N'', N'SCHLEMMER US     ', 0, CAST(0.063300 AS Decimal(19, 6)), 267, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (641, 54, 0, 2, N'', N'LADD IND.        ', 0, CAST(0.940000 AS Decimal(19, 6)), 282, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (642, 18, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(2.123100 AS Decimal(19, 6)), 269, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (643, 100, 0, 2, N'', N'HEILIND          ', 0, CAST(0.101000 AS Decimal(19, 6)), 283, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (644, 10, 0, 2, N'', N'CARLTON-BATES    ', 0, CAST(2.860000 AS Decimal(19, 6)), 284, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (645, 24, 0, 2, N'', N'PROSPECT         ', 0, CAST(0.187000 AS Decimal(19, 6)), 285, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (646, 98, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.042400 AS Decimal(19, 6)), 286, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (647, 5, 0, 2, N'', N'TYCO AMP         ', 0, CAST(7.060000 AS Decimal(19, 6)), 287, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (648, 4, 0, 2, N'', N'POWER & SIGNAL   ', 0, CAST(0.822800 AS Decimal(19, 6)), 288, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (649, 16, 0, 2, N'', N'TTI              ', 0, CAST(12.270300 AS Decimal(19, 6)), 277, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (650, 42, 0, 2, N'', N'TAPEWORKS        ', 0, CAST(0.158000 AS Decimal(19, 6)), 289, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (651, 2592, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.030700 AS Decimal(19, 6)), 290, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (652, 124, 0, 2, N'', N'CARLTON-BATES    ', 0, CAST(0.361200 AS Decimal(19, 6)), 291, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (653, 105, 0, 2, N'', N'SCHLEMMER US     ', 0, CAST(0.095800 AS Decimal(19, 6)), 292, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (654, 49, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.157400 AS Decimal(19, 6)), 293, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (655, 59, 0, 2, N'', N'SCHLEMMER US     ', 0, CAST(0.105600 AS Decimal(19, 6)), 254, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (656, 464, 0, 2, N'', N'SCHLEMMER US     ', 0, CAST(0.118100 AS Decimal(19, 6)), 261, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (657, 5, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.144200 AS Decimal(19, 6)), 273, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (658, 3000, 0, 2, N'', N'SCHLEMMER US     ', 0, CAST(0.119000 AS Decimal(19, 6)), 294, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (659, 1500, 0, 2, N'', N'SCHLEMMER US     ', 0, CAST(0.105600 AS Decimal(19, 6)), 254, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (660, 1135, 0, 2, N'', N'POWER & SIGNAL   ', 0, CAST(0.184000 AS Decimal(19, 6)), 295, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (661, 711, 0, 2, N'', N'POWER & SIGNAL   ', 0, CAST(0.230300 AS Decimal(19, 6)), 296, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (662, 250, 0, 2, N'', N'CARLTON-BATES    ', 0, CAST(1.717200 AS Decimal(19, 6)), 297, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (663, 10100, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.261100 AS Decimal(19, 6)), 298, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (664, 2000, 0, 2, N'', N'AUTOELECTRIC     ', 0, CAST(0.210300 AS Decimal(19, 6)), 299, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (665, 28, 0, 2, N'', N'LADD IND.        ', 0, CAST(5.310000 AS Decimal(19, 6)), 300, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (666, 40, 0, 2, N'', N'LADD IND.        ', 0, CAST(2.310000 AS Decimal(19, 6)), 301, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (667, 2416, 0, 2, N'', N'CARLTON-BATES    ', 0, CAST(0.070000 AS Decimal(19, 6)), 302, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (668, 4795, 0, 2, N'', N'CARLTON-BATES    ', 0, CAST(0.054300 AS Decimal(19, 6)), 303, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (669, 218, 0, 2, N'', N'POWER & SIGNAL   ', 0, CAST(0.189400 AS Decimal(19, 6)), 304, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (670, 1100, 0, 2, N'', N'HEILIND          ', 0, CAST(0.193000 AS Decimal(19, 6)), 305, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (671, 585, 0, 2, N'', N'POWER & SIGNAL   ', 0, CAST(1.522800 AS Decimal(19, 6)), 306, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (672, 6600, 0, 2, N'', N'TYCO AMP         ', 0, CAST(0.330900 AS Decimal(19, 6)), 307, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (673, 5800, 0, 2, N'', N'TYCO AMP         ', 0, CAST(0.102900 AS Decimal(19, 6)), 110, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (674, 15230, 0, 2, N'', N'TTI              ', 0, CAST(0.187700 AS Decimal(19, 6)), 308, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (675, 49883, 0, 2, N'', N'GRAYLINE         ', 0, CAST(0.009000 AS Decimal(19, 6)), 309, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (676, 5, 0, 2, N'', N'POWER & SIGNAL   ', 0, CAST(0.119900 AS Decimal(19, 6)), 232, 2, 3, CAST(0.000000 AS Decimal(18, 6)), NULL, CAST(N'2015-11-04' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (685, 0, 0, 1, N'', N'Any Manufacturer', 0, CAST(0.040000 AS Decimal(19, 6)), 136, NULL, 3, NULL, 2, CAST(N'2015-12-14' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (695, 50, 0, 1, N'', N'POWER & SIGNAL   ', 0, CAST(0.110000 AS Decimal(19, 6)), 232, NULL, 3, NULL, 1, CAST(N'2015-12-14' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (696, 25, 0, 1, N'', N'Any Manufacturer', 0, CAST(0.000000 AS Decimal(19, 6)), 136, NULL, 3, NULL, 1016, CAST(N'2015-12-14' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (697, 25, 0, 1, N'', N'POWER & SIGNAL   ', 0, CAST(0.110000 AS Decimal(19, 6)), 232, NULL, 3, NULL, 1, CAST(N'2016-01-29' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (698, 5, 0, 1, N'', N'Any Manufacturer', 0, CAST(0.040000 AS Decimal(19, 6)), 136, NULL, 3, NULL, 2, CAST(N'2016-01-29' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (699, 20, 0, 1, N'', N'Any Manufacturer', 0, CAST(0.040000 AS Decimal(19, 6)), 136, NULL, 3, NULL, 2, CAST(N'2016-01-29' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (700, 25, 0, 1, N'', N'', 0, CAST(0.100000 AS Decimal(19, 6)), 108, NULL, 4, NULL, NULL, CAST(N'2016-03-16' AS Date), NULL, NULL)

INSERT [dbo].[Item_Quantity] ([Id], [OnHand], [OnOrder], [Type], [DateCode], [Manufacturer], [UnitOfMeasure], [Cost], [Item_Master_Id], [Lot_Id], [Vendor_Id], [SuggestedRetail], [PODetail_Id], [DateReceived], [Loc1], [Loc2]) VALUES (701, 15, 0, 2, N'B12CX', N'', 0, CAST(0.110000 AS Decimal(19, 6)), 108, 3, 3, NULL, NULL, CAST(N'2016-03-17' AS Date), NULL, NULL)

SET IDENTITY_INSERT [dbo].[Item_Quantity] OFF

SET IDENTITY_INSERT [dbo].[Salesmen] ON 


INSERT [dbo].[Salesmen] ([Id], [Commission], [User_Id]) VALUES (1, CAST(0.0500 AS Decimal(18, 4)), 2)

INSERT [dbo].[Salesmen] ([Id], [Commission], [User_Id]) VALUES (2, CAST(0.0100 AS Decimal(18, 4)), 1)

INSERT [dbo].[Salesmen] ([Id], [Commission], [User_Id]) VALUES (3, CAST(0.0000 AS Decimal(18, 4)), 11)

SET IDENTITY_INSERT [dbo].[Salesmen] OFF

SET IDENTITY_INSERT [dbo].[Customer] ON 


INSERT [dbo].[Customer] ([Id], [CustomerName], [CustomerType], [Description], [SOHeaders_Id], [Salesman_Id], [Cage], [SICCode], [NAICCode], [Account], [CreidtLimit], [ReSeller]) VALUES (1, N'Forintel Indutries', 0, N'', NULL, 2, N'FI0001', N'', N'345678', N'fi001001', CAST(2000.00 AS Decimal(18, 2)), 1)

INSERT [dbo].[Customer] ([Id], [CustomerName], [CustomerType], [Description], [SOHeaders_Id], [Salesman_Id], [Cage], [SICCode], [NAICCode], [Account], [CreidtLimit], [ReSeller]) VALUES (2, N'Comptel Systems', 1, N'', NULL, NULL, N'CS9001', N'', N'122211', N'CS002003', CAST(500.00 AS Decimal(18, 2)), 1)

INSERT [dbo].[Customer] ([Id], [CustomerName], [CustomerType], [Description], [SOHeaders_Id], [Salesman_Id], [Cage], [SICCode], [NAICCode], [Account], [CreidtLimit], [ReSeller]) VALUES (3, N'Electro Repairs', 3, N'We Fix anything', NULL, NULL, N'', N'', N'', N'ER001009', CAST(200.00 AS Decimal(18, 2)), 0)

INSERT [dbo].[Customer] ([Id], [CustomerName], [CustomerType], [Description], [SOHeaders_Id], [Salesman_Id], [Cage], [SICCode], [NAICCode], [Account], [CreidtLimit], [ReSeller]) VALUES (4, N'Jason Smith', 5, N'Musician', NULL, NULL, N'', N'', N'', N'JS12345', CAST(100.00 AS Decimal(18, 2)), 0)

SET IDENTITY_INSERT [dbo].[Customer] OFF

SET IDENTITY_INSERT [dbo].[Contacts] ON 


INSERT [dbo].[Contacts] ([Id], [Title], [ContactName], [Gender], [Phone], [CellPhone], [Fax], [Email], [ContactType], [Vendor_Id], [Customer_Id], [Salesman_Id], [User_Id]) VALUES (1, NULL, N'John Doe', 0, N'', NULL, N'', N'billwysocki@gmail.com', 0, NULL, NULL, NULL, 1)

INSERT [dbo].[Contacts] ([Id], [Title], [ContactName], [Gender], [Phone], [CellPhone], [Fax], [Email], [ContactType], [Vendor_Id], [Customer_Id], [Salesman_Id], [User_Id]) VALUES (2, NULL, N'Fred Smith', 0, N'', NULL, N'', N'fred@demo.com', 0, NULL, NULL, NULL, 2)

INSERT [dbo].[Contacts] ([Id], [Title], [ContactName], [Gender], [Phone], [CellPhone], [Fax], [Email], [ContactType], [Vendor_Id], [Customer_Id], [Salesman_Id], [User_Id]) VALUES (3, NULL, N'Marvin Alford', 0, N'727-555-1212', N'727-555-1234', N'727-5551213', N'marvin@abc.com', 1, 1, NULL, NULL, NULL)

INSERT [dbo].[Contacts] ([Id], [Title], [ContactName], [Gender], [Phone], [CellPhone], [Fax], [Email], [ContactType], [Vendor_Id], [Customer_Id], [Salesman_Id], [User_Id]) VALUES (4, NULL, N'Josh Trent', 0, N'727-556-1234', N'727-556-1235', N'727-556-1236', N'josh@abc.com', 3, 1, NULL, NULL, NULL)

INSERT [dbo].[Contacts] ([Id], [Title], [ContactName], [Gender], [Phone], [CellPhone], [Fax], [Email], [ContactType], [Vendor_Id], [Customer_Id], [Salesman_Id], [User_Id]) VALUES (5, NULL, N'Paul Slater', 0, N'727-356-4100', N'727432-4565', N'727-356-4101', N'paul@def.com', 1, 3, NULL, NULL, NULL)

INSERT [dbo].[Contacts] ([Id], [Title], [ContactName], [Gender], [Phone], [CellPhone], [Fax], [Email], [ContactType], [Vendor_Id], [Customer_Id], [Salesman_Id], [User_Id]) VALUES (6, NULL, N'Mark Hamm', 0, N'727-345-5678', N'727-675-0987', N'727-345-5679', N'mark@def.com', 3, 3, NULL, NULL, NULL)

INSERT [dbo].[Contacts] ([Id], [Title], [ContactName], [Gender], [Phone], [CellPhone], [Fax], [Email], [ContactType], [Vendor_Id], [Customer_Id], [Salesman_Id], [User_Id]) VALUES (7, NULL, N'Victor Samuals', 0, N'813-456-3456', N'813-554-8877', N'813-456-3457', N'victor@ghi.com', 1, 4, NULL, NULL, NULL)

INSERT [dbo].[Contacts] ([Id], [Title], [ContactName], [Gender], [Phone], [CellPhone], [Fax], [Email], [ContactType], [Vendor_Id], [Customer_Id], [Salesman_Id], [User_Id]) VALUES (8, NULL, N'Felix Simpson', 0, N'813-333-4444', NULL, N'813-333-4445', N'felix@comptel.com', 1, NULL, 2, NULL, NULL)

INSERT [dbo].[Contacts] ([Id], [Title], [ContactName], [Gender], [Phone], [CellPhone], [Fax], [Email], [ContactType], [Vendor_Id], [Customer_Id], [Salesman_Id], [User_Id]) VALUES (9, NULL, N'Jonathan Hayes', 0, N'813-556-5544', NULL, N'813-556-5545', N'jonathan@electo.com', 1, NULL, 3, NULL, NULL)

INSERT [dbo].[Contacts] ([Id], [Title], [ContactName], [Gender], [Phone], [CellPhone], [Fax], [Email], [ContactType], [Vendor_Id], [Customer_Id], [Salesman_Id], [User_Id]) VALUES (10, NULL, N'Mark Fortinel', 0, N'212-444-5557', NULL, N'212-444-5558', N'mark@fortinel.com', 1, NULL, 1, NULL, NULL)

INSERT [dbo].[Contacts] ([Id], [Title], [ContactName], [Gender], [Phone], [CellPhone], [Fax], [Email], [ContactType], [Vendor_Id], [Customer_Id], [Salesman_Id], [User_Id]) VALUES (11, NULL, N'Jason Smith', 0, N'317-456-7111', NULL, N'', N'jason@gmail.com', 1, NULL, 4, NULL, NULL)

INSERT [dbo].[Contacts] ([Id], [Title], [ContactName], [Gender], [Phone], [CellPhone], [Fax], [Email], [ContactType], [Vendor_Id], [Customer_Id], [Salesman_Id], [User_Id]) VALUES (12, NULL, N'Jane Miller', 0, N'555-555-5555', NULL, N'', N'JaneMiller@email.com', 0, NULL, NULL, NULL, 3)

INSERT [dbo].[Contacts] ([Id], [Title], [ContactName], [Gender], [Phone], [CellPhone], [Fax], [Email], [ContactType], [Vendor_Id], [Customer_Id], [Salesman_Id], [User_Id]) VALUES (13, NULL, N'Jeffery Guster', 0, N'555-555-5555', N'', N'', N'JGuster@JKLIndustries.com', 9, 5, NULL, NULL, NULL)

INSERT [dbo].[Contacts] ([Id], [Title], [ContactName], [Gender], [Phone], [CellPhone], [Fax], [Email], [ContactType], [Vendor_Id], [Customer_Id], [Salesman_Id], [User_Id]) VALUES (14, NULL, N'Jack Sprat', 0, N'', NULL, N'', N'', 0, NULL, NULL, NULL, 11)

SET IDENTITY_INSERT [dbo].[Contacts] OFF

SET IDENTITY_INSERT [dbo].[Addresses] ON 


INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (1, N'123 Main St.', N'', N'Clearwater', N'FL', NULL, NULL, N'33701', 1, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (2, N'125 Main St.', N'', N'Clearwater', N'FL', NULL, NULL, N'33701', 5, NULL, NULL, NULL, NULL, 1)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (3, N'121 Main St.', N'', N'Clearwater', N'FL', NULL, NULL, N'33701', 3, NULL, NULL, NULL, NULL, 1)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (4, N'1 Main st', N'', N'Clw', N'Fl', NULL, NULL, N'33755', NULL, 1, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (5, N'', N'', N'', N'', NULL, NULL, N'', NULL, 2, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (6, N'111 ABC Dr', N'', N'Dunedin', N'FL', NULL, NULL, N'33801', 2, NULL, NULL, NULL, 1, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (7, N'111 Industrial Way', N'', N'Dunedin', N'FL', NULL, NULL, N'33802', 5, NULL, NULL, NULL, 1, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (8, N'', N'', N'', N'', NULL, NULL, N'', NULL, 3, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (9, N'', N'', N'', N'', NULL, NULL, N'', NULL, 4, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (10, N'2911 51st Ave', N'', N'Kenneth City', N'FL', NULL, NULL, N'33601', 1, NULL, NULL, NULL, 3, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (11, N'2929 51st Ave', N'', N'Kenneth City', N'FL', NULL, NULL, N'33601', 5, NULL, NULL, NULL, 3, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (12, N'', N'', N'', N'', NULL, NULL, N'', NULL, 5, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (13, N'', N'', N'', N'', NULL, NULL, N'', NULL, 6, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (14, N'1485 Madison St.', N'', N'Tampa', N'FL', NULL, NULL, N'33401', 2, NULL, NULL, NULL, 4, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (15, N'1485 Madison St.', N'', N'Tampa', N'FL', NULL, NULL, N'33401', 3, NULL, NULL, NULL, 4, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (16, N'', N'', N'', N'', NULL, NULL, N'', NULL, 7, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (17, N'14440 Del Mabry', N'', N'Tampa', N'FL', NULL, NULL, N'33502', 1, NULL, NULL, 2, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (18, N'123 xxx lane', N'', N'', N'', NULL, NULL, N'', NULL, 8, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (19, N'350 Tampa Blvd', N'', N'Tampa', N'FL', NULL, NULL, N'33504', 1, NULL, NULL, 3, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (20, N'', N'', N'', N'', NULL, NULL, N'', NULL, 9, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (21, N'1500 10th Ave', N'', N'NYC', N'NY', NULL, NULL, N'11002', 2, NULL, NULL, 1, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (22, N'', N'', N'', N'', NULL, NULL, N'', NULL, 10, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (23, N'4755 Main St', N'', N'Cincinnatti', N'OH', NULL, NULL, N'15444', 7, NULL, NULL, 4, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (24, N'', N'', N'', N'', NULL, NULL, N'', NULL, 11, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (25, N'123 Main St.', N'', N'Any Town', N'MA', NULL, NULL, N'38383', 1, NULL, NULL, 2, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (26, N'123 Main St.', N'', N'Any Town', N'MA', NULL, NULL, N'38838', 3, NULL, NULL, 2, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (1025, N'435 5th St. N.', N'#432', N'Newark', N'NJ', NULL, NULL, N'28342', NULL, 12, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (1026, N'45389 Skylark Crt.', N'', N'Akron', N'OH', NULL, NULL, N'48578', 1, NULL, NULL, NULL, 5, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (1027, N'38572  15th St.', N'', N'Akron', N'OH', NULL, NULL, N'43438', NULL, 13, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (1028, N'123 Main St.', NULL, N'Clearwater', N'FL', NULL, N'United States', N'33701', 1, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (2028, N'123 Main St.', NULL, N'Clearwater', N'FL', NULL, N'United States', N'33701', 1, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (2029, N'', N'', N'', N'', NULL, NULL, N'', NULL, 14, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (2030, N'123 Main St.', NULL, N'Clearwater', N'FL', NULL, N'United States', N'33701', 1, NULL, NULL, NULL, NULL, NULL)

INSERT [dbo].[Addresses] ([Id], [Address1], [Address2], [City], [State], [Province], [Country], [PostalCode], [AddressType], [Contact_Id], [Warehouse_Id], [Customer_Id], [Vendor_Id], [Client_Id]) VALUES (2031, N'123 Main St.', NULL, N'Clearwater', N'FL', NULL, N'United States', N'33701', 1, NULL, NULL, NULL, NULL, 1)

SET IDENTITY_INSERT [dbo].[Addresses] OFF

SET IDENTITY_INSERT [dbo].[SOHeaders] ON 


INSERT [dbo].[SOHeaders] ([Id], [SONumber], [Salesman_Id], [Customer_Id], [SaleDate], [SalesTax], [ShipContact_Id], [ShipLocation_Id], [BillLocation_Id], [BillContact_Id], [STatus], [Email]) VALUES (1, N'SO00004', 1, 1, CAST(N'2015-12-29 18:53:01.197' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 10, 21, 21, 10, N'CREATED', NULL)

INSERT [dbo].[SOHeaders] ([Id], [SONumber], [Salesman_Id], [Customer_Id], [SaleDate], [SalesTax], [ShipContact_Id], [ShipLocation_Id], [BillLocation_Id], [BillContact_Id], [STatus], [Email]) VALUES (2, N'SO00015', 2, 1, CAST(N'2016-01-31 14:54:53.140' AS DateTime), CAST(0.00 AS Decimal(18, 2)), 10, 21, 21, 10, N'CREATED', NULL)

INSERT [dbo].[SOHeaders] ([Id], [SONumber], [Salesman_Id], [Customer_Id], [SaleDate], [SalesTax], [ShipContact_Id], [ShipLocation_Id], [BillLocation_Id], [BillContact_Id], [STatus], [Email]) VALUES (3, N'SO00021', 2, 3, CAST(N'2016-02-18 10:13:45.897' AS DateTime), CAST(31.07 AS Decimal(18, 2)), 9, 19, 19, 9, N'CREATED', NULL)

SET IDENTITY_INSERT [dbo].[SOHeaders] OFF

SET IDENTITY_INSERT [dbo].[Note] ON 


INSERT [dbo].[Note] ([Id], [NoteInfo], [NoteDate], [Customer_Id], [Vendor_Id]) VALUES (1, N'System Testing', CAST(N'2015-12-23 00:00:00.000' AS DateTime), NULL, 1)

INSERT [dbo].[Note] ([Id], [NoteInfo], [NoteDate], [Customer_Id], [Vendor_Id]) VALUES (2, N'Signed with new supplier', CAST(N'2015-12-26 00:00:00.000' AS DateTime), NULL, 5)

SET IDENTITY_INSERT [dbo].[Note] OFF

SET IDENTITY_INSERT [dbo].[SalesHistories] ON 


INSERT [dbo].[SalesHistories] ([Id], [SalesDate], [Quantity], [Unitcost], [UnitPrice], [LotNumber], [DateCode], [Manufacturer], [TransType], [CustomerId], [Item_Master_Id], [SalesmanId], [VendorId]) VALUES (7, CAST(N'2015-12-29' AS Date), 120, CAST(0.160000 AS Decimal(18, 6)), CAST(0.2000 AS Decimal(18, 4)), N'NEX1_2015114', N'', N'', N'Sale', 1, 1, 1, 1)

INSERT [dbo].[SalesHistories] ([Id], [SalesDate], [Quantity], [Unitcost], [UnitPrice], [LotNumber], [DateCode], [Manufacturer], [TransType], [CustomerId], [Item_Master_Id], [SalesmanId], [VendorId]) VALUES (8, CAST(N'2015-12-29' AS Date), 120, CAST(0.910000 AS Decimal(18, 6)), CAST(1.0000 AS Decimal(18, 4)), N'NEX1_2015114', N'', N'', N'Sale', 1, 2, 1, 1)

INSERT [dbo].[SalesHistories] ([Id], [SalesDate], [Quantity], [Unitcost], [UnitPrice], [LotNumber], [DateCode], [Manufacturer], [TransType], [CustomerId], [Item_Master_Id], [SalesmanId], [VendorId]) VALUES (9, CAST(N'2015-12-29' AS Date), 15, CAST(5.540000 AS Decimal(18, 6)), CAST(6.0000 AS Decimal(18, 4)), N'NEX1_2015114', N'', N'', N'Sale', 1, 52, 1, 1)

INSERT [dbo].[SalesHistories] ([Id], [SalesDate], [Quantity], [Unitcost], [UnitPrice], [LotNumber], [DateCode], [Manufacturer], [TransType], [CustomerId], [Item_Master_Id], [SalesmanId], [VendorId]) VALUES (10, CAST(N'2016-01-31' AS Date), 120, CAST(0.160000 AS Decimal(18, 6)), CAST(0.2000 AS Decimal(18, 4)), N'NEX1_2015114', N'', N'', N'Sale', 1, 1, 2, 1)

INSERT [dbo].[SalesHistories] ([Id], [SalesDate], [Quantity], [Unitcost], [UnitPrice], [LotNumber], [DateCode], [Manufacturer], [TransType], [CustomerId], [Item_Master_Id], [SalesmanId], [VendorId]) VALUES (11, CAST(N'2016-01-31' AS Date), 120, CAST(0.910000 AS Decimal(18, 6)), CAST(1.0000 AS Decimal(18, 4)), N'NEX1_2015114', N'', N'', N'Sale', 1, 2, 2, 1)

INSERT [dbo].[SalesHistories] ([Id], [SalesDate], [Quantity], [Unitcost], [UnitPrice], [LotNumber], [DateCode], [Manufacturer], [TransType], [CustomerId], [Item_Master_Id], [SalesmanId], [VendorId]) VALUES (12, CAST(N'2016-01-31' AS Date), 15, CAST(5.540000 AS Decimal(18, 6)), CAST(6.0000 AS Decimal(18, 4)), N'NEX1_2015114', N'', N'', N'Sale', 1, 52, 2, 1)

INSERT [dbo].[SalesHistories] ([Id], [SalesDate], [Quantity], [Unitcost], [UnitPrice], [LotNumber], [DateCode], [Manufacturer], [TransType], [CustomerId], [Item_Master_Id], [SalesmanId], [VendorId]) VALUES (13, CAST(N'2016-02-18' AS Date), 100, CAST(0.000000 AS Decimal(18, 6)), CAST(0.2500 AS Decimal(18, 4)), N'NEX1_2015114', N'', N'', N'Sale', 3, 119, 2, 1)

INSERT [dbo].[SalesHistories] ([Id], [SalesDate], [Quantity], [Unitcost], [UnitPrice], [LotNumber], [DateCode], [Manufacturer], [TransType], [CustomerId], [Item_Master_Id], [SalesmanId], [VendorId]) VALUES (14, CAST(N'2016-02-18' AS Date), 75, CAST(0.160000 AS Decimal(18, 6)), CAST(0.2500 AS Decimal(18, 4)), N'NEX1_2015114', N'', N'', N'Sale', 3, 1, 2, 1)

INSERT [dbo].[SalesHistories] ([Id], [SalesDate], [Quantity], [Unitcost], [UnitPrice], [LotNumber], [DateCode], [Manufacturer], [TransType], [CustomerId], [Item_Master_Id], [SalesmanId], [VendorId]) VALUES (15, CAST(N'2016-02-18' AS Date), 115, CAST(0.263700 AS Decimal(18, 6)), CAST(0.4500 AS Decimal(18, 4)), N'Import1_2015114', N'', N'AUTOELECTRIC     ', N'Sale', 3, 4, 2, 3)

INSERT [dbo].[SalesHistories] ([Id], [SalesDate], [Quantity], [Unitcost], [UnitPrice], [LotNumber], [DateCode], [Manufacturer], [TransType], [CustomerId], [Item_Master_Id], [SalesmanId], [VendorId]) VALUES (16, CAST(N'2016-02-18' AS Date), 45, CAST(4.000000 AS Decimal(18, 6)), CAST(6.0000 AS Decimal(18, 4)), N'NEX1_2015114', N'', N'', N'Sale', 3, 13, 2, 1)

SET IDENTITY_INSERT [dbo].[SalesHistories] OFF

SET IDENTITY_INSERT [dbo].[SalesPending] ON 


INSERT [dbo].[SalesPending] ([Id], [ItemNumber], [Description], [Manufacturer], [CartDate], [Quantity], [UnitPrice], [TranType], [Item_Master_Id], [Quantity_Id], [Customer_Id], [Vendor_Id], [LotNumber]) VALUES (3, N'42946-2', N'5/16R 8-12ga Tyco 42946-2          ', N'', CAST(N'2015-12-27' AS Date), 120, CAST(0.200000 AS Decimal(18, 6)), N'Sale', 1, 1, 1, 1, N'NEX1_2015114')

INSERT [dbo].[SalesPending] ([Id], [ItemNumber], [Description], [Manufacturer], [CartDate], [Quantity], [UnitPrice], [TranType], [Item_Master_Id], [Quantity_Id], [Customer_Id], [Vendor_Id], [LotNumber]) VALUES (4, N'DT04-6P gray', N'Conn  Deutsch DT04-6P gray         ', N'', CAST(N'2015-12-27' AS Date), 120, CAST(1.000000 AS Decimal(18, 6)), N'Sale', 2, 2, 1, 1, N'NEX1_2015114')

INSERT [dbo].[SalesPending] ([Id], [ItemNumber], [Description], [Manufacturer], [CartDate], [Quantity], [UnitPrice], [TranType], [Item_Master_Id], [Quantity_Id], [Customer_Id], [Vendor_Id], [LotNumber]) VALUES (5, N'DT04-12PB-P021', N'Conn 12way Ladd DT04-12PB-P021     ', N'', CAST(N'2015-12-27' AS Date), 15, CAST(6.000000 AS Decimal(18, 6)), N'Sale', 52, 122, 1, 1, N'NEX1_2015114')

INSERT [dbo].[SalesPending] ([Id], [ItemNumber], [Description], [Manufacturer], [CartDate], [Quantity], [UnitPrice], [TranType], [Item_Master_Id], [Quantity_Id], [Customer_Id], [Vendor_Id], [LotNumber]) VALUES (6, N'12004437', N'Term Punch Pack P&S 12004437       ', N'', CAST(N'2016-02-18' AS Date), 100, CAST(0.250000 AS Decimal(18, 6)), N'Sale', 119, 330, 3, 1, N'NEX1_2015114')

INSERT [dbo].[SalesPending] ([Id], [ItemNumber], [Description], [Manufacturer], [CartDate], [Quantity], [UnitPrice], [TranType], [Item_Master_Id], [Quantity_Id], [Customer_Id], [Vendor_Id], [LotNumber]) VALUES (7, N'42946-2', N'5/16R 8-12ga Tyco 42946-2          ', N'', CAST(N'2016-02-18' AS Date), 75, CAST(0.250000 AS Decimal(18, 6)), N'Sale', 1, 1, 3, 1, N'NEX1_2015114')

INSERT [dbo].[SalesPending] ([Id], [ItemNumber], [Description], [Manufacturer], [CartDate], [Quantity], [UnitPrice], [TranType], [Item_Master_Id], [Quantity_Id], [Customer_Id], [Vendor_Id], [LotNumber]) VALUES (8, N'09 4413 11', N'Conn 3way Kostal 09 4413 11        ', N'AUTOELECTRIC     ', CAST(N'2016-02-18' AS Date), 115, CAST(0.450000 AS Decimal(18, 6)), N'Sale', 4, 580, 3, 3, N'Import1_2015114')

INSERT [dbo].[SalesPending] ([Id], [ItemNumber], [Description], [Manufacturer], [CartDate], [Quantity], [UnitPrice], [TranType], [Item_Master_Id], [Quantity_Id], [Customer_Id], [Vendor_Id], [LotNumber]) VALUES (9, N'01520006Z', N'Conn LittelFuse 01520006Z          ', N'', CAST(N'2016-02-18' AS Date), 45, CAST(6.000000 AS Decimal(18, 6)), N'Sale', 13, 18, 3, 1, N'NEX1_2015114')

INSERT [dbo].[SalesPending] ([Id], [ItemNumber], [Description], [Manufacturer], [CartDate], [Quantity], [UnitPrice], [TranType], [Item_Master_Id], [Quantity_Id], [Customer_Id], [Vendor_Id], [LotNumber]) VALUES (11, N'12015909', N'3/8Ring P&S 12015909               ', N'', CAST(N'2016-03-06' AS Date), 100, CAST(0.600000 AS Decimal(18, 6)), N'Sale', 232, NULL, 1, NULL, NULL)

SET IDENTITY_INSERT [dbo].[SalesPending] OFF

SET IDENTITY_INSERT [dbo].[SODetails] ON 


INSERT [dbo].[SODetails] ([Id], [SalePrice], [Quantity], [SOHeader_Id], [Item_Master_Id], [UnitCost], [DateCode], [LotNumber], [VendorId], [Manufacturer]) VALUES (1, CAST(0.200000 AS Decimal(18, 6)), 120, 1, 1, CAST(0.160000 AS Decimal(18, 6)), N'', N'NEX1_2015114', 1, N'')

INSERT [dbo].[SODetails] ([Id], [SalePrice], [Quantity], [SOHeader_Id], [Item_Master_Id], [UnitCost], [DateCode], [LotNumber], [VendorId], [Manufacturer]) VALUES (2, CAST(1.000000 AS Decimal(18, 6)), 120, 1, 2, CAST(0.910000 AS Decimal(18, 6)), N'', N'NEX1_2015114', 1, N'')

INSERT [dbo].[SODetails] ([Id], [SalePrice], [Quantity], [SOHeader_Id], [Item_Master_Id], [UnitCost], [DateCode], [LotNumber], [VendorId], [Manufacturer]) VALUES (3, CAST(6.000000 AS Decimal(18, 6)), 15, 1, 52, CAST(5.540000 AS Decimal(18, 6)), N'', N'NEX1_2015114', 1, N'')

INSERT [dbo].[SODetails] ([Id], [SalePrice], [Quantity], [SOHeader_Id], [Item_Master_Id], [UnitCost], [DateCode], [LotNumber], [VendorId], [Manufacturer]) VALUES (4, CAST(0.200000 AS Decimal(18, 6)), 120, 2, 1, CAST(0.160000 AS Decimal(18, 6)), N'', N'NEX1_2015114', 1, N'')

INSERT [dbo].[SODetails] ([Id], [SalePrice], [Quantity], [SOHeader_Id], [Item_Master_Id], [UnitCost], [DateCode], [LotNumber], [VendorId], [Manufacturer]) VALUES (5, CAST(1.000000 AS Decimal(18, 6)), 120, 2, 2, CAST(0.910000 AS Decimal(18, 6)), N'', N'NEX1_2015114', 1, N'')

INSERT [dbo].[SODetails] ([Id], [SalePrice], [Quantity], [SOHeader_Id], [Item_Master_Id], [UnitCost], [DateCode], [LotNumber], [VendorId], [Manufacturer]) VALUES (6, CAST(6.000000 AS Decimal(18, 6)), 15, 2, 52, CAST(5.540000 AS Decimal(18, 6)), N'', N'NEX1_2015114', 1, N'')

INSERT [dbo].[SODetails] ([Id], [SalePrice], [Quantity], [SOHeader_Id], [Item_Master_Id], [UnitCost], [DateCode], [LotNumber], [VendorId], [Manufacturer]) VALUES (7, CAST(0.250000 AS Decimal(18, 6)), 100, 3, 119, CAST(0.000000 AS Decimal(18, 6)), N'', N'NEX1_2015114', 1, N'')

INSERT [dbo].[SODetails] ([Id], [SalePrice], [Quantity], [SOHeader_Id], [Item_Master_Id], [UnitCost], [DateCode], [LotNumber], [VendorId], [Manufacturer]) VALUES (8, CAST(0.250000 AS Decimal(18, 6)), 75, 3, 1, CAST(0.160000 AS Decimal(18, 6)), N'', N'NEX1_2015114', 1, N'')

INSERT [dbo].[SODetails] ([Id], [SalePrice], [Quantity], [SOHeader_Id], [Item_Master_Id], [UnitCost], [DateCode], [LotNumber], [VendorId], [Manufacturer]) VALUES (9, CAST(0.450000 AS Decimal(18, 6)), 115, 3, 4, CAST(0.263700 AS Decimal(18, 6)), N'', N'Import1_2015114', 3, N'AUTOELECTRIC     ')

INSERT [dbo].[SODetails] ([Id], [SalePrice], [Quantity], [SOHeader_Id], [Item_Master_Id], [UnitCost], [DateCode], [LotNumber], [VendorId], [Manufacturer]) VALUES (10, CAST(6.000000 AS Decimal(18, 6)), 45, 3, 13, CAST(4.000000 AS Decimal(18, 6)), N'', N'NEX1_2015114', 1, N'')

SET IDENTITY_INSERT [dbo].[SODetails] OFF

SET IDENTITY_INSERT [dbo].[Item_Images] ON 


INSERT [dbo].[Item_Images] ([Id], [URL], [Item_Master_Id]) VALUES (1, N'N:\BLS Shared Images\01520006Z.jpg', 13)

INSERT [dbo].[Item_Images] ([Id], [URL], [Item_Master_Id]) VALUES (2, N'N:\BLS Shared Images\0460-204-08141.jpg', 138)

INSERT [dbo].[Item_Images] ([Id], [URL], [Item_Master_Id]) VALUES (3, N'N:\BLS Shared Images\0528-002-6005.jpg', 90)

INSERT [dbo].[Item_Images] ([Id], [URL], [Item_Master_Id]) VALUES (4, N'N:\BLS Shared Images\0528-003-3805.jpg', 85)

INSERT [dbo].[Item_Images] ([Id], [URL], [Item_Master_Id]) VALUES (5, N'N:\BLS Shared Images\12004437.jpg', 119)

SET IDENTITY_INSERT [dbo].[Item_Images] OFF

SET IDENTITY_INSERT [dbo].[PricingBasis] ON 


INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (1, 0, 1, CAST(0.160000 AS Decimal(18, 6)), 1)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (2, 0, 1, CAST(0.910000 AS Decimal(18, 6)), 2)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (3, 0, 1, CAST(1.320000 AS Decimal(18, 6)), 3)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (4, 0, 1, CAST(0.263700 AS Decimal(18, 6)), 4)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (5, 0, 1, CAST(0.210000 AS Decimal(18, 6)), 5)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (6, 0, 1, CAST(0.410000 AS Decimal(18, 6)), 6)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (7, 0, 1, CAST(0.420000 AS Decimal(18, 6)), 7)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (8, 0, 1, CAST(0.020000 AS Decimal(18, 6)), 8)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (9, 0, 1, CAST(0.270000 AS Decimal(18, 6)), 9)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (10, 0, 1, CAST(8.680000 AS Decimal(18, 6)), 10)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (11, 0, 1, CAST(4.540000 AS Decimal(18, 6)), 11)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (12, 0, 1, CAST(1.090000 AS Decimal(18, 6)), 12)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (13, 0, 1, CAST(4.240000 AS Decimal(18, 6)), 13)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (14, 0, 1, CAST(0.350000 AS Decimal(18, 6)), 14)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (15, 0, 1, CAST(0.940000 AS Decimal(18, 6)), 15)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (16, 0, 1, CAST(1.050000 AS Decimal(18, 6)), 16)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (17, 0, 1, CAST(1.050000 AS Decimal(18, 6)), 17)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (18, 0, 1, CAST(0.420000 AS Decimal(18, 6)), 18)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (19, 0, 1, CAST(0.290000 AS Decimal(18, 6)), 19)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (20, 0, 1, CAST(0.230000 AS Decimal(18, 6)), 20)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (21, 0, 1, CAST(0.150000 AS Decimal(18, 6)), 21)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (22, 0, 1, CAST(0.240000 AS Decimal(18, 6)), 22)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (23, 0, 1, CAST(0.090000 AS Decimal(18, 6)), 23)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (24, 0, 1, CAST(0.430000 AS Decimal(18, 6)), 24)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (25, 0, 1, CAST(0.790000 AS Decimal(18, 6)), 25)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (26, 0, 1, CAST(4.380000 AS Decimal(18, 6)), 26)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (27, 0, 1, CAST(0.550000 AS Decimal(18, 6)), 27)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (28, 0, 1, CAST(10.300000 AS Decimal(18, 6)), 28)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (29, 0, 1, CAST(2.090000 AS Decimal(18, 6)), 29)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (30, 0, 1, CAST(1.070000 AS Decimal(18, 6)), 30)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (31, 0, 1, CAST(0.140000 AS Decimal(18, 6)), 31)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (32, 0, 1, CAST(0.060000 AS Decimal(18, 6)), 32)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (33, 0, 1, CAST(0.160000 AS Decimal(18, 6)), 33)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (34, 0, 1, CAST(0.170000 AS Decimal(18, 6)), 34)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (35, 0, 1, CAST(0.320000 AS Decimal(18, 6)), 35)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (36, 0, 1, CAST(0.940000 AS Decimal(18, 6)), 36)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (37, 0, 1, CAST(2.250000 AS Decimal(18, 6)), 37)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (38, 0, 1, CAST(0.270000 AS Decimal(18, 6)), 38)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (39, 0, 1, CAST(8.660000 AS Decimal(18, 6)), 39)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (40, 0, 1, CAST(9.430000 AS Decimal(18, 6)), 40)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (41, 0, 1, CAST(0.640000 AS Decimal(18, 6)), 41)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (42, 0, 1, CAST(0.280000 AS Decimal(18, 6)), 42)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (43, 0, 1, CAST(0.290000 AS Decimal(18, 6)), 43)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (44, 0, 1, CAST(0.790000 AS Decimal(18, 6)), 44)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (45, 0, 1, CAST(10.030000 AS Decimal(18, 6)), 45)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (46, 0, 1, CAST(0.820000 AS Decimal(18, 6)), 46)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (47, 0, 1, CAST(0.400000 AS Decimal(18, 6)), 47)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (48, 0, 1, CAST(0.270000 AS Decimal(18, 6)), 48)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (49, 0, 1, CAST(0.490000 AS Decimal(18, 6)), 49)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (50, 0, 1, CAST(4.170000 AS Decimal(18, 6)), 50)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (51, 0, 1, CAST(14.370000 AS Decimal(18, 6)), 51)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (52, 0, 1, CAST(5.540000 AS Decimal(18, 6)), 52)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (53, 0, 1, CAST(0.890000 AS Decimal(18, 6)), 53)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (54, 0, 1, CAST(0.090000 AS Decimal(18, 6)), 54)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (55, 0, 1, CAST(0.600000 AS Decimal(18, 6)), 55)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (56, 0, 1, CAST(0.240000 AS Decimal(18, 6)), 56)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (57, 0, 1, CAST(0.060000 AS Decimal(18, 6)), 57)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (58, 0, 1, CAST(0.230000 AS Decimal(18, 6)), 58)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (59, 0, 1, CAST(21.870000 AS Decimal(18, 6)), 59)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (60, 0, 1, CAST(4.360000 AS Decimal(18, 6)), 60)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (61, 0, 1, CAST(1.180000 AS Decimal(18, 6)), 61)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (62, 0, 1, CAST(1.220000 AS Decimal(18, 6)), 62)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (63, 0, 1, CAST(2.820000 AS Decimal(18, 6)), 63)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (64, 0, 1, CAST(2.790000 AS Decimal(18, 6)), 64)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (65, 0, 1, CAST(0.240000 AS Decimal(18, 6)), 65)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (66, 0, 1, CAST(1.450000 AS Decimal(18, 6)), 66)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (67, 0, 1, CAST(0.240000 AS Decimal(18, 6)), 67)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (68, 0, 1, CAST(16.760000 AS Decimal(18, 6)), 68)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (69, 0, 1, CAST(0.240000 AS Decimal(18, 6)), 69)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (70, 0, 1, CAST(21.540000 AS Decimal(18, 6)), 70)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (71, 0, 1, CAST(0.650000 AS Decimal(18, 6)), 71)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (72, 0, 1, CAST(2.410000 AS Decimal(18, 6)), 72)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (73, 0, 1, CAST(1.810000 AS Decimal(18, 6)), 73)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (74, 0, 1, CAST(1.810000 AS Decimal(18, 6)), 74)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (75, 0, 1, CAST(0.150000 AS Decimal(18, 6)), 75)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (76, 0, 1, CAST(0.360000 AS Decimal(18, 6)), 76)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (77, 0, 1, CAST(0.360000 AS Decimal(18, 6)), 77)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (78, 0, 1, CAST(0.300000 AS Decimal(18, 6)), 78)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (79, 0, 1, CAST(0.300000 AS Decimal(18, 6)), 79)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (80, 0, 1, CAST(0.410000 AS Decimal(18, 6)), 80)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (81, 0, 1, CAST(0.940000 AS Decimal(18, 6)), 81)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (82, 0, 1, CAST(0.070000 AS Decimal(18, 6)), 82)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (83, 0, 1, CAST(2.840000 AS Decimal(18, 6)), 83)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (84, 0, 1, CAST(0.170000 AS Decimal(18, 6)), 84)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (85, 0, 1, CAST(2.420000 AS Decimal(18, 6)), 85)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (86, 0, 1, CAST(16.610000 AS Decimal(18, 6)), 86)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (87, 0, 1, CAST(0.190000 AS Decimal(18, 6)), 87)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (88, 0, 1, CAST(0.300000 AS Decimal(18, 6)), 88)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (89, 0, 1, CAST(1.140000 AS Decimal(18, 6)), 89)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (90, 0, 1, CAST(3.420000 AS Decimal(18, 6)), 90)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (91, 0, 1, CAST(8.970000 AS Decimal(18, 6)), 91)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (92, 0, 1, CAST(4.930000 AS Decimal(18, 6)), 92)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (93, 0, 1, CAST(0.710000 AS Decimal(18, 6)), 93)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (94, 0, 1, CAST(0.910000 AS Decimal(18, 6)), 94)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (95, 0, 1, CAST(3.620000 AS Decimal(18, 6)), 95)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (96, 0, 1, CAST(9.600000 AS Decimal(18, 6)), 96)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (97, 0, 1, CAST(1.950000 AS Decimal(18, 6)), 97)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (98, 0, 1, CAST(3.490000 AS Decimal(18, 6)), 98)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (99, 0, 1, CAST(0.320000 AS Decimal(18, 6)), 99)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (100, 0, 1, CAST(3.000000 AS Decimal(18, 6)), 100)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (101, 0, 1, CAST(1.240000 AS Decimal(18, 6)), 101)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (102, 0, 1, CAST(9.650000 AS Decimal(18, 6)), 102)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (103, 0, 1, CAST(0.030000 AS Decimal(18, 6)), 103)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (104, 0, 1, CAST(0.070000 AS Decimal(18, 6)), 104)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (105, 0, 1, CAST(0.020000 AS Decimal(18, 6)), 105)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (106, 0, 1, CAST(0.060000 AS Decimal(18, 6)), 106)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (107, 0, 1, CAST(0.040000 AS Decimal(18, 6)), 107)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (108, 0, 1, CAST(0.150000 AS Decimal(18, 6)), 108)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (109, 0, 1, CAST(0.030000 AS Decimal(18, 6)), 109)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (110, 0, 1, CAST(0.102900 AS Decimal(18, 6)), 110)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (111, 0, 1, CAST(0.070000 AS Decimal(18, 6)), 111)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (112, 0, 1, CAST(0.080000 AS Decimal(18, 6)), 112)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (113, 0, 1, CAST(0.040000 AS Decimal(18, 6)), 113)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (114, 0, 1, CAST(0.060000 AS Decimal(18, 6)), 114)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (115, 0, 1, CAST(0.260000 AS Decimal(18, 6)), 115)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (116, 0, 1, CAST(0.090000 AS Decimal(18, 6)), 116)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (117, 0, 1, CAST(0.020000 AS Decimal(18, 6)), 117)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (118, 0, 1, CAST(0.270000 AS Decimal(18, 6)), 118)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (119, 0, 1, CAST(0.160000 AS Decimal(18, 6)), 119)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (120, 0, 1, CAST(0.110000 AS Decimal(18, 6)), 120)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (121, 0, 1, CAST(0.110000 AS Decimal(18, 6)), 121)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (122, 0, 1, CAST(0.160000 AS Decimal(18, 6)), 122)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (123, 0, 1, CAST(0.150000 AS Decimal(18, 6)), 123)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (124, 0, 1, CAST(0.030000 AS Decimal(18, 6)), 124)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (125, 0, 1, CAST(0.040000 AS Decimal(18, 6)), 125)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (126, 0, 1, CAST(0.170000 AS Decimal(18, 6)), 126)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (127, 0, 1, CAST(0.030000 AS Decimal(18, 6)), 127)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (128, 0, 1, CAST(0.470000 AS Decimal(18, 6)), 128)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (129, 0, 1, CAST(0.060000 AS Decimal(18, 6)), 129)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (130, 0, 1, CAST(0.240000 AS Decimal(18, 6)), 130)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (131, 0, 1, CAST(0.060000 AS Decimal(18, 6)), 131)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (132, 0, 1, CAST(0.060000 AS Decimal(18, 6)), 132)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (133, 0, 1, CAST(0.040000 AS Decimal(18, 6)), 133)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (134, 0, 1, CAST(0.060000 AS Decimal(18, 6)), 134)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (135, 0, 1, CAST(0.020000 AS Decimal(18, 6)), 135)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (136, 0, 1, CAST(0.040000 AS Decimal(18, 6)), 136)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (137, 0, 1, CAST(0.170000 AS Decimal(18, 6)), 137)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (138, 0, 1, CAST(2.080000 AS Decimal(18, 6)), 138)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (139, 0, 1, CAST(0.040000 AS Decimal(18, 6)), 139)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (140, 0, 1, CAST(0.070000 AS Decimal(18, 6)), 140)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (141, 0, 1, CAST(0.090000 AS Decimal(18, 6)), 141)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (142, 0, 1, CAST(0.010000 AS Decimal(18, 6)), 142)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (143, 0, 1, CAST(0.170000 AS Decimal(18, 6)), 143)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (144, 0, 1, CAST(0.070000 AS Decimal(18, 6)), 144)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (145, 0, 1, CAST(0.110000 AS Decimal(18, 6)), 145)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (146, 0, 1, CAST(0.030000 AS Decimal(18, 6)), 146)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (147, 0, 1, CAST(0.030000 AS Decimal(18, 6)), 147)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (148, 0, 1, CAST(0.030000 AS Decimal(18, 6)), 148)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (149, 0, 1, CAST(0.050000 AS Decimal(18, 6)), 149)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (150, 0, 1, CAST(0.100000 AS Decimal(18, 6)), 150)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (151, 0, 1, CAST(0.110000 AS Decimal(18, 6)), 151)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (152, 0, 1, CAST(0.030000 AS Decimal(18, 6)), 152)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (153, 0, 1, CAST(0.040000 AS Decimal(18, 6)), 153)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (154, 0, 1, CAST(0.070000 AS Decimal(18, 6)), 154)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (155, 0, 1, CAST(0.040000 AS Decimal(18, 6)), 155)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (156, 0, 1, CAST(0.060000 AS Decimal(18, 6)), 156)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (157, 0, 1, CAST(0.020000 AS Decimal(18, 6)), 157)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (158, 0, 1, CAST(0.020000 AS Decimal(18, 6)), 158)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (159, 0, 1, CAST(0.530000 AS Decimal(18, 6)), 159)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (160, 0, 1, CAST(0.020000 AS Decimal(18, 6)), 160)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (161, 0, 1, CAST(0.030000 AS Decimal(18, 6)), 161)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (162, 0, 1, CAST(0.270000 AS Decimal(18, 6)), 162)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (163, 0, 1, CAST(0.040000 AS Decimal(18, 6)), 163)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (164, 0, 1, CAST(0.090000 AS Decimal(18, 6)), 164)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (165, 0, 1, CAST(0.060000 AS Decimal(18, 6)), 165)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (166, 0, 1, CAST(0.080000 AS Decimal(18, 6)), 166)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (167, 0, 1, CAST(0.530000 AS Decimal(18, 6)), 167)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (168, 0, 1, CAST(0.100000 AS Decimal(18, 6)), 168)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (169, 0, 1, CAST(0.120000 AS Decimal(18, 6)), 169)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (170, 0, 1, CAST(0.080000 AS Decimal(18, 6)), 170)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (171, 0, 1, CAST(0.080000 AS Decimal(18, 6)), 171)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (172, 0, 1, CAST(0.040000 AS Decimal(18, 6)), 172)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (173, 0, 1, CAST(0.850000 AS Decimal(18, 6)), 173)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (174, 0, 1, CAST(0.050000 AS Decimal(18, 6)), 174)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (175, 0, 1, CAST(0.050000 AS Decimal(18, 6)), 175)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (176, 0, 1, CAST(0.050000 AS Decimal(18, 6)), 176)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (177, 0, 1, CAST(0.030000 AS Decimal(18, 6)), 177)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (178, 0, 1, CAST(0.150000 AS Decimal(18, 6)), 178)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (179, 0, 1, CAST(1.100000 AS Decimal(18, 6)), 179)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (180, 0, 1, CAST(0.050000 AS Decimal(18, 6)), 180)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (181, 0, 1, CAST(0.090000 AS Decimal(18, 6)), 181)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (182, 0, 1, CAST(0.056100 AS Decimal(18, 6)), 182)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (183, 0, 1, CAST(0.140000 AS Decimal(18, 6)), 183)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (184, 0, 1, CAST(4.000000 AS Decimal(18, 6)), 184)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (185, 0, 1, CAST(0.260000 AS Decimal(18, 6)), 185)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (186, 0, 1, CAST(0.260000 AS Decimal(18, 6)), 186)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (187, 0, 1, CAST(0.040000 AS Decimal(18, 6)), 187)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (188, 0, 1, CAST(0.040000 AS Decimal(18, 6)), 188)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (189, 0, 1, CAST(0.160000 AS Decimal(18, 6)), 189)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (190, 0, 1, CAST(0.120000 AS Decimal(18, 6)), 190)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (191, 0, 1, CAST(0.130000 AS Decimal(18, 6)), 191)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (192, 0, 1, CAST(0.070000 AS Decimal(18, 6)), 192)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (193, 0, 1, CAST(0.150000 AS Decimal(18, 6)), 193)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (194, 0, 1, CAST(0.040000 AS Decimal(18, 6)), 194)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (195, 0, 1, CAST(40.740000 AS Decimal(18, 6)), 195)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (196, 0, 1, CAST(8.790000 AS Decimal(18, 6)), 196)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (197, 0, 1, CAST(0.290000 AS Decimal(18, 6)), 197)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (198, 0, 1, CAST(1.550000 AS Decimal(18, 6)), 198)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (199, 0, 1, CAST(0.600000 AS Decimal(18, 6)), 199)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (200, 0, 1, CAST(0.870000 AS Decimal(18, 6)), 200)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (201, 0, 1, CAST(0.400000 AS Decimal(18, 6)), 201)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (202, 0, 1, CAST(0.960000 AS Decimal(18, 6)), 202)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (203, 0, 1, CAST(8.530000 AS Decimal(18, 6)), 203)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (204, 0, 1, CAST(0.980000 AS Decimal(18, 6)), 204)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (205, 0, 1, CAST(0.600000 AS Decimal(18, 6)), 205)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (206, 0, 1, CAST(11.920000 AS Decimal(18, 6)), 206)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (207, 0, 1, CAST(0.460000 AS Decimal(18, 6)), 207)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (208, 0, 1, CAST(2.040000 AS Decimal(18, 6)), 208)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (209, 0, 1, CAST(0.080000 AS Decimal(18, 6)), 209)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (210, 0, 1, CAST(0.050000 AS Decimal(18, 6)), 210)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (211, 0, 1, CAST(2.490000 AS Decimal(18, 6)), 211)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (212, 0, 1, CAST(0.160000 AS Decimal(18, 6)), 212)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (213, 0, 1, CAST(0.580000 AS Decimal(18, 6)), 213)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (214, 0, 1, CAST(3.460000 AS Decimal(18, 6)), 214)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (215, 0, 1, CAST(0.070000 AS Decimal(18, 6)), 215)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (216, 0, 1, CAST(0.180000 AS Decimal(18, 6)), 216)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (217, 0, 1, CAST(0.130000 AS Decimal(18, 6)), 217)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (218, 0, 1, CAST(1.450000 AS Decimal(18, 6)), 218)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (219, 0, 1, CAST(0.250000 AS Decimal(18, 6)), 219)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (220, 0, 1, CAST(0.140500 AS Decimal(18, 6)), 220)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (221, 0, 1, CAST(0.090000 AS Decimal(18, 6)), 221)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (222, 0, 1, CAST(0.040000 AS Decimal(18, 6)), 222)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (223, 0, 1, CAST(0.160000 AS Decimal(18, 6)), 223)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (224, 0, 1, CAST(0.160000 AS Decimal(18, 6)), 224)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (225, 0, 1, CAST(0.090000 AS Decimal(18, 6)), 225)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (226, 0, 1, CAST(10.670000 AS Decimal(18, 6)), 226)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (227, 0, 1, CAST(2.200000 AS Decimal(18, 6)), 227)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (228, 0, 1, CAST(0.360000 AS Decimal(18, 6)), 228)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (229, 0, 1, CAST(1.050000 AS Decimal(18, 6)), 229)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (230, 0, 1, CAST(9.280000 AS Decimal(18, 6)), 230)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (231, 0, 1, CAST(0.000000 AS Decimal(18, 6)), 231)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (232, 0, 1, CAST(0.119900 AS Decimal(18, 6)), 232)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (233, 0, 1, CAST(0.098000 AS Decimal(18, 6)), 233)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (234, 0, 1, CAST(0.182700 AS Decimal(18, 6)), 234)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (235, 0, 1, CAST(0.000100 AS Decimal(18, 6)), 235)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (236, 0, 1, CAST(1.420000 AS Decimal(18, 6)), 236)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (237, 0, 1, CAST(1.400000 AS Decimal(18, 6)), 237)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (238, 0, 1, CAST(0.630000 AS Decimal(18, 6)), 238)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (239, 0, 1, CAST(4.750000 AS Decimal(18, 6)), 239)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (240, 0, 1, CAST(0.062000 AS Decimal(18, 6)), 240)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (241, 0, 1, CAST(0.018000 AS Decimal(18, 6)), 241)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (242, 0, 1, CAST(0.474400 AS Decimal(18, 6)), 242)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (243, 0, 1, CAST(0.009300 AS Decimal(18, 6)), 243)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (244, 0, 1, CAST(8.150000 AS Decimal(18, 6)), 244)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (245, 0, 1, CAST(0.164100 AS Decimal(18, 6)), 245)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (246, 0, 1, CAST(0.057400 AS Decimal(18, 6)), 246)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (247, 0, 1, CAST(0.096100 AS Decimal(18, 6)), 247)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (248, 0, 1, CAST(0.077900 AS Decimal(18, 6)), 248)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (249, 0, 1, CAST(0.138100 AS Decimal(18, 6)), 249)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (250, 0, 1, CAST(0.103000 AS Decimal(18, 6)), 250)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (251, 0, 1, CAST(0.900000 AS Decimal(18, 6)), 251)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (252, 0, 1, CAST(0.029500 AS Decimal(18, 6)), 252)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (253, 0, 1, CAST(0.009000 AS Decimal(18, 6)), 253)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (254, 0, 1, CAST(0.105600 AS Decimal(18, 6)), 254)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (255, 0, 1, CAST(0.000000 AS Decimal(18, 6)), 255)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (256, 0, 1, CAST(0.910000 AS Decimal(18, 6)), 256)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (257, 0, 1, CAST(0.239100 AS Decimal(18, 6)), 257)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (258, 0, 1, CAST(0.020100 AS Decimal(18, 6)), 258)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (259, 0, 1, CAST(1.161500 AS Decimal(18, 6)), 259)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (260, 0, 1, CAST(0.196800 AS Decimal(18, 6)), 260)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (261, 0, 1, CAST(0.118100 AS Decimal(18, 6)), 261)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (262, 0, 1, CAST(0.025800 AS Decimal(18, 6)), 262)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (263, 0, 1, CAST(1.080000 AS Decimal(18, 6)), 263)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (264, 0, 1, CAST(0.052700 AS Decimal(18, 6)), 264)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (265, 0, 1, CAST(0.086900 AS Decimal(18, 6)), 265)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (266, 0, 1, CAST(0.196100 AS Decimal(18, 6)), 266)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (267, 0, 1, CAST(0.063300 AS Decimal(18, 6)), 267)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (268, 0, 1, CAST(0.779100 AS Decimal(18, 6)), 268)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (269, 0, 1, CAST(2.123100 AS Decimal(18, 6)), 269)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (270, 0, 1, CAST(1.015400 AS Decimal(18, 6)), 270)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (271, 0, 1, CAST(2.044000 AS Decimal(18, 6)), 271)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (272, 0, 1, CAST(0.074500 AS Decimal(18, 6)), 272)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (273, 0, 1, CAST(0.144200 AS Decimal(18, 6)), 273)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (274, 0, 1, CAST(0.330000 AS Decimal(18, 6)), 274)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (275, 0, 1, CAST(0.697400 AS Decimal(18, 6)), 275)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (276, 0, 1, CAST(0.160000 AS Decimal(18, 6)), 276)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (277, 0, 1, CAST(12.270300 AS Decimal(18, 6)), 277)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (278, 0, 1, CAST(0.012000 AS Decimal(18, 6)), 278)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (279, 0, 1, CAST(18.500000 AS Decimal(18, 6)), 279)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (280, 0, 1, CAST(0.064300 AS Decimal(18, 6)), 280)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (281, 0, 1, CAST(0.214700 AS Decimal(18, 6)), 281)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (282, 0, 1, CAST(0.940000 AS Decimal(18, 6)), 282)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (283, 0, 1, CAST(0.101000 AS Decimal(18, 6)), 283)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (284, 0, 1, CAST(2.860000 AS Decimal(18, 6)), 284)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (285, 0, 1, CAST(0.187000 AS Decimal(18, 6)), 285)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (286, 0, 1, CAST(0.042400 AS Decimal(18, 6)), 286)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (287, 0, 1, CAST(7.060000 AS Decimal(18, 6)), 287)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (288, 0, 1, CAST(0.822800 AS Decimal(18, 6)), 288)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (289, 0, 1, CAST(0.158000 AS Decimal(18, 6)), 289)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (290, 0, 1, CAST(0.030700 AS Decimal(18, 6)), 290)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (291, 0, 1, CAST(0.361200 AS Decimal(18, 6)), 291)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (292, 0, 1, CAST(0.095800 AS Decimal(18, 6)), 292)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (293, 0, 1, CAST(0.157400 AS Decimal(18, 6)), 293)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (294, 0, 1, CAST(0.119000 AS Decimal(18, 6)), 294)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (295, 0, 1, CAST(0.184000 AS Decimal(18, 6)), 295)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (296, 0, 1, CAST(0.230300 AS Decimal(18, 6)), 296)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (297, 0, 1, CAST(1.717200 AS Decimal(18, 6)), 297)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (298, 0, 1, CAST(0.261100 AS Decimal(18, 6)), 298)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (299, 0, 1, CAST(0.210300 AS Decimal(18, 6)), 299)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (300, 0, 1, CAST(5.310000 AS Decimal(18, 6)), 300)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (301, 0, 1, CAST(2.310000 AS Decimal(18, 6)), 301)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (302, 0, 1, CAST(0.070000 AS Decimal(18, 6)), 302)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (303, 0, 1, CAST(0.054300 AS Decimal(18, 6)), 303)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (304, 0, 1, CAST(0.189400 AS Decimal(18, 6)), 304)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (305, 0, 1, CAST(0.193000 AS Decimal(18, 6)), 305)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (306, 0, 1, CAST(1.522800 AS Decimal(18, 6)), 306)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (307, 0, 1, CAST(0.330900 AS Decimal(18, 6)), 307)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (308, 0, 1, CAST(0.187700 AS Decimal(18, 6)), 308)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (309, 0, 1, CAST(0.009000 AS Decimal(18, 6)), 309)

INSERT [dbo].[PricingBasis] ([Id], [Basis], [MinQuantity], [Price], [Item_Master_Id]) VALUES (310, 0, 5, CAST(0.140000 AS Decimal(18, 6)), 108)

SET IDENTITY_INSERT [dbo].[PricingBasis] OFF

SET IDENTITY_INSERT [dbo].[PurchaseHistory] ON 


INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (1, 1, 1, 2, CAST(N'2015-10-04' AS Date), 2000, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (2, 1, 2, 2, CAST(N'2015-09-04' AS Date), 600, CAST(0.910000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (3, 1, 2, 2, CAST(N'2015-10-04' AS Date), 300, CAST(0.910000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (4, 1, 2, 2, CAST(N'2015-10-04' AS Date), 100, CAST(0.910000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (5, 1, 3, 2, CAST(N'2015-11-04' AS Date), 105, CAST(1.320000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (6, 1, 4, 2, CAST(N'2015-09-04' AS Date), 1500, CAST(0.260000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (7, 1, 5, 2, CAST(N'2015-09-04' AS Date), 300, CAST(0.210000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (8, 1, 6, 2, CAST(N'2015-08-04' AS Date), 1888, CAST(0.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (9, 1, 7, 2, CAST(N'2015-11-04' AS Date), 32, CAST(0.420000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (10, 1, 8, 2, CAST(N'2015-07-04' AS Date), 12936, CAST(0.020000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (11, 1, 9, 2, CAST(N'2015-08-04' AS Date), 300, CAST(0.270000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (12, 1, 9, 2, CAST(N'2015-08-04' AS Date), 600, CAST(0.270000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (13, 1, 9, 2, CAST(N'2015-08-04' AS Date), 600, CAST(0.270000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (14, 1, 9, 2, CAST(N'2015-08-04' AS Date), 598, CAST(0.270000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (15, 1, 10, 2, CAST(N'2015-07-04' AS Date), 50, CAST(8.680000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (16, 1, 11, 2, CAST(N'2015-06-04' AS Date), 442, CAST(4.540000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (17, 1, 12, 2, CAST(N'2015-10-04' AS Date), 148, CAST(1.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (18, 1, 13, 2, CAST(N'2015-05-04' AS Date), 300, CAST(4.240000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (19, 1, 14, 2, CAST(N'2015-07-04' AS Date), 30, CAST(0.350000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (20, 1, 15, 2, CAST(N'2015-07-04' AS Date), 156, CAST(0.940000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (21, 1, 15, 2, CAST(N'2015-10-04' AS Date), 39, CAST(0.940000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (22, 1, 16, 2, CAST(N'2015-05-04' AS Date), 499, CAST(1.050000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (23, 1, 17, 2, CAST(N'2015-08-04' AS Date), 290, CAST(1.050000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (24, 1, 17, 2, CAST(N'2015-01-04' AS Date), 481, CAST(1.050000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (25, 1, 18, 2, CAST(N'2015-06-04' AS Date), 548, CAST(0.420000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (26, 1, 19, 2, CAST(N'2015-06-04' AS Date), 42, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (27, 1, 20, 2, CAST(N'2015-06-04' AS Date), 800, CAST(0.230000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (28, 1, 21, 2, CAST(N'2015-06-04' AS Date), 61, CAST(0.150000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (29, 1, 22, 2, CAST(N'2015-02-04' AS Date), 338, CAST(0.240000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (30, 1, 23, 2, CAST(N'2015-04-04' AS Date), 2000, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (31, 1, 23, 2, CAST(N'2015-05-04' AS Date), 2000, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (32, 1, 23, 2, CAST(N'2015-05-04' AS Date), 4000, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (33, 1, 23, 2, CAST(N'2015-05-04' AS Date), 1262, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (34, 1, 24, 2, CAST(N'2015-05-04' AS Date), 500, CAST(0.430000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (35, 1, 25, 2, CAST(N'2015-05-04' AS Date), 123, CAST(0.790000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (36, 1, 25, 2, CAST(N'2015-05-04' AS Date), 250, CAST(0.790000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (37, 1, 26, 2, CAST(N'2015-11-04' AS Date), 15, CAST(4.380000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (38, 1, 27, 2, CAST(N'2015-04-04' AS Date), 100, CAST(0.550000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (39, 1, 28, 2, CAST(N'2015-04-04' AS Date), 20, CAST(10.300000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (40, 1, 29, 2, CAST(N'2015-04-04' AS Date), 7, CAST(2.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (41, 1, 30, 2, CAST(N'2015-04-04' AS Date), 4, CAST(1.070000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (42, 1, 31, 2, CAST(N'2015-04-04' AS Date), 892, CAST(0.140000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (43, 1, 32, 2, CAST(N'2015-04-04' AS Date), 200, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (44, 1, 32, 2, CAST(N'2015-04-04' AS Date), 1984, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (45, 1, 33, 2, CAST(N'2015-11-04' AS Date), 213, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (46, 1, 34, 2, CAST(N'2015-03-04' AS Date), 985, CAST(0.170000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (47, 1, 35, 2, CAST(N'2015-10-04' AS Date), 279, CAST(0.320000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (48, 1, 36, 2, CAST(N'2015-08-04' AS Date), 400, CAST(0.940000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (49, 1, 36, 2, CAST(N'2015-01-04' AS Date), 37, CAST(0.940000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (50, 1, 37, 2, CAST(N'2015-03-04' AS Date), 40, CAST(1.780000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (51, 1, 37, 2, CAST(N'2015-03-04' AS Date), 3, CAST(2.250000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (52, 1, 37, 2, CAST(N'2015-02-04' AS Date), 300, CAST(2.250000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (53, 1, 37, 2, CAST(N'2015-05-04' AS Date), 19, CAST(2.250000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (54, 1, 38, 2, CAST(N'2015-02-04' AS Date), 41, CAST(0.270000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (55, 1, 39, 2, CAST(N'2015-03-04' AS Date), 2, CAST(8.660000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (56, 1, 40, 2, CAST(N'2015-04-04' AS Date), 29, CAST(9.430000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (57, 1, 41, 2, CAST(N'2015-05-04' AS Date), 413, CAST(0.640000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (58, 1, 42, 2, CAST(N'2015-06-04' AS Date), 156, CAST(0.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (59, 1, 42, 2, CAST(N'2015-02-04' AS Date), 300, CAST(0.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (60, 1, 42, 2, CAST(N'2015-02-04' AS Date), 300, CAST(0.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (61, 1, 42, 2, CAST(N'2015-03-04' AS Date), 300, CAST(0.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (62, 1, 42, 2, CAST(N'2015-03-04' AS Date), 300, CAST(0.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (63, 1, 42, 2, CAST(N'2015-03-04' AS Date), 300, CAST(0.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (64, 1, 42, 2, CAST(N'2015-03-04' AS Date), 300, CAST(0.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (65, 1, 42, 2, CAST(N'2015-03-04' AS Date), 300, CAST(0.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (66, 1, 42, 2, CAST(N'2015-04-04' AS Date), 204, CAST(0.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (67, 1, 42, 2, CAST(N'2015-04-04' AS Date), 300, CAST(0.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (68, 1, 43, 2, CAST(N'2015-04-04' AS Date), 276, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (69, 1, 43, 2, CAST(N'2015-11-04' AS Date), 300, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (70, 1, 43, 2, CAST(N'2015-05-04' AS Date), 300, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (71, 1, 43, 2, CAST(N'2015-05-04' AS Date), 300, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (72, 1, 43, 2, CAST(N'2015-05-04' AS Date), 300, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (73, 1, 43, 2, CAST(N'2015-05-04' AS Date), 300, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (74, 1, 43, 2, CAST(N'2015-05-04' AS Date), 300, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (75, 1, 43, 2, CAST(N'2015-05-04' AS Date), 300, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (76, 1, 43, 2, CAST(N'2015-05-04' AS Date), 300, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (77, 1, 43, 2, CAST(N'2015-05-04' AS Date), 300, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (78, 1, 43, 2, CAST(N'2015-06-04' AS Date), 300, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (79, 1, 43, 2, CAST(N'2015-06-04' AS Date), 300, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (80, 1, 44, 2, CAST(N'2015-06-04' AS Date), 48, CAST(0.790000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (81, 1, 44, 2, CAST(N'2015-07-04' AS Date), 84, CAST(0.790000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (82, 1, 44, 2, CAST(N'2015-07-04' AS Date), 84, CAST(0.790000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (83, 1, 45, 2, CAST(N'2015-07-04' AS Date), 159, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (84, 1, 45, 2, CAST(N'2015-07-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (85, 1, 45, 2, CAST(N'2015-07-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (86, 1, 45, 2, CAST(N'2015-07-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (87, 1, 45, 2, CAST(N'2015-07-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (88, 1, 45, 2, CAST(N'2015-07-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (89, 1, 45, 2, CAST(N'2015-07-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (90, 1, 45, 2, CAST(N'2015-07-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (91, 1, 45, 2, CAST(N'2015-10-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (92, 1, 45, 2, CAST(N'2015-02-04' AS Date), 60, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (93, 1, 45, 2, CAST(N'2015-02-04' AS Date), 66, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (94, 1, 45, 2, CAST(N'2015-02-04' AS Date), 97, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (95, 1, 45, 2, CAST(N'2015-03-04' AS Date), 98, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (96, 1, 45, 2, CAST(N'2015-11-04' AS Date), 66, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (97, 1, 45, 2, CAST(N'2015-03-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (98, 1, 45, 2, CAST(N'2015-03-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (99, 1, 45, 2, CAST(N'2015-04-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (100, 1, 45, 2, CAST(N'2015-05-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (101, 1, 45, 2, CAST(N'2015-06-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (102, 1, 45, 2, CAST(N'2015-10-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (103, 1, 45, 2, CAST(N'2015-07-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (104, 1, 45, 2, CAST(N'2015-08-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (105, 1, 45, 2, CAST(N'2015-12-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (106, 1, 45, 2, CAST(N'2015-12-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (107, 1, 45, 2, CAST(N'2015-12-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (108, 1, 45, 2, CAST(N'2015-09-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (109, 1, 45, 2, CAST(N'2015-11-04' AS Date), 125, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (110, 1, 45, 2, CAST(N'2015-11-04' AS Date), 92, CAST(10.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (111, 1, 46, 2, CAST(N'2015-11-04' AS Date), 240, CAST(0.820000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (112, 1, 46, 2, CAST(N'2015-11-04' AS Date), 900, CAST(0.820000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (113, 1, 46, 2, CAST(N'2015-11-04' AS Date), 1, CAST(0.820000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (114, 1, 46, 2, CAST(N'2015-11-04' AS Date), 900, CAST(0.820000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (115, 1, 46, 2, CAST(N'2015-11-04' AS Date), 401, CAST(0.820000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (116, 1, 47, 2, CAST(N'2015-11-04' AS Date), 597, CAST(0.400000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (117, 1, 48, 2, CAST(N'2015-11-04' AS Date), 530, CAST(0.270000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (118, 1, 49, 2, CAST(N'2015-11-04' AS Date), 1000, CAST(0.490000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (119, 1, 50, 2, CAST(N'2015-10-04' AS Date), 24, CAST(4.170000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (120, 1, 50, 2, CAST(N'2015-10-04' AS Date), 10, CAST(4.170000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (121, 1, 51, 2, CAST(N'2015-10-04' AS Date), 15, CAST(14.370000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (122, 1, 52, 2, CAST(N'2015-10-04' AS Date), 200, CAST(5.540000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (123, 1, 53, 2, CAST(N'2015-10-04' AS Date), 337, CAST(0.550000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (124, 1, 53, 2, CAST(N'2015-10-04' AS Date), 350, CAST(0.550000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (125, 1, 53, 2, CAST(N'2015-10-04' AS Date), 350, CAST(0.550000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (126, 1, 54, 2, CAST(N'2015-10-04' AS Date), 1500, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (127, 1, 54, 2, CAST(N'2015-10-04' AS Date), 246, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (128, 1, 55, 2, CAST(N'2015-01-04' AS Date), 100, CAST(0.600000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (129, 1, 56, 2, CAST(N'2015-01-04' AS Date), 50, CAST(0.240000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (130, 1, 57, 2, CAST(N'2015-07-04' AS Date), 5000, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (131, 1, 57, 2, CAST(N'2015-08-04' AS Date), 5000, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (132, 1, 58, 2, CAST(N'2015-12-04' AS Date), 800, CAST(0.230000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (133, 1, 59, 2, CAST(N'2015-12-04' AS Date), 30, CAST(21.870000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (134, 1, 59, 2, CAST(N'2015-12-04' AS Date), 20, CAST(21.870000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (135, 1, 60, 2, CAST(N'2015-12-04' AS Date), 324, CAST(4.360000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (136, 1, 61, 2, CAST(N'2015-12-04' AS Date), 70, CAST(1.180000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (137, 1, 62, 2, CAST(N'2015-11-04' AS Date), 395, CAST(1.220000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (138, 1, 63, 2, CAST(N'2015-11-04' AS Date), 11, CAST(2.820000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (139, 1, 64, 2, CAST(N'2015-11-04' AS Date), 3, CAST(2.790000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (140, 1, 64, 2, CAST(N'2015-02-04' AS Date), 4, CAST(2.790000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (141, 1, 65, 2, CAST(N'2015-03-04' AS Date), 79, CAST(0.240000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (142, 1, 66, 2, CAST(N'2015-04-04' AS Date), 600, CAST(1.450000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (143, 1, 66, 2, CAST(N'2015-05-04' AS Date), 600, CAST(1.450000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (144, 1, 66, 2, CAST(N'2015-05-04' AS Date), 600, CAST(1.450000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (145, 1, 67, 2, CAST(N'2015-06-04' AS Date), 947, CAST(0.240000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (146, 1, 67, 2, CAST(N'2015-07-04' AS Date), 25, CAST(0.240000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (147, 1, 67, 2, CAST(N'2015-08-04' AS Date), 2000, CAST(0.240000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (148, 1, 68, 2, CAST(N'2015-09-04' AS Date), 125, CAST(16.760000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (149, 1, 69, 2, CAST(N'2015-10-04' AS Date), 794, CAST(0.240000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (150, 1, 70, 2, CAST(N'2015-01-04' AS Date), 31, CAST(21.540000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (151, 1, 71, 2, CAST(N'2015-01-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (152, 1, 71, 2, CAST(N'2015-01-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (153, 1, 71, 2, CAST(N'2015-01-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (154, 1, 71, 2, CAST(N'2015-01-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (155, 1, 71, 2, CAST(N'2015-01-04' AS Date), 27, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (156, 1, 71, 2, CAST(N'2015-01-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (157, 1, 71, 2, CAST(N'2015-01-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (158, 1, 71, 2, CAST(N'2015-11-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (159, 1, 71, 2, CAST(N'2015-11-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (160, 1, 71, 2, CAST(N'2015-01-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (161, 1, 71, 2, CAST(N'2015-01-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (162, 1, 71, 2, CAST(N'2015-01-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (163, 1, 71, 2, CAST(N'2015-01-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (164, 1, 71, 2, CAST(N'2015-01-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (165, 1, 71, 2, CAST(N'2015-01-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (166, 1, 71, 2, CAST(N'2015-01-04' AS Date), 185, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (167, 1, 71, 2, CAST(N'2015-01-04' AS Date), 50, CAST(0.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (168, 1, 72, 2, CAST(N'2015-01-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (169, 1, 72, 2, CAST(N'2015-02-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (170, 1, 72, 2, CAST(N'2015-02-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (171, 1, 72, 2, CAST(N'2015-02-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (172, 1, 72, 2, CAST(N'2015-02-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (173, 1, 72, 2, CAST(N'2015-03-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (174, 1, 72, 2, CAST(N'2015-03-04' AS Date), 29, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (175, 1, 72, 2, CAST(N'2015-03-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (176, 1, 72, 2, CAST(N'2015-03-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (177, 1, 72, 2, CAST(N'2015-02-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (178, 1, 72, 2, CAST(N'2015-02-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (179, 1, 72, 2, CAST(N'2015-02-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (180, 1, 72, 2, CAST(N'2015-03-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (181, 1, 72, 2, CAST(N'2015-03-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (182, 1, 72, 2, CAST(N'2015-03-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (183, 1, 72, 2, CAST(N'2015-03-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (184, 1, 72, 2, CAST(N'2015-04-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (185, 1, 72, 2, CAST(N'2015-04-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (186, 1, 72, 2, CAST(N'2015-04-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (187, 1, 72, 2, CAST(N'2015-05-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (188, 1, 72, 2, CAST(N'2015-05-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (189, 1, 72, 2, CAST(N'2015-05-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (190, 1, 72, 2, CAST(N'2015-05-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (191, 1, 72, 2, CAST(N'2015-06-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (192, 1, 72, 2, CAST(N'2015-06-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (193, 1, 72, 2, CAST(N'2015-07-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (194, 1, 72, 2, CAST(N'2015-07-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (195, 1, 72, 2, CAST(N'2015-08-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (196, 1, 72, 2, CAST(N'2015-08-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (197, 1, 72, 2, CAST(N'2015-09-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (198, 1, 72, 2, CAST(N'2015-09-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (199, 1, 72, 2, CAST(N'2015-10-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (200, 1, 72, 2, CAST(N'2015-10-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (201, 1, 72, 2, CAST(N'2015-11-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (202, 1, 72, 2, CAST(N'2015-11-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (203, 1, 72, 2, CAST(N'2015-11-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (204, 1, 72, 2, CAST(N'2015-11-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (205, 1, 72, 2, CAST(N'2015-11-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (206, 1, 72, 2, CAST(N'2015-11-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (207, 1, 72, 2, CAST(N'2015-11-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (208, 1, 72, 2, CAST(N'2015-11-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (209, 1, 72, 2, CAST(N'2015-11-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (210, 1, 72, 2, CAST(N'2015-11-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (211, 1, 72, 2, CAST(N'2015-11-04' AS Date), 35, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (212, 1, 72, 2, CAST(N'2015-11-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (213, 1, 72, 2, CAST(N'2015-11-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (214, 1, 72, 2, CAST(N'2015-11-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (215, 1, 72, 2, CAST(N'2015-11-04' AS Date), 60, CAST(2.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (216, 1, 73, 2, CAST(N'2015-11-04' AS Date), 185, CAST(1.810000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (217, 1, 73, 2, CAST(N'2015-11-04' AS Date), 185, CAST(1.810000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (218, 1, 73, 2, CAST(N'2015-11-04' AS Date), 153, CAST(1.810000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (219, 1, 74, 2, CAST(N'2015-11-04' AS Date), 185, CAST(1.810000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (220, 1, 74, 2, CAST(N'2015-11-04' AS Date), 185, CAST(1.810000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (221, 1, 74, 2, CAST(N'2015-11-04' AS Date), 149, CAST(1.810000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (222, 1, 74, 2, CAST(N'2015-11-04' AS Date), 185, CAST(1.810000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (223, 1, 74, 2, CAST(N'2015-11-04' AS Date), 185, CAST(1.810000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (224, 1, 75, 2, CAST(N'2015-11-04' AS Date), 1193, CAST(0.150000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (225, 1, 75, 2, CAST(N'2015-11-04' AS Date), 81, CAST(0.150000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (226, 1, 76, 2, CAST(N'2015-11-04' AS Date), 10, CAST(0.360000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (227, 1, 77, 2, CAST(N'2015-11-04' AS Date), 10, CAST(0.360000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (228, 1, 78, 2, CAST(N'2015-11-04' AS Date), 35, CAST(0.300000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (229, 1, 79, 2, CAST(N'2015-11-04' AS Date), 600, CAST(0.300000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (230, 1, 79, 2, CAST(N'2015-11-04' AS Date), 669, CAST(0.300000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (231, 1, 80, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.410000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (232, 1, 81, 2, CAST(N'2015-11-04' AS Date), 700, CAST(0.940000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (233, 1, 81, 2, CAST(N'2015-11-04' AS Date), 700, CAST(0.940000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (234, 1, 81, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.940000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (235, 1, 81, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.940000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (236, 1, 81, 2, CAST(N'2015-11-04' AS Date), 49, CAST(0.940000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (237, 1, 82, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.070000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (238, 1, 82, 2, CAST(N'2015-11-04' AS Date), 1820, CAST(0.070000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (239, 1, 83, 2, CAST(N'2015-11-04' AS Date), 200, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (240, 1, 83, 2, CAST(N'2015-11-04' AS Date), 200, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (241, 1, 83, 2, CAST(N'2015-11-04' AS Date), 160, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (242, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (243, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (244, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (245, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (246, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (247, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (248, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (249, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (250, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (251, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (252, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (253, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (254, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (255, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (256, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (257, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (258, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (259, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (260, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (261, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (262, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (263, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (264, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (265, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (266, 1, 83, 2, CAST(N'2015-11-04' AS Date), 140, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (267, 1, 83, 2, CAST(N'2015-11-04' AS Date), 5, CAST(2.840000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (268, 1, 84, 2, CAST(N'2015-11-04' AS Date), 482, CAST(0.170000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (269, 1, 85, 2, CAST(N'2015-11-04' AS Date), 150, CAST(2.420000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (270, 1, 85, 2, CAST(N'2015-11-04' AS Date), 150, CAST(2.420000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (271, 1, 85, 2, CAST(N'2015-11-04' AS Date), 150, CAST(2.420000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (272, 1, 85, 2, CAST(N'2015-11-04' AS Date), 150, CAST(2.420000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (273, 1, 85, 2, CAST(N'2015-11-04' AS Date), 166, CAST(2.420000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (274, 1, 86, 2, CAST(N'2015-11-04' AS Date), 7, CAST(16.610000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (275, 1, 86, 2, CAST(N'2015-11-04' AS Date), 130, CAST(16.610000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (276, 1, 87, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.190000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (277, 1, 88, 2, CAST(N'2015-11-04' AS Date), 1982, CAST(0.300000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (278, 1, 89, 2, CAST(N'2015-11-04' AS Date), 1500, CAST(1.140000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (279, 1, 90, 2, CAST(N'2015-11-04' AS Date), 9, CAST(3.420000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (280, 1, 91, 2, CAST(N'2015-11-04' AS Date), 22, CAST(8.970000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (281, 1, 92, 2, CAST(N'2015-11-04' AS Date), 19, CAST(4.930000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (282, 1, 93, 2, CAST(N'2015-11-04' AS Date), 494, CAST(0.710000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (283, 1, 94, 2, CAST(N'2015-11-04' AS Date), 350, CAST(0.910000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (284, 1, 95, 2, CAST(N'2015-11-04' AS Date), 42, CAST(3.620000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (285, 1, 96, 2, CAST(N'2015-11-04' AS Date), 17, CAST(9.600000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (286, 1, 97, 2, CAST(N'2015-11-04' AS Date), 45, CAST(1.950000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (287, 1, 98, 2, CAST(N'2015-11-04' AS Date), 99, CAST(3.490000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (288, 1, 99, 2, CAST(N'2015-11-04' AS Date), 1000, CAST(0.320000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (289, 1, 99, 2, CAST(N'2015-11-04' AS Date), 8, CAST(0.320000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (290, 1, 100, 2, CAST(N'2015-11-04' AS Date), 86, CAST(3.000000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (291, 1, 101, 2, CAST(N'2015-11-04' AS Date), 314, CAST(1.240000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (292, 1, 102, 2, CAST(N'2015-11-04' AS Date), 1, CAST(9.650000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (293, 1, 53, 2, CAST(N'2015-11-04' AS Date), 180, CAST(0.890000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (294, 1, 103, 2, CAST(N'2015-11-04' AS Date), 5000, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (295, 1, 104, 2, CAST(N'2015-11-04' AS Date), 6000, CAST(0.070000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (296, 1, 105, 2, CAST(N'2015-11-04' AS Date), 2108, CAST(0.020000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (297, 1, 105, 2, CAST(N'2015-11-04' AS Date), 4500, CAST(0.020000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (298, 1, 106, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (299, 1, 107, 2, CAST(N'2015-11-04' AS Date), 3000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (300, 1, 108, 2, CAST(N'2015-11-04' AS Date), 4500, CAST(0.110000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (301, 1, 109, 2, CAST(N'2015-11-04' AS Date), 100, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (302, 1, 110, 2, CAST(N'2015-11-04' AS Date), 2300, CAST(0.100000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (303, 1, 111, 2, CAST(N'2015-11-04' AS Date), 1278, CAST(0.070000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (304, 1, 112, 2, CAST(N'2015-11-04' AS Date), 1000, CAST(0.080000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (305, 1, 113, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (306, 1, 113, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (307, 1, 113, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (308, 1, 113, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (309, 1, 113, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (310, 1, 113, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (311, 1, 113, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (312, 1, 113, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (313, 1, 113, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (314, 1, 113, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (315, 1, 113, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (316, 1, 113, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (317, 1, 113, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (318, 1, 114, 2, CAST(N'2015-11-04' AS Date), 7940, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (319, 1, 114, 2, CAST(N'2015-11-04' AS Date), 4450, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (320, 1, 115, 2, CAST(N'2015-11-04' AS Date), 795, CAST(0.260000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (321, 1, 116, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (322, 1, 116, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (323, 1, 116, 2, CAST(N'2015-11-04' AS Date), 1880, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (324, 1, 116, 2, CAST(N'2015-11-04' AS Date), 200, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (325, 1, 117, 2, CAST(N'2015-11-04' AS Date), 2960, CAST(0.020000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (326, 1, 118, 2, CAST(N'2015-11-04' AS Date), 1300, CAST(0.270000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (327, 1, 118, 2, CAST(N'2015-11-04' AS Date), 1500, CAST(0.270000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (328, 1, 118, 2, CAST(N'2015-11-04' AS Date), 1300, CAST(0.270000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (329, 1, 118, 2, CAST(N'2015-11-04' AS Date), 1500, CAST(0.270000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (330, 1, 119, 2, CAST(N'2015-11-04' AS Date), 1747, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (331, 1, 119, 2, CAST(N'2015-11-04' AS Date), 1975, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (332, 1, 120, 2, CAST(N'2015-11-04' AS Date), 1000, CAST(0.110000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (333, 1, 121, 2, CAST(N'2015-11-04' AS Date), 2500, CAST(0.110000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (334, 1, 121, 2, CAST(N'2015-11-04' AS Date), 1750, CAST(0.110000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (335, 1, 122, 2, CAST(N'2015-11-04' AS Date), 3000, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (336, 1, 122, 2, CAST(N'2015-11-04' AS Date), 2050, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (337, 1, 122, 2, CAST(N'2015-11-04' AS Date), 1655, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (338, 1, 123, 2, CAST(N'2015-11-04' AS Date), 200, CAST(0.150000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (339, 1, 123, 2, CAST(N'2015-11-04' AS Date), 1400, CAST(0.150000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (340, 1, 123, 2, CAST(N'2015-11-04' AS Date), 1389, CAST(0.150000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (341, 1, 124, 2, CAST(N'2015-11-04' AS Date), 1000, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (342, 1, 124, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (343, 1, 125, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (344, 1, 125, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (345, 1, 125, 2, CAST(N'2015-11-04' AS Date), 1724, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (346, 1, 126, 2, CAST(N'2015-11-04' AS Date), 7000, CAST(0.170000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (347, 1, 126, 2, CAST(N'2015-11-04' AS Date), 7000, CAST(0.170000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (348, 1, 126, 2, CAST(N'2015-11-04' AS Date), 7000, CAST(0.170000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (349, 1, 126, 2, CAST(N'2015-11-04' AS Date), 6520, CAST(0.170000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (350, 1, 127, 2, CAST(N'2015-11-04' AS Date), 3000, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (351, 1, 128, 2, CAST(N'2015-11-04' AS Date), 90, CAST(0.470000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (352, 1, 129, 2, CAST(N'2015-11-04' AS Date), 1000, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (353, 1, 130, 2, CAST(N'2015-11-04' AS Date), 1200, CAST(0.240000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (354, 1, 131, 2, CAST(N'2015-11-04' AS Date), 2970, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (355, 1, 132, 2, CAST(N'2015-11-04' AS Date), 2940, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (356, 1, 133, 2, CAST(N'2015-11-04' AS Date), 1220, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (357, 1, 134, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (358, 1, 135, 2, CAST(N'2015-11-04' AS Date), 2670, CAST(0.020000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (359, 1, 135, 2, CAST(N'2015-11-04' AS Date), 3500, CAST(0.020000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (360, 1, 136, 2, CAST(N'2015-11-04' AS Date), 2500, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (361, 1, 136, 2, CAST(N'2015-11-04' AS Date), 50, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (362, 1, 137, 2, CAST(N'2015-11-04' AS Date), 500, CAST(0.170000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (363, 1, 137, 2, CAST(N'2015-11-04' AS Date), 3818, CAST(0.170000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (364, 1, 138, 2, CAST(N'2015-11-04' AS Date), 35, CAST(2.080000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (365, 1, 139, 2, CAST(N'2015-11-04' AS Date), 640, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (366, 1, 140, 2, CAST(N'2015-11-04' AS Date), 1500, CAST(0.070000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (367, 1, 141, 2, CAST(N'2015-11-04' AS Date), 7000, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (368, 1, 142, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.010000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (369, 1, 143, 2, CAST(N'2015-11-04' AS Date), 1500, CAST(0.170000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (370, 1, 143, 2, CAST(N'2015-11-04' AS Date), 3570, CAST(0.170000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (371, 1, 143, 2, CAST(N'2015-11-04' AS Date), 3485, CAST(0.170000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (372, 1, 144, 2, CAST(N'2015-11-04' AS Date), 267, CAST(0.070000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (373, 1, 144, 2, CAST(N'2015-11-04' AS Date), 204, CAST(0.070000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (374, 1, 145, 2, CAST(N'2015-11-04' AS Date), 3000, CAST(0.110000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (375, 1, 146, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (376, 1, 146, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (377, 1, 146, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (378, 1, 147, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (379, 1, 147, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (380, 1, 147, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (381, 1, 1, 2, CAST(N'2015-11-04' AS Date), 1900, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (382, 1, 148, 2, CAST(N'2015-11-04' AS Date), 1995, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (383, 1, 148, 2, CAST(N'2015-11-04' AS Date), 991, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (384, 1, 149, 2, CAST(N'2015-11-04' AS Date), 10000, CAST(0.050000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (385, 1, 150, 2, CAST(N'2015-11-04' AS Date), 120, CAST(0.100000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (386, 1, 151, 2, CAST(N'2015-11-04' AS Date), 3000, CAST(0.110000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (387, 1, 151, 2, CAST(N'2015-11-04' AS Date), 3000, CAST(0.110000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (388, 1, 152, 2, CAST(N'2015-11-04' AS Date), 3000, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (389, 1, 152, 2, CAST(N'2015-11-04' AS Date), 3000, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (390, 1, 152, 2, CAST(N'2015-11-04' AS Date), 2900, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (391, 1, 153, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (392, 1, 153, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (393, 1, 153, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (394, 1, 153, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (395, 1, 154, 2, CAST(N'2015-11-04' AS Date), 1947, CAST(0.070000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (396, 1, 155, 2, CAST(N'2015-11-04' AS Date), 890, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (397, 1, 155, 2, CAST(N'2015-11-04' AS Date), 4999, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (398, 1, 156, 2, CAST(N'2015-11-04' AS Date), 1160, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (399, 1, 157, 2, CAST(N'2015-11-04' AS Date), 5000, CAST(0.020000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (400, 1, 157, 2, CAST(N'2015-11-04' AS Date), 5000, CAST(0.020000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (401, 1, 157, 2, CAST(N'2015-11-04' AS Date), 5000, CAST(0.020000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (402, 1, 157, 2, CAST(N'2015-11-04' AS Date), 4574, CAST(0.020000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (403, 1, 158, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.020000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (404, 1, 159, 2, CAST(N'2015-11-04' AS Date), 67, CAST(0.530000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (405, 1, 160, 2, CAST(N'2015-11-04' AS Date), 2700, CAST(0.020000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (406, 1, 160, 2, CAST(N'2015-11-04' AS Date), 3000, CAST(0.020000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (407, 1, 161, 2, CAST(N'2015-11-04' AS Date), 20000, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (408, 1, 162, 2, CAST(N'2015-11-04' AS Date), 1612, CAST(0.270000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (409, 1, 162, 2, CAST(N'2015-11-04' AS Date), 1650, CAST(0.270000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (410, 1, 162, 2, CAST(N'2015-11-04' AS Date), 1350, CAST(0.270000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (411, 1, 163, 2, CAST(N'2015-11-04' AS Date), 5000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (412, 1, 164, 2, CAST(N'2015-11-04' AS Date), 250, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (413, 1, 164, 2, CAST(N'2015-11-04' AS Date), 4065, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (414, 1, 164, 2, CAST(N'2015-11-04' AS Date), 5000, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (415, 1, 164, 2, CAST(N'2015-11-04' AS Date), 5000, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (416, 1, 165, 2, CAST(N'2015-11-04' AS Date), 9172, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (417, 1, 166, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.080000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (418, 1, 166, 2, CAST(N'2015-11-04' AS Date), 1736, CAST(0.080000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (419, 1, 167, 2, CAST(N'2015-11-04' AS Date), 950, CAST(0.530000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (420, 1, 168, 2, CAST(N'2015-11-04' AS Date), 1715, CAST(0.100000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (421, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (422, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (423, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (424, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (425, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (426, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (427, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (428, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (429, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (430, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (431, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (432, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (433, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (434, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (435, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (436, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (437, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (438, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (439, 1, 169, 2, CAST(N'2015-11-04' AS Date), 800, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (440, 1, 170, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.080000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (441, 1, 170, 2, CAST(N'2015-11-04' AS Date), 600, CAST(0.080000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (442, 1, 170, 2, CAST(N'2015-11-04' AS Date), 1415, CAST(0.080000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (443, 1, 171, 2, CAST(N'2015-11-04' AS Date), 500, CAST(0.080000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (444, 1, 171, 2, CAST(N'2015-11-04' AS Date), 5945, CAST(0.080000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (445, 1, 172, 2, CAST(N'2015-11-04' AS Date), 2313, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (446, 1, 173, 2, CAST(N'2015-11-04' AS Date), 1076, CAST(0.850000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (447, 1, 173, 2, CAST(N'2015-11-04' AS Date), 1000, CAST(0.850000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (448, 1, 173, 2, CAST(N'2015-11-04' AS Date), 1000, CAST(0.850000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (449, 1, 173, 2, CAST(N'2015-11-04' AS Date), 1000, CAST(0.850000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (450, 1, 173, 2, CAST(N'2015-11-04' AS Date), 1000, CAST(0.850000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (451, 1, 173, 2, CAST(N'2015-11-04' AS Date), 1300, CAST(0.850000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (452, 1, 174, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.050000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (453, 1, 174, 2, CAST(N'2015-11-04' AS Date), 3820, CAST(0.050000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (454, 1, 175, 2, CAST(N'2015-11-04' AS Date), 4000, CAST(0.050000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (455, 1, 176, 2, CAST(N'2015-11-04' AS Date), 7600, CAST(0.050000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (456, 1, 177, 2, CAST(N'2015-11-04' AS Date), 2300, CAST(0.030000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (457, 1, 178, 2, CAST(N'2015-11-04' AS Date), 2095, CAST(0.150000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (458, 1, 179, 2, CAST(N'2015-11-04' AS Date), 195, CAST(1.100000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (459, 1, 180, 2, CAST(N'2015-11-04' AS Date), 1865, CAST(0.050000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (460, 1, 181, 2, CAST(N'2015-11-04' AS Date), 6800, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (461, 1, 181, 2, CAST(N'2015-11-04' AS Date), 5200, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (462, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (463, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (464, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (465, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (466, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (467, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (468, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (469, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (470, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (471, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (472, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (473, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (474, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (475, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (476, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (477, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (478, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (479, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (480, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (481, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (482, 1, 181, 2, CAST(N'2015-11-04' AS Date), 2400, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (483, 1, 182, 2, CAST(N'2015-11-04' AS Date), 364, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (484, 1, 182, 2, CAST(N'2015-11-04' AS Date), 356, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (485, 1, 182, 2, CAST(N'2015-11-04' AS Date), 347, CAST(0.060000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (486, 1, 183, 2, CAST(N'2015-11-04' AS Date), 272, CAST(0.140000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (487, 1, 183, 2, CAST(N'2015-11-04' AS Date), 278, CAST(0.140000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (488, 1, 183, 2, CAST(N'2015-11-04' AS Date), 282, CAST(0.140000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (489, 1, 183, 2, CAST(N'2015-11-04' AS Date), 2766, CAST(0.140000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (490, 1, 184, 2, CAST(N'2015-11-04' AS Date), 38, CAST(4.000000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (491, 1, 185, 2, CAST(N'2015-11-04' AS Date), 3000, CAST(0.260000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (492, 1, 186, 2, CAST(N'2015-11-04' AS Date), 470, CAST(0.260000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (493, 1, 187, 2, CAST(N'2015-11-04' AS Date), 10000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (494, 1, 188, 2, CAST(N'2015-11-04' AS Date), 15000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (495, 1, 188, 2, CAST(N'2015-11-04' AS Date), 15000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (496, 1, 189, 2, CAST(N'2015-11-04' AS Date), 199, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (497, 1, 189, 2, CAST(N'2015-11-04' AS Date), 223, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (498, 1, 189, 2, CAST(N'2015-11-04' AS Date), 206, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (499, 1, 189, 2, CAST(N'2015-11-04' AS Date), 34, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (500, 1, 189, 2, CAST(N'2015-11-04' AS Date), 249, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (501, 1, 189, 2, CAST(N'2015-11-04' AS Date), 41, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (502, 1, 190, 2, CAST(N'2015-11-04' AS Date), 671, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (503, 1, 190, 2, CAST(N'2015-11-04' AS Date), 684, CAST(0.120000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (504, 1, 191, 2, CAST(N'2015-11-04' AS Date), 355, CAST(0.130000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (505, 1, 192, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.070000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (506, 1, 192, 2, CAST(N'2015-11-04' AS Date), 1304, CAST(0.070000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (507, 1, 193, 2, CAST(N'2015-11-04' AS Date), 257, CAST(0.150000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (508, 1, 193, 2, CAST(N'2015-11-04' AS Date), 235, CAST(0.150000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (509, 1, 193, 2, CAST(N'2015-11-04' AS Date), 182, CAST(0.150000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (510, 1, 194, 2, CAST(N'2015-11-04' AS Date), 200, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (511, 1, 195, 2, CAST(N'2015-11-04' AS Date), 8, CAST(40.740000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (512, 1, 196, 2, CAST(N'2015-11-04' AS Date), 3, CAST(8.790000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (513, 1, 197, 2, CAST(N'2015-11-04' AS Date), 750, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (514, 1, 197, 2, CAST(N'2015-11-04' AS Date), 750, CAST(0.290000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (515, 1, 198, 2, CAST(N'2015-11-04' AS Date), 32, CAST(1.550000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (516, 1, 199, 2, CAST(N'2015-11-04' AS Date), 244, CAST(0.600000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (517, 1, 200, 2, CAST(N'2015-11-04' AS Date), 616, CAST(0.870000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (518, 1, 201, 2, CAST(N'2015-11-04' AS Date), 1380, CAST(0.400000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (519, 1, 202, 2, CAST(N'2015-11-04' AS Date), 500, CAST(0.960000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (520, 1, 203, 2, CAST(N'2015-11-04' AS Date), 100, CAST(8.530000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (521, 1, 204, 2, CAST(N'2015-11-04' AS Date), 992, CAST(0.980000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (522, 1, 205, 2, CAST(N'2015-11-04' AS Date), 500, CAST(0.600000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (523, 1, 206, 2, CAST(N'2015-11-04' AS Date), 10, CAST(11.920000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (524, 1, 206, 2, CAST(N'2015-11-04' AS Date), 2, CAST(11.920000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (525, 1, 207, 2, CAST(N'2015-11-04' AS Date), 954, CAST(0.460000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (526, 1, 208, 2, CAST(N'2015-11-04' AS Date), 4, CAST(2.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (527, 1, 209, 2, CAST(N'2015-11-04' AS Date), 249, CAST(0.080000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (528, 1, 210, 2, CAST(N'2015-11-04' AS Date), 976, CAST(0.050000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (529, 1, 210, 2, CAST(N'2015-11-04' AS Date), 975, CAST(0.050000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (530, 1, 211, 2, CAST(N'2015-11-04' AS Date), 150, CAST(2.490000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (531, 1, 212, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (532, 1, 213, 2, CAST(N'2015-11-04' AS Date), 100, CAST(0.580000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (533, 1, 214, 2, CAST(N'2015-11-04' AS Date), 80, CAST(3.460000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (534, 1, 214, 2, CAST(N'2015-11-04' AS Date), 80, CAST(3.460000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (535, 1, 214, 2, CAST(N'2015-11-04' AS Date), 80, CAST(3.460000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (536, 1, 214, 2, CAST(N'2015-11-04' AS Date), 80, CAST(3.460000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (537, 1, 214, 2, CAST(N'2015-11-04' AS Date), 80, CAST(3.460000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (538, 1, 214, 2, CAST(N'2015-11-04' AS Date), 80, CAST(3.460000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (539, 1, 214, 2, CAST(N'2015-11-04' AS Date), 80, CAST(3.460000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (540, 1, 214, 2, CAST(N'2015-11-04' AS Date), 80, CAST(3.460000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (541, 1, 215, 2, CAST(N'2015-11-04' AS Date), 1500, CAST(0.070000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (542, 1, 216, 2, CAST(N'2015-11-04' AS Date), 837, CAST(0.180000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (543, 1, 216, 2, CAST(N'2015-11-04' AS Date), 8, CAST(0.180000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (544, 1, 216, 2, CAST(N'2015-11-04' AS Date), 900, CAST(0.180000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (545, 1, 217, 2, CAST(N'2015-11-04' AS Date), 1048, CAST(0.130000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (546, 1, 218, 2, CAST(N'2015-11-04' AS Date), 700, CAST(1.450000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (547, 1, 219, 2, CAST(N'2015-11-04' AS Date), 5, CAST(0.250000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (548, 1, 220, 2, CAST(N'2015-11-04' AS Date), 200, CAST(0.140000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (549, 1, 221, 2, CAST(N'2015-11-04' AS Date), 2915, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (550, 1, 222, 2, CAST(N'2015-11-04' AS Date), 2000, CAST(0.040000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (551, 1, 223, 2, CAST(N'2015-11-04' AS Date), 900, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (552, 1, 223, 2, CAST(N'2015-11-04' AS Date), 900, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (553, 1, 223, 2, CAST(N'2015-11-04' AS Date), 900, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (554, 1, 224, 2, CAST(N'2015-11-04' AS Date), 618, CAST(0.160000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (555, 1, 225, 2, CAST(N'2015-11-04' AS Date), 88, CAST(0.200000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (556, 1, 225, 2, CAST(N'2015-11-04' AS Date), 977, CAST(0.090000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (557, 1, 226, 2, CAST(N'2015-11-04' AS Date), 214, CAST(10.670000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (558, 1, 227, 2, CAST(N'2015-11-04' AS Date), 345, CAST(2.200000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (559, 1, 227, 2, CAST(N'2015-11-04' AS Date), 194, CAST(2.200000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (560, 1, 228, 2, CAST(N'2015-11-04' AS Date), 835, CAST(0.360000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (561, 1, 229, 2, CAST(N'2015-11-04' AS Date), 340, CAST(1.050000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (562, 1, 230, 2, CAST(N'2015-11-04' AS Date), 20, CAST(9.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (563, 1, 230, 2, CAST(N'2015-11-04' AS Date), 40, CAST(9.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (564, 1, 230, 2, CAST(N'2015-11-04' AS Date), 40, CAST(9.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (565, 1, 230, 2, CAST(N'2015-11-04' AS Date), 40, CAST(9.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (566, 1, 230, 2, CAST(N'2015-11-04' AS Date), 40, CAST(9.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (567, 1, 230, 2, CAST(N'2015-11-04' AS Date), 40, CAST(9.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (568, 1, 230, 2, CAST(N'2015-11-04' AS Date), 40, CAST(9.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (569, 1, 230, 2, CAST(N'2015-11-04' AS Date), 40, CAST(9.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (570, 1, 230, 2, CAST(N'2015-11-04' AS Date), 40, CAST(9.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (571, 1, 230, 2, CAST(N'2015-11-04' AS Date), 40, CAST(9.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (572, 1, 230, 2, CAST(N'2015-11-04' AS Date), 20, CAST(9.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (573, 1, 230, 2, CAST(N'2015-11-04' AS Date), 20, CAST(9.280000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (574, 1, 231, 2, CAST(N'2015-11-04' AS Date), 14000, CAST(0.000000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (575, 1, 231, 2, CAST(N'2015-11-04' AS Date), 14000, CAST(0.000000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (576, 1, 231, 2, CAST(N'2015-11-04' AS Date), 14000, CAST(0.000000 AS Decimal(18, 6)), N'', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (577, 3, 232, 4, CAST(N'2015-11-04' AS Date), 10, CAST(0.119900 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (578, 3, 182, 4, CAST(N'2015-11-04' AS Date), 10043, CAST(0.056100 AS Decimal(18, 6)), N'TTI              ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (579, 3, 233, 4, CAST(N'2015-11-04' AS Date), 8430, CAST(0.098000 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (580, 3, 4, 4, CAST(N'2015-11-04' AS Date), 5512, CAST(0.263700 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (581, 3, 234, 4, CAST(N'2015-11-04' AS Date), 300, CAST(0.182700 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (582, 3, 235, 4, CAST(N'2015-11-04' AS Date), 101, CAST(0.000100 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (583, 3, 236, 4, CAST(N'2015-11-04' AS Date), 59, CAST(1.420000 AS Decimal(18, 6)), N'LADD IND.        ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (584, 3, 237, 4, CAST(N'2015-11-04' AS Date), 75, CAST(1.400000 AS Decimal(18, 6)), N'TYCO AMP         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (585, 3, 27, 4, CAST(N'2015-11-04' AS Date), 104, CAST(0.550000 AS Decimal(18, 6)), N'LADD IND.        ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (586, 3, 238, 4, CAST(N'2015-11-04' AS Date), 187, CAST(0.630000 AS Decimal(18, 6)), N'ROME             ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (587, 3, 239, 4, CAST(N'2015-11-04' AS Date), 29, CAST(4.750000 AS Decimal(18, 6)), N'CARLTON-BATES    ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (588, 3, 240, 4, CAST(N'2015-11-04' AS Date), 2060, CAST(0.062000 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (589, 3, 241, 4, CAST(N'2015-11-04' AS Date), 2000, CAST(0.018000 AS Decimal(18, 6)), N'TTI              ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (590, 3, 242, 4, CAST(N'2015-11-04' AS Date), 525, CAST(0.474400 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (591, 3, 243, 4, CAST(N'2015-11-04' AS Date), 25284, CAST(0.009300 AS Decimal(18, 6)), N'GRAYLINE         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (592, 3, 244, 4, CAST(N'2015-11-04' AS Date), 1, CAST(8.150000 AS Decimal(18, 6)), N'PEI              ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (593, 3, 245, 4, CAST(N'2015-11-04' AS Date), 2000, CAST(0.164100 AS Decimal(18, 6)), N'GRAYLINE         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (594, 3, 246, 4, CAST(N'2015-11-04' AS Date), 5000, CAST(0.057400 AS Decimal(18, 6)), N'TYCO AMP         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (595, 3, 247, 4, CAST(N'2015-11-04' AS Date), 4464, CAST(0.096100 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (596, 3, 248, 4, CAST(N'2015-11-04' AS Date), 2490, CAST(0.077900 AS Decimal(18, 6)), N'HEILIND          ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (597, 3, 233, 4, CAST(N'2015-11-04' AS Date), 2830, CAST(0.098000 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (598, 3, 249, 4, CAST(N'2015-11-04' AS Date), 4620, CAST(0.138100 AS Decimal(18, 6)), N'TYCO AMP         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (599, 3, 250, 4, CAST(N'2015-11-04' AS Date), 7340, CAST(0.103000 AS Decimal(18, 6)), N'SUMITOMO         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (600, 3, 251, 4, CAST(N'2015-11-04' AS Date), 422, CAST(0.900000 AS Decimal(18, 6)), N'LADD IND.        ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (601, 3, 252, 4, CAST(N'2015-11-04' AS Date), 7161, CAST(0.029500 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (602, 3, 244, 4, CAST(N'2015-11-04' AS Date), 17, CAST(8.150000 AS Decimal(18, 6)), N'PEI              ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (603, 3, 253, 4, CAST(N'2015-11-04' AS Date), 35000, CAST(0.009000 AS Decimal(18, 6)), N'LXI              ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (604, 3, 254, 4, CAST(N'2015-11-04' AS Date), 1500, CAST(0.105600 AS Decimal(18, 6)), N'SCHLEMMER US     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (605, 3, 255, 4, CAST(N'2015-11-04' AS Date), 96, CAST(0.000000 AS Decimal(18, 6)), N'VENDOR UNKOWN    ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (606, 3, 256, 4, CAST(N'2015-11-04' AS Date), 500, CAST(0.910000 AS Decimal(18, 6)), N'LADD IND.        ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (607, 3, 245, 4, CAST(N'2015-11-04' AS Date), 2976, CAST(0.164100 AS Decimal(18, 6)), N'GRAYLINE         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (608, 3, 257, 4, CAST(N'2015-11-04' AS Date), 2450, CAST(0.239100 AS Decimal(18, 6)), N'HEILIND          ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (609, 3, 249, 4, CAST(N'2015-11-04' AS Date), 597, CAST(0.138100 AS Decimal(18, 6)), N'TYCO AMP         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (610, 3, 241, 4, CAST(N'2015-11-04' AS Date), 3381, CAST(0.018000 AS Decimal(18, 6)), N'TTI              ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (611, 3, 258, 4, CAST(N'2015-11-04' AS Date), 13000, CAST(0.020100 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (612, 3, 259, 4, CAST(N'2015-11-04' AS Date), 627, CAST(1.161500 AS Decimal(18, 6)), N'TYCO AMP         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (613, 3, 182, 4, CAST(N'2015-11-04' AS Date), 9038, CAST(0.056100 AS Decimal(18, 6)), N'TTI              ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (614, 3, 260, 4, CAST(N'2015-11-04' AS Date), 180, CAST(0.196800 AS Decimal(18, 6)), N'GRIFFITH         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (615, 3, 261, 4, CAST(N'2015-11-04' AS Date), 500, CAST(0.118100 AS Decimal(18, 6)), N'SCHLEMMER US     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (616, 3, 262, 4, CAST(N'2015-11-04' AS Date), 500, CAST(0.025800 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (617, 3, 263, 4, CAST(N'2015-11-04' AS Date), 1, CAST(1.080000 AS Decimal(18, 6)), N'LADD IND.        ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (618, 3, 264, 4, CAST(N'2015-11-04' AS Date), 29000, CAST(0.052700 AS Decimal(18, 6)), N'TYCO AMP         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (619, 3, 265, 4, CAST(N'2015-11-04' AS Date), 6000, CAST(0.086900 AS Decimal(18, 6)), N'TYCO AMP         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (620, 3, 266, 4, CAST(N'2015-11-04' AS Date), 140, CAST(0.196100 AS Decimal(18, 6)), N'DIGI-KEY         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (621, 3, 267, 4, CAST(N'2015-11-04' AS Date), 1000, CAST(0.063300 AS Decimal(18, 6)), N'SCHLEMMER US     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (622, 3, 268, 4, CAST(N'2015-11-04' AS Date), 24, CAST(0.779100 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (623, 3, 269, 4, CAST(N'2015-11-04' AS Date), 100, CAST(2.123100 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (624, 3, 259, 4, CAST(N'2015-11-04' AS Date), 9, CAST(1.161500 AS Decimal(18, 6)), N'TYCO AMP         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (625, 3, 270, 4, CAST(N'2015-11-04' AS Date), 130, CAST(1.015400 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (626, 3, 271, 4, CAST(N'2015-11-04' AS Date), 46, CAST(2.044000 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (627, 3, 220, 4, CAST(N'2015-11-04' AS Date), 61, CAST(0.140500 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (628, 3, 272, 4, CAST(N'2015-11-04' AS Date), 5000, CAST(0.074500 AS Decimal(18, 6)), N'TYCO AMP         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (629, 3, 261, 4, CAST(N'2015-11-04' AS Date), 500, CAST(0.118100 AS Decimal(18, 6)), N'SCHLEMMER US     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (630, 3, 273, 4, CAST(N'2015-11-04' AS Date), 100, CAST(0.144200 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (631, 3, 274, 4, CAST(N'2015-11-04' AS Date), 2455, CAST(0.330000 AS Decimal(18, 6)), N'FEDERAL MOGUL    ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (632, 3, 275, 4, CAST(N'2015-11-04' AS Date), 970, CAST(0.697400 AS Decimal(18, 6)), N'FEDERAL MOGUL    ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (633, 3, 276, 4, CAST(N'2015-11-04' AS Date), 1180, CAST(0.160000 AS Decimal(18, 6)), N'HEILIND          ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (634, 3, 277, 4, CAST(N'2015-11-04' AS Date), 12, CAST(12.270300 AS Decimal(18, 6)), N'TTI              ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (635, 3, 278, 4, CAST(N'2015-11-04' AS Date), 6000, CAST(0.012000 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (636, 3, 279, 4, CAST(N'2015-11-04' AS Date), 99, CAST(18.500000 AS Decimal(18, 6)), N'HOLT CAT         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (637, 3, 280, 4, CAST(N'2015-11-04' AS Date), 96, CAST(0.064300 AS Decimal(18, 6)), N'SCHLEMMER US     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (638, 3, 281, 4, CAST(N'2015-11-04' AS Date), 149, CAST(0.214700 AS Decimal(18, 6)), N'FRAENKISCHE      ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (639, 3, 263, 4, CAST(N'2015-11-04' AS Date), 8, CAST(1.080000 AS Decimal(18, 6)), N'LADD IND.        ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (640, 3, 267, 4, CAST(N'2015-11-04' AS Date), 724, CAST(0.063300 AS Decimal(18, 6)), N'SCHLEMMER US     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (641, 3, 282, 4, CAST(N'2015-11-04' AS Date), 54, CAST(0.940000 AS Decimal(18, 6)), N'LADD IND.        ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (642, 3, 269, 4, CAST(N'2015-11-04' AS Date), 18, CAST(2.123100 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (643, 3, 283, 4, CAST(N'2015-11-04' AS Date), 100, CAST(0.101000 AS Decimal(18, 6)), N'HEILIND          ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (644, 3, 284, 4, CAST(N'2015-11-04' AS Date), 10, CAST(2.860000 AS Decimal(18, 6)), N'CARLTON-BATES    ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (645, 3, 285, 4, CAST(N'2015-11-04' AS Date), 24, CAST(0.187000 AS Decimal(18, 6)), N'PROSPECT         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (646, 3, 286, 4, CAST(N'2015-11-04' AS Date), 98, CAST(0.042400 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (647, 3, 287, 4, CAST(N'2015-11-04' AS Date), 5, CAST(7.060000 AS Decimal(18, 6)), N'TYCO AMP         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (648, 3, 288, 4, CAST(N'2015-11-04' AS Date), 4, CAST(0.822800 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (649, 3, 277, 4, CAST(N'2015-11-04' AS Date), 16, CAST(12.270300 AS Decimal(18, 6)), N'TTI              ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (650, 3, 289, 4, CAST(N'2015-11-04' AS Date), 42, CAST(0.158000 AS Decimal(18, 6)), N'TAPEWORKS        ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (651, 3, 290, 4, CAST(N'2015-11-04' AS Date), 2592, CAST(0.030700 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (652, 3, 291, 4, CAST(N'2015-11-04' AS Date), 124, CAST(0.361200 AS Decimal(18, 6)), N'CARLTON-BATES    ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (653, 3, 292, 4, CAST(N'2015-11-04' AS Date), 105, CAST(0.095800 AS Decimal(18, 6)), N'SCHLEMMER US     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (654, 3, 293, 4, CAST(N'2015-11-04' AS Date), 49, CAST(0.157400 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (655, 3, 254, 4, CAST(N'2015-11-04' AS Date), 59, CAST(0.105600 AS Decimal(18, 6)), N'SCHLEMMER US     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (656, 3, 261, 4, CAST(N'2015-11-04' AS Date), 464, CAST(0.118100 AS Decimal(18, 6)), N'SCHLEMMER US     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (657, 3, 273, 4, CAST(N'2015-11-04' AS Date), 5, CAST(0.144200 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (658, 3, 294, 4, CAST(N'2015-11-04' AS Date), 3000, CAST(0.119000 AS Decimal(18, 6)), N'SCHLEMMER US     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (659, 3, 254, 4, CAST(N'2015-11-04' AS Date), 1500, CAST(0.105600 AS Decimal(18, 6)), N'SCHLEMMER US     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (660, 3, 295, 4, CAST(N'2015-11-04' AS Date), 1135, CAST(0.184000 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (661, 3, 296, 4, CAST(N'2015-11-04' AS Date), 711, CAST(0.230300 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (662, 3, 297, 4, CAST(N'2015-11-04' AS Date), 250, CAST(1.717200 AS Decimal(18, 6)), N'CARLTON-BATES    ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (663, 3, 298, 4, CAST(N'2015-11-04' AS Date), 10100, CAST(0.261100 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (664, 3, 299, 4, CAST(N'2015-11-04' AS Date), 2000, CAST(0.210300 AS Decimal(18, 6)), N'AUTOELECTRIC     ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (665, 3, 300, 4, CAST(N'2015-11-04' AS Date), 28, CAST(5.310000 AS Decimal(18, 6)), N'LADD IND.        ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (666, 3, 301, 4, CAST(N'2015-11-04' AS Date), 40, CAST(2.310000 AS Decimal(18, 6)), N'LADD IND.        ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (667, 3, 302, 4, CAST(N'2015-11-04' AS Date), 2416, CAST(0.070000 AS Decimal(18, 6)), N'CARLTON-BATES    ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (668, 3, 303, 4, CAST(N'2015-11-04' AS Date), 4795, CAST(0.054300 AS Decimal(18, 6)), N'CARLTON-BATES    ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (669, 3, 304, 4, CAST(N'2015-11-04' AS Date), 218, CAST(0.189400 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (670, 3, 305, 4, CAST(N'2015-11-04' AS Date), 1100, CAST(0.193000 AS Decimal(18, 6)), N'HEILIND          ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (671, 3, 306, 4, CAST(N'2015-11-04' AS Date), 585, CAST(1.522800 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (672, 3, 307, 4, CAST(N'2015-11-04' AS Date), 6600, CAST(0.330900 AS Decimal(18, 6)), N'TYCO AMP         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (673, 3, 110, 4, CAST(N'2015-11-04' AS Date), 5800, CAST(0.102900 AS Decimal(18, 6)), N'TYCO AMP         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (674, 3, 308, 4, CAST(N'2015-11-04' AS Date), 15230, CAST(0.187700 AS Decimal(18, 6)), N'TTI              ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (675, 3, 309, 4, CAST(N'2015-11-04' AS Date), 49883, CAST(0.009000 AS Decimal(18, 6)), N'GRAYLINE         ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (676, 3, 232, 4, CAST(N'2015-11-04' AS Date), 5, CAST(0.119900 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (677, 3, 232, 2, CAST(N'2015-12-14' AS Date), 50, CAST(0.110000 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (678, 3, 136, 2, CAST(N'2015-12-14' AS Date), 55, CAST(0.040000 AS Decimal(18, 6)), N'Any Manufacturer', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (679, 3, 232, 2, CAST(N'2015-12-14' AS Date), 50, CAST(0.110000 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (680, 3, 136, 2, CAST(N'2015-12-14' AS Date), 25, CAST(0.050000 AS Decimal(18, 6)), N'Any Manufacturer', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (681, 3, 232, 2, CAST(N'2016-01-29' AS Date), 25, CAST(0.110000 AS Decimal(18, 6)), N'POWER & SIGNAL   ', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (682, 3, 136, 2, CAST(N'2016-01-29' AS Date), 5, CAST(0.040000 AS Decimal(18, 6)), N'Any Manufacturer', NULL, NULL, NULL)

INSERT [dbo].[PurchaseHistory] ([Id], [Vendor_Id], [Item_Master_Id], [Rectype], [TransDate], [Quantity], [UnitPrice], [Manufacturer], [QuoteResponse], [ResponseDate], [LotNumber]) VALUES (683, 3, 136, 2, CAST(N'2016-01-29' AS Date), 20, CAST(0.040000 AS Decimal(18, 6)), N'Any Manufacturer', NULL, NULL, NULL)

SET IDENTITY_INSERT [dbo].[PurchaseHistory] OFF

SET IDENTITY_INSERT [dbo].[PurchasePending] ON 


INSERT [dbo].[PurchasePending] ([Id], [ItemNumber], [Description], [Vendor_Id], [Quantity], [UnitPrice], [RequestDate], [Manufacturer], [Item_Master_Id]) VALUES (1006, N'12015301', N'Terminal 12015301                  ', 1, 25, CAST(0.120000 AS Decimal(18, 6)), CAST(N'2016-03-06' AS Date), N'Any Manufacturer', 108)

INSERT [dbo].[PurchasePending] ([Id], [ItemNumber], [Description], [Vendor_Id], [Quantity], [UnitPrice], [RequestDate], [Manufacturer], [Item_Master_Id]) VALUES (1007, N'DT04-12PB-P021', N'Conn 12way Ladd DT04-12PB-P021     ', 1, 150, CAST(5.500000 AS Decimal(18, 6)), CAST(N'2016-02-29' AS Date), N'Any Manufacturer', 52)

INSERT [dbo].[PurchasePending] ([Id], [ItemNumber], [Description], [Vendor_Id], [Quantity], [UnitPrice], [RequestDate], [Manufacturer], [Item_Master_Id]) VALUES (1008, N'09 4413 11', N'Conn 3way Kostal 09 4413 11        ', 1, 2000, CAST(0.250000 AS Decimal(18, 6)), CAST(N'2016-02-29' AS Date), N'AUTOELECTRIC     ', 4)

INSERT [dbo].[PurchasePending] ([Id], [ItemNumber], [Description], [Vendor_Id], [Quantity], [UnitPrice], [RequestDate], [Manufacturer], [Item_Master_Id]) VALUES (1009, N'3 334 485 045', N'Conn 5way Bosch 3 334 485 045      ', 1, 50, CAST(0.400000 AS Decimal(18, 6)), CAST(N'2016-02-29' AS Date), N'Any Manufacturer', 7)

INSERT [dbo].[PurchasePending] ([Id], [ItemNumber], [Description], [Vendor_Id], [Quantity], [UnitPrice], [RequestDate], [Manufacturer], [Item_Master_Id]) VALUES (1010, N'HD36-24-19SN', N'Conn 19way Deutsch HD36-24-19SN    ', 1, 25, CAST(8.600000 AS Decimal(18, 6)), CAST(N'2016-02-29' AS Date), N'Any Manufacturer', 10)

INSERT [dbo].[PurchasePending] ([Id], [ItemNumber], [Description], [Vendor_Id], [Quantity], [UnitPrice], [RequestDate], [Manufacturer], [Item_Master_Id]) VALUES (2007, N'12015909', N'3/8Ring P&S 12015909               ', NULL, 100, CAST(0.000000 AS Decimal(18, 6)), CAST(N'2016-03-06' AS Date), N'', 232)

INSERT [dbo].[PurchasePending] ([Id], [ItemNumber], [Description], [Vendor_Id], [Quantity], [UnitPrice], [RequestDate], [Manufacturer], [Item_Master_Id]) VALUES (2008, N'12020663', N'Tape on Clip 12020663              ', 4, 200, CAST(0.000200 AS Decimal(18, 6)), CAST(N'2016-03-20' AS Date), N'POWER & SIGNAL   ', 235)

SET IDENTITY_INSERT [dbo].[PurchasePending] OFF

SET IDENTITY_INSERT [dbo].[Template_Item] ON 


INSERT [dbo].[Template_Item] ([Id], [TemplateName], [Template], [Vendor_Id], [Source]) VALUES (1, N'ABC Import', N'<Template xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Delimiter>,</Delimiter>
  <SkipLines>1</SkipLines>
  <Field>
    <string>Part Number</string>
    <string>Skip</string>
    <string>Skip</string>
    <string>Skip</string>
    <string>Int P/N</string>
    <string>Quantity</string>
    <string>Description</string>
    <string>Cost</string>
    <string>Skip</string>
    <string>Skip</string>
    <string>Skip</string>
    <string>Skip</string>
  </Field>
</Template>', 1, N'IMPORT')

INSERT [dbo].[Template_Item] ([Id], [TemplateName], [Template], [Vendor_Id], [Source]) VALUES (2, N'DEF Import', N'<Template xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Delimiter>,</Delimiter>
  <SkipLines>1</SkipLines>
  <Field>
    <string>Part Number</string>
    <string>Skip</string>
    <string>Skip</string>
    <string>Int P/N</string>
    <string>Quantity</string>
    <string>Description</string>
    <string>Manufacturer</string>
    <string>Cost</string>
    <string>Skip</string>
    <string>Skip</string>
    <string>Skip</string>
    <string>Skip</string>
  </Field>
</Template>', 3, N'IMPORT')

INSERT [dbo].[Template_Item] ([Id], [TemplateName], [Template], [Vendor_Id], [Source]) VALUES (3, N'GHI Import', N'<Template xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Delimiter>,</Delimiter>
  <SkipLines>1</SkipLines>
  <Field>
    <string>Part Number</string>
    <string>Skip</string>
    <string>Skip</string>
    <string>Int P/N</string>
    <string>Quantity</string>
    <string>Description</string>
    <string>Manufacturer</string>
    <string>Cost</string>
    <string>Skip</string>
    <string>Skip</string>
    <string>Skip</string>
    <string>Skip</string>
  </Field>
</Template>', 4, N'IMPORT')

SET IDENTITY_INSERT [dbo].[Template_Item] OFF

SET IDENTITY_INSERT [dbo].[Client] ON 


INSERT [dbo].[Client] ([Id], [Clientname], [CageCode], [SICCode], [Status], [CompanyType], [Description], [changedFlag], [SalesTaxRate], [NextPONumber], [NextSONumber], [SharedImageFolder]) VALUES (1, N'Demo Inventory', N'DI0001', N'54321', N'LIVE', NULL, N'Hard to find parts', NULL, CAST(0.0850 AS Decimal(18, 4)), 12, 23, N'N:\BLS Shared Images')

SET IDENTITY_INSERT [dbo].[Client] OFF

SET IDENTITY_INSERT [dbo].[Reminders] ON 


INSERT [dbo].[Reminders] ([Id], [Note], [ReminderDateTime], [ReminderType], [EndDateTime], [pattern], [User_Id]) VALUES (2, N'call tom', CAST(N'2016-01-15 00:00:00.000' AS DateTime), 2, CAST(N'2016-01-15 00:30:00.000' AS DateTime), 0, 1)

INSERT [dbo].[Reminders] ([Id], [Note], [ReminderDateTime], [ReminderType], [EndDateTime], [pattern], [User_Id]) VALUES (4, N'Status meeting', CAST(N'2016-01-26 09:00:00.000' AS DateTime), 2, CAST(N'2016-01-26 09:30:00.000' AS DateTime), 0, 1)

INSERT [dbo].[Reminders] ([Id], [Note], [ReminderDateTime], [ReminderType], [EndDateTime], [pattern], [User_Id]) VALUES (6, N'call fred', CAST(N'2016-01-26 11:00:00.000' AS DateTime), 3, CAST(N'2016-01-26 11:30:00.000' AS DateTime), 0, 2)

INSERT [dbo].[Reminders] ([Id], [Note], [ReminderDateTime], [ReminderType], [EndDateTime], [pattern], [User_Id]) VALUES (7, N'Call list', CAST(N'2016-02-18 08:00:00.000' AS DateTime), 2, CAST(N'2016-02-18 08:30:00.000' AS DateTime), 0, 1)

SET IDENTITY_INSERT [dbo].[Reminders] OFF

SET IDENTITY_INSERT [dbo].[Reports] ON 


INSERT [dbo].[Reports] ([id], [ReportName], [SubSystem], [ReportFileName]) VALUES (1, N'Master Item List', N'Inventory', N'Master Item List')

INSERT [dbo].[Reports] ([id], [ReportName], [SubSystem], [ReportFileName]) VALUES (2, N'Purchase Order', N'Purchasing', N'PurchaseOrder')

SET IDENTITY_INSERT [dbo].[Reports] OFF

