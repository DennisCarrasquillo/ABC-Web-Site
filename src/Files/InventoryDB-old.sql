USE [BLSInventory]
CREATE LOGIN &UserId WITH PASSWORD='&Password'

CREATE USER [&UserId] FOR LOGIN [&UserId] WITH DEFAULT_SCHEMA=[dbo]

ALTER ROLE [db_owner] ADD MEMBER [&UserId]

/****** Object:  Table [dbo].[Addresses]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Addresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address1] [nvarchar](255) NOT NULL,
	[Address2] [nvarchar](255) NULL,
	[City] [nvarchar](128) NOT NULL,
	[State] [nvarchar](12) NOT NULL,
	[Province] [nvarchar](40) NULL,
	[Country] [nvarchar](40) NULL,
	[PostalCode] [nvarchar](20) NOT NULL,
	[AddressType] [int] NULL,
	[Contact_Id] [int] NULL,
	[Warehouse_Id] [int] NULL,
	[Customer_Id] [int] NULL,
	[Vendor_Id] [int] NULL,
	[Client_Id] [int] NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Bins]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Bins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BinNumber] [int] NOT NULL,
	[Width] [decimal](18, 0) NOT NULL,
	[Shelf_Id] [int] NOT NULL,
 CONSTRAINT [PK_Bins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Category]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Client]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Clientname] [nvarchar](max) NOT NULL,
	[CageCode] [nvarchar](max) NULL,
	[SICCode] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NOT NULL,
	[CompanyType] [int] NULL,
	[Description] [varchar](255) NULL,
	[changedFlag] [bit] NULL CONSTRAINT [DF_Client_changedFlag]  DEFAULT ((0)),
	[SalesTaxRate] [decimal](18, 4) NULL,
	[NextPONumber] [int] NULL,
	[NextSONumber] [int] NULL,
	[SharedImageFolder] [nvarchar](255) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[ColorStyles]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[ColorStyles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[Style] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ColorStyles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[Contacts]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](128) NULL,
	[ContactName] [nvarchar](128) NOT NULL,
	[Gender] [int] NULL,
	[Phone] [nvarchar](20) NULL,
	[CellPhone] [nvarchar](20) NULL,
	[Fax] [nvarchar](20) NULL,
	[Email] [nvarchar](255) NULL,
	[ContactType] [int] NULL,
	[Vendor_Id] [int] NULL,
	[Customer_Id] [int] NULL,
	[Salesman_Id] [int] NULL,
	[User_Id] [int] NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Customer]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](128) NOT NULL,
	[CustomerType] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[SOHeaders_Id] [int] NULL,
	[Salesman_Id] [int] NULL,
	[Cage] [varchar](20) NULL,
	[SICCode] [varchar](20) NULL,
	[NAICCode] [varchar](20) NULL,
	[Account] [varchar](20) NULL,
	[CreidtLimit] [decimal](18, 2) NULL,
	[ReSeller] [bit] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[dictionary]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[dictionary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubSystem] [nvarchar](50) NOT NULL,
	[TableName] [varchar](50) NOT NULL,
	[KeryField] [varchar](20) NOT NULL,
 CONSTRAINT [PK_dictionary] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[FloorPlans]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[FloorPlans](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Warehouse_Id] [int] NOT NULL,
 CONSTRAINT [PK_FloorPlans] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[FrequencyDiscounts]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[FrequencyDiscounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Frequency] [int] NOT NULL,
	[DiscountPercent] [decimal](8, 4) NOT NULL,
	[Item_Master_Id] [int] NULL,
 CONSTRAINT [PK_FrequencyDiscounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Item_Alternates]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Item_Alternates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Alternate_Number] [nvarchar](64) NOT NULL,
	[Type] [int] NOT NULL,
	[Item_Master_Id] [int] NOT NULL,
 CONSTRAINT [PK_Item_Alternates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Item_Images]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Item_Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[URL] [nvarchar](255) NOT NULL,
	[Item_Master_Id] [int] NULL,
 CONSTRAINT [PK_Item_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Item_Master]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[Item_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Item_Number] [nvarchar](64) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ItemType] [nvarchar](20) NULL,
	[Internal_Number] [varchar](64) NULL,
	[SKU] [varchar](64) NULL,
	[NSN] [varchar](64) NULL,
	[UnitOfMeasure] [int] NULL,
	[OnHand] [int] NULL CONSTRAINT [DF_Item_Master_OnHand]  DEFAULT ((0)),
	[OnOrder] [int] NULL CONSTRAINT [DF_Item_Master_OnOrder]  DEFAULT ((0)),
	[Category_Id] [int] NULL,
	[SubCategory_Id] [int] NULL,
	[IsAssembly] [bit] NULL,
 CONSTRAINT [PK_Item_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[Item_Quantity]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Item_Quantity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OnHand] [int] NOT NULL,
	[OnOrder] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[DateCode] [nvarchar](64) NOT NULL,
	[Manufacturer] [nvarchar](max) NOT NULL,
	[UnitOfMeasure] [int] NOT NULL,
	[Cost] [decimal](19, 6) NOT NULL,
	[Item_Master_Id] [int] NOT NULL,
	[Lot_Id] [int] NULL,
	[Vendor_Id] [int] NOT NULL,
	[SuggestedRetail] [decimal](18, 6) NULL,
	[PODetail_Id] [int] NULL,
	[DateReceived] [date] NULL,
	[Loc1] [nvarchar](20) NULL,
	[Loc2] [nvarchar](20) NULL,
 CONSTRAINT [PK_Item_Quantity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


/****** Object:  Table [dbo].[Item_QuantityBin]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Item_QuantityBin](
	[Item_Quantity_Id] [int] NOT NULL,
	[Bins_Id] [int] NOT NULL,
 CONSTRAINT [PK_Item_QuantityBin] PRIMARY KEY CLUSTERED 
(
	[Item_Quantity_Id] ASC,
	[Bins_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Locations]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Locations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LocationNane] [nvarchar](64) NOT NULL,
	[LocationType] [int] NOT NULL,
	[Warehouse_Id] [int] NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Lots]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Lots](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Lot_Number] [nvarchar](120) NOT NULL,
	[Lot_Date] [datetime] NOT NULL,
	[Vendor_Id] [int] NOT NULL,
 CONSTRAINT [PK_Lots] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Note]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Note](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoteInfo] [nvarchar](max) NOT NULL,
	[NoteDate] [datetime] NOT NULL,
	[Customer_Id] [int] NULL,
	[Vendor_Id] [int] NULL,
 CONSTRAINT [PK_Notes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


/****** Object:  Table [dbo].[PODetails]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[PODetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemNumber] [nvarchar](50) NULL,
	[Quantity] [int] NOT NULL,
	[Cost] [decimal](18, 6) NOT NULL,
	[POHeader_Id] [int] NOT NULL,
	[Item_Master_Id] [int] NULL,
	[Manufacturer] [varchar](64) NULL,
	[Datecode] [varchar](20) NULL,
	[Description] [varchar](max) NULL,
	[Qty_Received] [int] NOT NULL,
	[Qty_Returned] [int] NOT NULL,
 CONSTRAINT [PK_PODetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[POHeaders]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[POHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](12) NOT NULL,
	[Vendor_LocationId] [int] NULL,
	[Vendor_ContactId] [int] NULL,
	[PONumber] [varchar](20) NULL,
	[PODate] [date] NULL,
	[BillTo_LocationId] [int] NULL,
	[ShipTo_LocationId] [int] NULL,
	[BillTo_ContactId] [int] NULL,
	[ShipTo_ContactId] [int] NULL,
	[VendorId] [int] NULL,
 CONSTRAINT [PK_POHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[PricingBasis]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[PricingBasis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Basis] [int] NOT NULL,
	[MinQuantity] [int] NOT NULL,
	[Price] [decimal](18, 6) NOT NULL,
	[Item_Master_Id] [int] NULL,
 CONSTRAINT [PK_PricingBasis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[PurchaseHistory]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[PurchaseHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Vendor_Id] [int] NULL,
	[Item_Master_Id] [int] NULL,
	[Rectype] [int] NULL,
	[TransDate] [date] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [decimal](18, 6) NULL,
	[Manufacturer] [nvarchar](64) NULL,
	[QuoteResponse] [decimal](18, 6) NULL,
	[ResponseDate] [date] NULL,
	[LotNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_PurchaseHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[PurchasePending]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[PurchasePending](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemNumber] [varchar](64) NOT NULL,
	[Description] [varchar](max) NULL,
	[Vendor_Id] [int] NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](18, 6) NOT NULL,
	[RequestDate] [date] NULL,
	[Manufacturer] [varchar](64) NULL,
	[Item_Master_Id] [int] NULL,
 CONSTRAINT [PK_PurchasePending] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[Racks]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Racks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RackName] [nvarchar](64) NOT NULL,
	[Width] [decimal](18, 0) NOT NULL,
	[Depth] [decimal](18, 0) NOT NULL,
	[Location_Id] [int] NOT NULL,
 CONSTRAINT [PK_Racks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Reminders]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Reminders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Note] [nvarchar](max) NOT NULL,
	[ReminderDateTime] [datetime] NOT NULL,
	[ReminderType] [int] NOT NULL,
	[EndDateTime] [datetime] NULL,
	[pattern] [int] NULL,
	[User_Id] [int] NOT NULL,
 CONSTRAINT [PK_Reminders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


/****** Object:  Table [dbo].[Reports]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Reports](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ReportName] [nvarchar](120) NOT NULL,
	[SubSystem] [nvarchar](20) NOT NULL,
	[ReportFileName] [nvarchar](128) NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[SalesHistories]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[SalesHistories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SalesDate] [date] NULL,
	[Quantity] [int] NULL,
	[Unitcost] [decimal](18, 6) NULL,
	[UnitPrice] [decimal](18, 4) NULL,
	[LotNumber] [nvarchar](20) NULL,
	[DateCode] [nvarchar](12) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[TransType] [nvarchar](10) NULL,
	[CustomerId] [int] NULL,
	[Item_Master_Id] [int] NOT NULL,
	[SalesmanId] [int] NULL,
	[VendorId] [int] NULL,
 CONSTRAINT [PK_SalesHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Salesmen]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Salesmen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Commission] [decimal](18, 4) NOT NULL,
	[User_Id] [int] NULL,
 CONSTRAINT [PK_Salesmen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[SalesPending]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[SalesPending](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemNumber] [varchar](64) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Manufacturer] [varchar](64) NULL,
	[CartDate] [date] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](18, 6) NOT NULL,
	[TranType] [nvarchar](10) NULL,
	[Item_Master_Id] [int] NULL,
	[Quantity_Id] [int] NULL,
	[Customer_Id] [int] NULL,
	[Vendor_Id] [int] NULL,
	[LotNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_SalesPending] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[Settings]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[POPrefix] [nvarchar](4) NULL,
	[NextPONumber] [int] NULL,
	[SOPrefix] [nvarchar](6) NULL,
	[NextSONumber] [int] NULL,
	[SiteSettings] [nchar](4000) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Shelves]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Shelves](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShelfNumber] [int] NOT NULL,
	[Height] [decimal](18, 0) NOT NULL,
	[Rack_Id] [int] NOT NULL,
 CONSTRAINT [PK_Shelves] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[SODetails]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[SODetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SalePrice] [decimal](18, 6) NOT NULL,
	[Quantity] [int] NOT NULL,
	[SOHeader_Id] [int] NOT NULL,
	[Item_Master_Id] [int] NOT NULL,
	[UnitCost] [decimal](18, 6) NULL,
	[DateCode] [nvarchar](20) NULL,
	[LotNumber] [nvarchar](20) NULL,
	[VendorId] [int] NULL,
	[Manufacturer] [nvarchar](50) NULL,
 CONSTRAINT [PK_SODetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[SOHeaders]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[SOHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SONumber] [nvarchar](20) NOT NULL,
	[Salesman_Id] [int] NOT NULL,
	[Customer_Id] [int] NOT NULL,
	[SaleDate] [datetime] NULL,
	[SalesTax] [decimal](18, 2) NULL,
	[ShipContact_Id] [int] NULL,
	[ShipLocation_Id] [int] NULL,
	[BillLocation_Id] [int] NULL,
	[BillContact_Id] [int] NULL,
	[Status] [nvarchar](10) NULL,
	[Email] [nvarchar](128) NULL,
 CONSTRAINT [PK_SOHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[States]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[States](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](4) NOT NULL,
	[Description] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[SubCategory]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[SubCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubCategory] [nvarchar](40) NOT NULL,
	[Category_Id] [int] NOT NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Template_Document]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[Template_Document](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TemplateName] [varchar](64) NOT NULL,
	[Subsystem] [nvarchar](20) NOT NULL,
	[HeaderTemplate] [varchar](max) NOT NULL,
	[Image] [varchar](max) NULL,
	[DefaultFont] [varchar](128) NULL,
	[DetailTemplate] [varchar](max) NOT NULL,
	[FooterTemplate] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Document_Template] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[Template_Item]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[Template_Item](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TemplateName] [varchar](64) NOT NULL,
	[Template] [varchar](max) NOT NULL,
	[Vendor_Id] [int] NULL,
	[Source] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Vendor_Template] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[Users]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](12) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Inactive] [bit] NOT NULL CONSTRAINT [DF_Users_Inactive]  DEFAULT ((0)),
	[Priveleges] [varchar](max) NULL,
	[Client_Id] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[Vendors]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[Vendors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[BusinessType] [int] NOT NULL,
	[VendorName] [nvarchar](64) NULL,
	[ReorderDays] [int] NOT NULL,
	[MinShipAmount] [decimal](19, 4) NOT NULL,
	[AccountNumber] [varchar](400) NOT NULL,
	[CageCode] [varchar](12) NULL,
	[SICcode] [varchar](20) NULL,
	[NAICCode] [varchar](20) NULL,
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[Warehouses]    Script Date: 3/23/2016 3:28:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Warehouses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseName] [nvarchar](64) NOT NULL,
	[POHeader_Id] [int] NOT NULL,
 CONSTRAINT [PK_Warehouses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

