USE [BLSInventory]

CREATE LOGIN &UserId WITH PASSWORD='&Password'

CREATE USER [&UserId] FOR LOGIN [&UserId] WITH DEFAULT_SCHEMA=[dbo]

ALTER ROLE [db_owner] ADD MEMBER [&UserId]


/****** Object:  Table [dbo].[Addresses]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Bins]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Category]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Client]    Script Date: 3/21/2016 10:03:39 AM ******/
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

/****** Object:  Table [dbo].[ColorStyles]    Script Date: 3/21/2016 10:03:39 AM ******/
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

/****** Object:  Table [dbo].[Contacts]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Customer]    Script Date: 3/21/2016 10:03:39 AM ******/
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

/****** Object:  Table [dbo].[dictionary]    Script Date: 3/21/2016 10:03:39 AM ******/
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

/****** Object:  Table [dbo].[FloorPlans]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[FrequencyDiscounts]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Item_Alternates]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Item_Images]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Item_Master]    Script Date: 3/21/2016 10:03:39 AM ******/
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

/****** Object:  Table [dbo].[Item_Quantity]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Item_QuantityBin]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Locations]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Lots]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Note]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[PODetails]    Script Date: 3/21/2016 10:03:39 AM ******/
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

/****** Object:  Table [dbo].[POHeaders]    Script Date: 3/21/2016 10:03:39 AM ******/
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

/****** Object:  Table [dbo].[PricingBasis]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[PurchaseHistory]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[PurchasePending]    Script Date: 3/21/2016 10:03:39 AM ******/
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

/****** Object:  Table [dbo].[Racks]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Reminders]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Reports]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[SalesHistories]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Salesmen]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[SalesPending]    Script Date: 3/21/2016 10:03:39 AM ******/
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

/****** Object:  Table [dbo].[Settings]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Shelves]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[SODetails]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[SOHeaders]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[States]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[SubCategory]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  Table [dbo].[Template_Document]    Script Date: 3/21/2016 10:03:39 AM ******/
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

/****** Object:  Table [dbo].[Template_Item]    Script Date: 3/21/2016 10:03:39 AM ******/
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

/****** Object:  Table [dbo].[Users]    Script Date: 3/21/2016 10:03:39 AM ******/
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

/****** Object:  Table [dbo].[Vendors]    Script Date: 3/21/2016 10:03:39 AM ******/
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

/****** Object:  Table [dbo].[Warehouses]    Script Date: 3/21/2016 10:03:39 AM ******/
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


/****** Object:  View [dbo].[ViewPO]    Script Date: 3/21/2016 10:03:39 AM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON


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
ORDER BY dbo.POHeaders.PONumber



/****** Object:  View [dbo].[ViewPurchPending]    Script Date: 3/21/2016 10:03:39 AM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE VIEW [dbo].[ViewPurchPending]
AS
SELECT     TOP (100) PERCENT dbo.Vendors.VendorName, dbo.PurchasePending.ItemNumber, dbo.PurchasePending.Description, dbo.PurchasePending.Quantity, 
                      dbo.PurchasePending.UnitPrice, dbo.PurchasePending.Manufacturer, dbo.PurchasePending.RequestDate
FROM         dbo.PurchasePending LEFT OUTER JOIN
                      dbo.Vendors ON dbo.PurchasePending.Vendor_Id = dbo.Vendors.Id


/****** Object:  View [dbo].[ViewSO]    Script Date: 3/21/2016 10:03:39 AM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON


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
                      dbo.Item_Master ON dbo.SODetails.Item_Master_Id = dbo.Item_Master.Id



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

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewPO'

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

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewPurchPending'

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

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewSO'

