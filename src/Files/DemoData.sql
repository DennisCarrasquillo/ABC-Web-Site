/****** Object:  Table [dbo].[Reports]    Script Date: 10/26/2015 13:18:53 ******/
USE [ABCInventory]
SET IDENTITY_INSERT [Reports] ON
INSERT [Reports] ([id], [ReportName], [SubSystem], [ReportFileName]) VALUES (1, N'Master Item List', N'Inventory', N'Master Item List')
INSERT [Reports] ([id], [ReportName], [SubSystem], [ReportFileName]) VALUES (2, N'Purchase Order', N'Purchasing', N'PurchaseOrder')
SET IDENTITY_INSERT [Reports] OFF
