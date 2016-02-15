USE [BLSInventory]

CREATE LOGIN &UserId WITH PASSWORD='&Password'

CREATE USER [&UserId] FOR LOGIN [&UserId] WITH DEFAULT_SCHEMA=[dbo]

ALTER ROLE [db_owner] ADD MEMBER [&UserId]

/****** Object:  Table [dbo].[Addresses]    Script Date: 9/30/2015 9:29:18 AM ******/

/****** Object:  Table [dbo].[Addresses]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[Bins]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[Client]    Script Date: 11/2/2015 8:53:18 AM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Clientname] [nvarchar](max) NOT NULL,
	[CageCode] [nvarchar](max) NOT NULL,
	[SICCode] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[CompanyType] [int] NULL,
	[Description] [varchar](255) NULL,
	[changedFlag] [bit] NULL CONSTRAINT [DF_Client_changedFlag]  DEFAULT ((0)),
	[SalesTaxRate] [decimal](18, 4) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[ColorStyles]    Script Date: 11/2/2015 8:53:18 AM ******/
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

/****** Object:  Table [dbo].[Contacts]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[Customer]    Script Date: 11/2/2015 8:53:18 AM ******/
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

/****** Object:  Table [dbo].[dictionary]    Script Date: 11/2/2015 8:53:18 AM ******/
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

/****** Object:  Table [dbo].[FloorPlans]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[FrequencyDiscounts]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[Item_Alternates]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[Item_Images]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[Item_Master]    Script Date: 11/2/2015 8:53:18 AM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[Item_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Item_Number] [nvarchar](64) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ItemType] [nvarchar](20) NULL,
	[Internal_Number] [varchar](64) NULL,
	[SKU] [varchar](64) NULL,
	[NSN] [varchar](64) NULL,
	[UnitOfMeasure] [int] NULL,
	[OnHand] [int] NULL CONSTRAINT [DF_Item_Master_OnHand]  DEFAULT ((0)),
	[OnOrder] [int] NULL CONSTRAINT [DF_Item_Master_OnOrder]  DEFAULT ((0)),
 CONSTRAINT [PK_Item_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[Item_Quantity]    Script Date: 11/2/2015 8:53:18 AM ******/
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
	[Lot_Id] [int] NOT NULL,
	[Vendor_Id] [int] NOT NULL,
	[SuggestedRetail] [decimal](18, 6) NULL,
	[PODetail_Id] [int] NULL,
	[DateReceived] [date] NULL,
 CONSTRAINT [PK_Item_Quantity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


/****** Object:  Table [dbo].[Item_QuantityBin]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[Locations]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[Lots]    Script Date: 11/2/2015 8:53:18 AM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Lots](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Lot_Number] [nvarchar](64) NOT NULL,
	[Lot_Date] [datetime] NOT NULL,
	[Vendor_Id] [int] NOT NULL,
 CONSTRAINT [PK_Lots] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Note]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[PODetails]    Script Date: 11/2/2015 8:53:18 AM ******/
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

/****** Object:  Table [dbo].[POHeaders]    Script Date: 11/2/2015 8:53:18 AM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[POHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](12) NOT NULL,
	[Vendors_Id] [int] NOT NULL,
	[Vendor_LocationId] [int] NULL,
	[Vendor_ContactId] [int] NULL,
	[PONumber] [varchar](20) NULL,
	[PODate] [date] NULL,
	[BillTo_LocationId] [int] NULL,
	[ShipTo_LocationId] [int] NULL,
	[BillTo_ContactId] [int] NULL,
	[ShipTo_ContactId] [int] NULL,
 CONSTRAINT [PK_POHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


SET ANSI_PADDING OFF

/****** Object:  Table [dbo].[PricingBasis]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[PurchaseHistory]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[PurchasePending]    Script Date: 11/2/2015 8:53:18 AM ******/
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

/****** Object:  Table [dbo].[Racks]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[Reminders]    Script Date: 11/2/2015 8:53:18 AM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Reminders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Note] [nvarchar](max) NOT NULL,
	[ReminderDateTime] [datetime] NOT NULL,
	[ReminderType] [int] NOT NULL,
	[Salesman_Id] [int] NOT NULL,
	[EndDateTime] [datetime] NULL,
	[pattern] [int] NULL,
 CONSTRAINT [PK_Reminders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


/****** Object:  Table [dbo].[Reports]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[SalesHistories]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[Salesmen]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[SalesPending]    Script Date: 11/2/2015 8:53:18 AM ******/
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

/****** Object:  Table [dbo].[Settings]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[Shelves]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[SODetails]    Script Date: 11/2/2015 8:53:18 AM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[SODetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SalePrice] [decimal](18, 0) NOT NULL,
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


/****** Object:  Table [dbo].[SOHeaders]    Script Date: 11/2/2015 8:53:18 AM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[SOHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SONumber] [nvarchar](20) NOT NULL,
	[Salesman_Id] [int] NOT NULL,
	[Customer_Id] [int] NOT NULL,
	[SaleDate] [datetime] NULL,
	[SalesTax] [decimal](18, 2) NULL,
 CONSTRAINT [PK_SOHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[States]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Table [dbo].[Template_Document]    Script Date: 11/2/2015 8:53:18 AM ******/
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

/****** Object:  Table [dbo].[Template_Item]    Script Date: 11/2/2015 8:53:18 AM ******/
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

/****** Object:  Table [dbo].[Users]    Script Date: 11/2/2015 8:53:18 AM ******/
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

/****** Object:  Table [dbo].[Vendors]    Script Date: 11/2/2015 8:53:18 AM ******/
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

/****** Object:  Table [dbo].[Warehouses]    Script Date: 11/2/2015 8:53:18 AM ******/
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


/****** Object:  Index [IX_FK_ContactAddress]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_ContactAddress] ON [dbo].[Addresses]
(
	[Contact_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_CustomerAddress]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_CustomerAddress] ON [dbo].[Addresses]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_VendorAddress]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_VendorAddress] ON [dbo].[Addresses]
(
	[Vendor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_WarehouseAddress]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_WarehouseAddress] ON [dbo].[Addresses]
(
	[Warehouse_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_ShelfBin]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_ShelfBin] ON [dbo].[Bins]
(
	[Shelf_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_CustomerContact]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_CustomerContact] ON [dbo].[Contacts]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_SalesmanContact]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_SalesmanContact] ON [dbo].[Contacts]
(
	[Salesman_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_UsersContact]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_UsersContact] ON [dbo].[Contacts]
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_VendorContact]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_VendorContact] ON [dbo].[Contacts]
(
	[Vendor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_CustomerSOHeader]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_CustomerSOHeader] ON [dbo].[Customer]
(
	[SOHeaders_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_SalesmanCustomer]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_SalesmanCustomer] ON [dbo].[Customer]
(
	[Salesman_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_WarehouseFloorPlan]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_WarehouseFloorPlan] ON [dbo].[FloorPlans]
(
	[Warehouse_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_Item_MasterFrequencyDiscounts]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Item_MasterFrequencyDiscounts] ON [dbo].[FrequencyDiscounts]
(
	[Item_Master_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_Item_MasterItem_Alternates]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Item_MasterItem_Alternates] ON [dbo].[Item_Alternates]
(
	[Item_Master_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_Item_MasterItem_Images]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Item_MasterItem_Images] ON [dbo].[Item_Images]
(
	[Item_Master_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_Item_MasterItem_Quantity]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Item_MasterItem_Quantity] ON [dbo].[Item_Quantity]
(
	[Item_Master_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_LotsItem_Quantity]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_LotsItem_Quantity] ON [dbo].[Item_Quantity]
(
	[Lot_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_VendorItem_Quantity]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_VendorItem_Quantity] ON [dbo].[Item_Quantity]
(
	[Vendor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_Item_QuantityBin_Bin]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Item_QuantityBin_Bin] ON [dbo].[Item_QuantityBin]
(
	[Bins_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_WarehouseLocations]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_WarehouseLocations] ON [dbo].[Locations]
(
	[Warehouse_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_VendorLots]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_VendorLots] ON [dbo].[Lots]
(
	[Vendor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_CustomerNotes]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_CustomerNotes] ON [dbo].[Note]
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_PODetailItem_Master]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_PODetailItem_Master] ON [dbo].[PODetails]
(
	[Item_Master_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_POHeaderPODetail]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_POHeaderPODetail] ON [dbo].[PODetails]
(
	[POHeader_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_POHeaderVendor]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_POHeaderVendor] ON [dbo].[POHeaders]
(
	[Vendors_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_Item_MasterPricingBasis]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Item_MasterPricingBasis] ON [dbo].[PricingBasis]
(
	[Item_Master_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_Item_MasterPurchseHistory]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Item_MasterPurchseHistory] ON [dbo].[PurchaseHistory]
(
	[Item_Master_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_VendorPurchseHistory]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_VendorPurchseHistory] ON [dbo].[PurchaseHistory]
(
	[Vendor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_LocationsRack]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_LocationsRack] ON [dbo].[Racks]
(
	[Location_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_SalesmanReminder]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_SalesmanReminder] ON [dbo].[Reminders]
(
	[Salesman_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_Item_MasterSalesHistory]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Item_MasterSalesHistory] ON [dbo].[SalesHistories]
(
	[Item_Master_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_RackShelf]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_RackShelf] ON [dbo].[Shelves]
(
	[Rack_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_Item_MasterSODetail]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Item_MasterSODetail] ON [dbo].[SODetails]
(
	[Item_Master_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_SOHeaderSODetail]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_SOHeaderSODetail] ON [dbo].[SODetails]
(
	[SOHeader_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_SalesmanSOHeader]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_SalesmanSOHeader] ON [dbo].[SOHeaders]
(
	[Salesman_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_VendorVendor_Template]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_VendorVendor_Template] ON [dbo].[Template_Item]
(
	[Vendor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_FK_POHeaderWarehouse]    Script Date: 11/2/2015 8:53:18 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_POHeaderWarehouse] ON [dbo].[Warehouses]
(
	[POHeader_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

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

ALTER TABLE [dbo].[POHeaders]  WITH CHECK ADD  CONSTRAINT [FK_POHeaderVendor] FOREIGN KEY([Vendors_Id])
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

ALTER TABLE [dbo].[Reminders]  WITH CHECK ADD  CONSTRAINT [FK_SalesmanReminder] FOREIGN KEY([Salesman_Id])
REFERENCES [dbo].[Salesmen] ([Id])

ALTER TABLE [dbo].[Reminders] CHECK CONSTRAINT [FK_SalesmanReminder]

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

ALTER TABLE [dbo].[Template_Item]  WITH CHECK ADD  CONSTRAINT [FK_VendorVendor_Template] FOREIGN KEY([Vendor_Id])
REFERENCES [dbo].[Vendors] ([Id])

ALTER TABLE [dbo].[Template_Item] CHECK CONSTRAINT [FK_VendorVendor_Template]

ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_ClientUser] FOREIGN KEY([Client_Id])
REFERENCES [dbo].[Client] ([Id])

ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_ClientUser]

ALTER TABLE [dbo].[Warehouses]  WITH CHECK ADD  CONSTRAINT [FK_POHeaderWarehouse] FOREIGN KEY([POHeader_Id])
REFERENCES [dbo].[POHeaders] ([Id])

ALTER TABLE [dbo].[Warehouses] CHECK CONSTRAINT [FK_POHeaderWarehouse]

USE [master]

ALTER DATABASE [BLSInventory] SET  READ_WRITE 

