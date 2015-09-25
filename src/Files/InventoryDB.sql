
USE [master]
GO

/****** Object:  Database [ABCInventory]    Script Date: 9/22/2015 4:07:52 PM ******/
CREATE DATABASE [ABCInventory]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ABCInventory', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ABCInventory.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ABCInventory_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\ABCInventory_log.ldf' , SIZE = 1600KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [ABCInventory] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ABCInventory].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ABCInventory] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ABCInventory] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ABCInventory] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ABCInventory] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ABCInventory] SET ARITHABORT OFF 
GO

ALTER DATABASE [ABCInventory] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ABCInventory] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [ABCInventory] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ABCInventory] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ABCInventory] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ABCInventory] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ABCInventory] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ABCInventory] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ABCInventory] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ABCInventory] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ABCInventory] SET  ENABLE_BROKER 
GO

ALTER DATABASE [ABCInventory] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ABCInventory] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ABCInventory] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ABCInventory] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ABCInventory] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ABCInventory] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ABCInventory] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ABCInventory] SET RECOVERY FULL 
GO

ALTER DATABASE [ABCInventory] SET  MULTI_USER 
GO

ALTER DATABASE [ABCInventory] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ABCInventory] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ABCInventory] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ABCInventory] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [ABCInventory] SET  READ_WRITE 
GO

use ABCInventory
CREATE LOGIN &UserId WITH PASSWORD = '&Password'
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'&UserId')
BEGIN
    CREATE USER &UserId FOR LOGIN &UserId
    EXEC sp_addrolemember N'db_owner', N'&UserId'
END;
GO

SET QUOTED_IDENTIFIER OFF;
GO
USE [ABCInventory];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ClientAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_ClientAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_ClientUser];
GO
IF OBJECT_ID(N'[dbo].[FK_ContactAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_ContactAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_Note]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Note] DROP CONSTRAINT [FK_Customer_Note];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_SalesHistories]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SalesHistories] DROP CONSTRAINT [FK_Customer_SalesHistories];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_CustomerAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerContacts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contacts] DROP CONSTRAINT [FK_CustomerContacts];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerSalesPending]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SalesPending] DROP CONSTRAINT [FK_CustomerSalesPending];
GO
IF OBJECT_ID(N'[dbo].[FK_Item_MasterFrequencyDiscounts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FrequencyDiscounts] DROP CONSTRAINT [FK_Item_MasterFrequencyDiscounts];
GO
IF OBJECT_ID(N'[dbo].[FK_Item_MasterItem_Alternates]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Item_Alternates] DROP CONSTRAINT [FK_Item_MasterItem_Alternates];
GO
IF OBJECT_ID(N'[dbo].[FK_Item_MasterItem_Images]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Item_Images] DROP CONSTRAINT [FK_Item_MasterItem_Images];
GO
IF OBJECT_ID(N'[dbo].[FK_Item_MasterItem_Quantity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Item_Quantity] DROP CONSTRAINT [FK_Item_MasterItem_Quantity];
GO
IF OBJECT_ID(N'[dbo].[FK_Item_MasterPricingBasis]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PricingBasis] DROP CONSTRAINT [FK_Item_MasterPricingBasis];
GO
IF OBJECT_ID(N'[dbo].[FK_Item_MasterPurchseHistory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PurchaseHistory] DROP CONSTRAINT [FK_Item_MasterPurchseHistory];
GO
IF OBJECT_ID(N'[dbo].[FK_Item_MasterSalesHistory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SalesHistories] DROP CONSTRAINT [FK_Item_MasterSalesHistory];
GO
IF OBJECT_ID(N'[dbo].[FK_Item_MasterSODetail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SODetails] DROP CONSTRAINT [FK_Item_MasterSODetail];
GO
IF OBJECT_ID(N'[dbo].[FK_Item_QuantityBin_Bin]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Item_QuantityBin] DROP CONSTRAINT [FK_Item_QuantityBin_Bin];
GO
IF OBJECT_ID(N'[dbo].[FK_Item_QuantityBin_Item_Quantity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Item_QuantityBin] DROP CONSTRAINT [FK_Item_QuantityBin_Item_Quantity];
GO
IF OBJECT_ID(N'[dbo].[FK_ItemMasterPurchasePending]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PurchasePending] DROP CONSTRAINT [FK_ItemMasterPurchasePending];
GO
IF OBJECT_ID(N'[dbo].[FK_ItemMasterSalesPending]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SalesPending] DROP CONSTRAINT [FK_ItemMasterSalesPending];
GO
IF OBJECT_ID(N'[dbo].[FK_LocationsRack]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Racks] DROP CONSTRAINT [FK_LocationsRack];
GO
IF OBJECT_ID(N'[dbo].[FK_LotsItem_Quantity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Item_Quantity] DROP CONSTRAINT [FK_LotsItem_Quantity];
GO
IF OBJECT_ID(N'[dbo].[FK_PODetailItem_Master]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PODetails] DROP CONSTRAINT [FK_PODetailItem_Master];
GO
IF OBJECT_ID(N'[dbo].[FK_PODetailQuantity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Item_Quantity] DROP CONSTRAINT [FK_PODetailQuantity];
GO
IF OBJECT_ID(N'[dbo].[FK_POHeaderPODetail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PODetails] DROP CONSTRAINT [FK_POHeaderPODetail];
GO
IF OBJECT_ID(N'[dbo].[FK_POHeaderVendor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[POHeaders] DROP CONSTRAINT [FK_POHeaderVendor];
GO
IF OBJECT_ID(N'[dbo].[FK_POHeaderWarehouse]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Warehouses] DROP CONSTRAINT [FK_POHeaderWarehouse];
GO
IF OBJECT_ID(N'[dbo].[FK_QuantitySalesPending]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SalesPending] DROP CONSTRAINT [FK_QuantitySalesPending];
GO
IF OBJECT_ID(N'[dbo].[FK_RackShelf]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Shelves] DROP CONSTRAINT [FK_RackShelf];
GO
IF OBJECT_ID(N'[dbo].[FK_SalesHistories_SalesHistories]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SalesHistories] DROP CONSTRAINT [FK_SalesHistories_SalesHistories];
GO
IF OBJECT_ID(N'[dbo].[FK_Salesman_SalesHistories]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SalesHistories] DROP CONSTRAINT [FK_Salesman_SalesHistories];
GO
IF OBJECT_ID(N'[dbo].[FK_SalesmanContact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contacts] DROP CONSTRAINT [FK_SalesmanContact];
GO
IF OBJECT_ID(N'[dbo].[FK_SalesmanCustomer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK_SalesmanCustomer];
GO
IF OBJECT_ID(N'[dbo].[FK_SalesmanReminder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reminders] DROP CONSTRAINT [FK_SalesmanReminder];
GO
IF OBJECT_ID(N'[dbo].[FK_SalesmanSOHeader]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SOHeaders] DROP CONSTRAINT [FK_SalesmanSOHeader];
GO
IF OBJECT_ID(N'[dbo].[FK_ShelfBin]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bins] DROP CONSTRAINT [FK_ShelfBin];
GO
IF OBJECT_ID(N'[dbo].[FK_SOHeaderSODetail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SODetails] DROP CONSTRAINT [FK_SOHeaderSODetail];
GO
IF OBJECT_ID(N'[dbo].[FK_UsersContact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contacts] DROP CONSTRAINT [FK_UsersContact];
GO
IF OBJECT_ID(N'[dbo].[FK_Vendor_SalesHistories]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SalesHistories] DROP CONSTRAINT [FK_Vendor_SalesHistories];
GO
IF OBJECT_ID(N'[dbo].[FK_VendorAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_VendorAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_VendorContact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contacts] DROP CONSTRAINT [FK_VendorContact];
GO
IF OBJECT_ID(N'[dbo].[FK_VendorItem_Quantity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Item_Quantity] DROP CONSTRAINT [FK_VendorItem_Quantity];
GO
IF OBJECT_ID(N'[dbo].[FK_VendorLots]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Lots] DROP CONSTRAINT [FK_VendorLots];
GO
IF OBJECT_ID(N'[dbo].[FK_VendorNote]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Note] DROP CONSTRAINT [FK_VendorNote];
GO
IF OBJECT_ID(N'[dbo].[FK_VendorPurchasePending]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PurchasePending] DROP CONSTRAINT [FK_VendorPurchasePending];
GO
IF OBJECT_ID(N'[dbo].[FK_VendorPurchseHistory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PurchaseHistory] DROP CONSTRAINT [FK_VendorPurchseHistory];
GO
IF OBJECT_ID(N'[dbo].[FK_VendorVendor_Template]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Template_Item] DROP CONSTRAINT [FK_VendorVendor_Template];
GO
IF OBJECT_ID(N'[dbo].[FK_WarehouseAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_WarehouseAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_WarehouseFloorPlan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FloorPlans] DROP CONSTRAINT [FK_WarehouseFloorPlan];
GO
IF OBJECT_ID(N'[dbo].[FK_WarehouseLocations]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Locations] DROP CONSTRAINT [FK_WarehouseLocations];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Addresses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Addresses];
GO
IF OBJECT_ID(N'[dbo].[Bins]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Bins];
GO
IF OBJECT_ID(N'[dbo].[Client]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Client];
GO
IF OBJECT_ID(N'[dbo].[ColorStyles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ColorStyles];
GO
IF OBJECT_ID(N'[dbo].[Contacts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contacts];
GO
IF OBJECT_ID(N'[dbo].[Customer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customer];
GO
IF OBJECT_ID(N'[dbo].[dictionary]', 'U') IS NOT NULL
    DROP TABLE [dbo].[dictionary];
GO
IF OBJECT_ID(N'[dbo].[FloorPlans]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FloorPlans];
GO
IF OBJECT_ID(N'[dbo].[FrequencyDiscounts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FrequencyDiscounts];
GO
IF OBJECT_ID(N'[dbo].[Item_Alternates]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Item_Alternates];
GO
IF OBJECT_ID(N'[dbo].[Item_Images]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Item_Images];
GO
IF OBJECT_ID(N'[dbo].[Item_Master]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Item_Master];
GO
IF OBJECT_ID(N'[dbo].[Item_Quantity]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Item_Quantity];
GO
IF OBJECT_ID(N'[dbo].[Item_QuantityBin]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Item_QuantityBin];
GO
IF OBJECT_ID(N'[dbo].[Locations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Locations];
GO
IF OBJECT_ID(N'[dbo].[Lots]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Lots];
GO
IF OBJECT_ID(N'[dbo].[Note]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Note];
GO
IF OBJECT_ID(N'[dbo].[PODetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PODetails];
GO
IF OBJECT_ID(N'[dbo].[POHeaders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[POHeaders];
GO
IF OBJECT_ID(N'[dbo].[PricingBasis]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PricingBasis];
GO
IF OBJECT_ID(N'[dbo].[PurchaseHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PurchaseHistory];
GO
IF OBJECT_ID(N'[dbo].[PurchasePending]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PurchasePending];
GO
IF OBJECT_ID(N'[dbo].[Racks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Racks];
GO
IF OBJECT_ID(N'[dbo].[Reminders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reminders];
GO
IF OBJECT_ID(N'[dbo].[Reports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reports];
GO
IF OBJECT_ID(N'[dbo].[SalesHistories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SalesHistories];
GO
IF OBJECT_ID(N'[dbo].[Salesmen]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Salesmen];
GO
IF OBJECT_ID(N'[dbo].[SalesPending]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SalesPending];
GO
IF OBJECT_ID(N'[dbo].[Settings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Settings];
GO
IF OBJECT_ID(N'[dbo].[Shelves]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Shelves];
GO
IF OBJECT_ID(N'[dbo].[SODetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SODetails];
GO
IF OBJECT_ID(N'[dbo].[SOHeaders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SOHeaders];
GO
IF OBJECT_ID(N'[dbo].[States]', 'U') IS NOT NULL
    DROP TABLE [dbo].[States];
GO
IF OBJECT_ID(N'[dbo].[Template_Document]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Template_Document];
GO
IF OBJECT_ID(N'[dbo].[Template_Item]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Template_Item];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Vendors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Vendors];
GO
IF OBJECT_ID(N'[dbo].[Warehouses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Warehouses];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Lots'
CREATE TABLE [dbo].[Lots] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Lot_Number] nvarchar(64)  NOT NULL,
    [Lot_Date] datetime  NOT NULL,
    [Vendor_Id] int  NOT NULL
);
GO

-- Creating table 'Item_Quantity'
CREATE TABLE [dbo].[Item_Quantity] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [OnHand] int  NOT NULL,
    [OnOrder] int  NOT NULL,
    [Type] int  NOT NULL,
    [DateCode] nvarchar(64)  NOT NULL,
    [Manufacturer] nvarchar(max)  NOT NULL,
    [UnitOfMeasure] int  NOT NULL,
    [Cost] decimal(19,6)  NOT NULL,
    [SuggestedRetail] decimal(18,6)  NULL,
    [PODetail_Id] int  NULL,
    [DateReceived] datetime  NULL,
    [Item_Master_Id] int  NOT NULL,
    [Lot_Id] int  NOT NULL,
    [Vendor_Id] int  NOT NULL
);
GO

-- Creating table 'Item_Alternates'
CREATE TABLE [dbo].[Item_Alternates] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Alternate_Number] nvarchar(64)  NOT NULL,
    [Type] int  NOT NULL,
    [Item_Master_Id] int  NOT NULL
);
GO

-- Creating table 'Item_Master'
CREATE TABLE [dbo].[Item_Master] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Item_Number] nvarchar(64)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [ItemType] nvarchar(20)  NULL,
    [Internal_Number] varchar(64)  NULL,
    [SKU] varchar(64)  NULL,
    [NSN] varchar(64)  NULL,
    [UnitOfMeasure] int  NULL,
    [OnHand] int  NULL,
    [OnOrder] int  NULL
);
GO

-- Creating table 'Item_Images'
CREATE TABLE [dbo].[Item_Images] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [URL] nvarchar(255)  NOT NULL,
    [Item_Master_Id] int  NOT NULL
);
GO

-- Creating table 'Addresses'
CREATE TABLE [dbo].[Addresses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Address1] nvarchar(255)  NOT NULL,
    [Address2] nvarchar(255)  NULL,
    [City] nvarchar(128)  NOT NULL,
    [State] nvarchar(12)  NOT NULL,
    [Province] nvarchar(40)  NULL,
    [Country] nvarchar(40)  NULL,
    [PostalCode] nvarchar(20)  NOT NULL,
    [AddressType] int  NULL,
    [Contact_Id] int  NULL,
    [Client_Id] int  NULL,
    [Warehouse_Id] int  NULL,
    [Vendor_Id] int  NULL,
    [Customer_Id] int  NULL
);
GO

-- Creating table 'Contacts'
CREATE TABLE [dbo].[Contacts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(128)  NULL,
    [ContactName] nvarchar(128)  NOT NULL,
    [Gender] int  NOT NULL,
    [Phone] nvarchar(20)  NULL,
    [CellPhone] nvarchar(20)  NULL,
    [Fax] nvarchar(20)  NULL,
    [Email] nvarchar(255)  NULL,
    [ContactType] int  NOT NULL,
    [Salesman_Id] int  NULL,
    [Vendor_Id] int  NULL,
    [User_Id] int  NULL,
    [Customer_Id] int  NULL
);
GO

-- Creating table 'Vendors'
CREATE TABLE [dbo].[Vendors] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [BusinessType] int  NOT NULL,
    [VendorName] nvarchar(64)  NULL,
    [ReorderDays] int  NOT NULL,
    [MinShipAmount] decimal(19,4)  NOT NULL,
    [AccountNumber] varchar(400)  NOT NULL,
    [CageCode] varchar(12)  NULL,
    [SICcode] varchar(20)  NULL,
    [NAICCode] varchar(20)  NULL
);
GO

-- Creating table 'Warehouses'
CREATE TABLE [dbo].[Warehouses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [WarehouseName] nvarchar(64)  NOT NULL,
    [POHeader_Id] int  NOT NULL
);
GO

-- Creating table 'Locations'
CREATE TABLE [dbo].[Locations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LocationNane] nvarchar(64)  NOT NULL,
    [LocationType] int  NOT NULL,
    [Warehouse_Id] int  NOT NULL
);
GO

-- Creating table 'FloorPlans'
CREATE TABLE [dbo].[FloorPlans] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Warehouse_Id] int  NOT NULL
);
GO

-- Creating table 'Racks'
CREATE TABLE [dbo].[Racks] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RackName] nvarchar(64)  NOT NULL,
    [Width] decimal(18,0)  NOT NULL,
    [Depth] decimal(18,0)  NOT NULL,
    [Location_Id] int  NOT NULL
);
GO

-- Creating table 'Shelves'
CREATE TABLE [dbo].[Shelves] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ShelfNumber] int  NOT NULL,
    [Height] decimal(18,0)  NOT NULL,
    [Rack_Id] int  NOT NULL
);
GO

-- Creating table 'Bins'
CREATE TABLE [dbo].[Bins] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [BinNumber] int  NOT NULL,
    [Width] decimal(18,0)  NOT NULL,
    [Shelf_Id] int  NOT NULL
);
GO

-- Creating table 'POHeaders'
CREATE TABLE [dbo].[POHeaders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Status] nvarchar(12)  NOT NULL,
    [PONumber] varchar(20)  NULL,
    [PODate] datetime  NULL,
    [BillTo_LocationId] int  NULL,
    [ShipTo_LocationId] int  NULL,
    [BillTo_ContactId] int  NULL,
    [ShipTo_ContactId] int  NULL,
    [Vendors_Id] int  NOT NULL
);
GO

-- Creating table 'PODetails'
CREATE TABLE [dbo].[PODetails] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Quantity] int  NOT NULL,
    [Cost] decimal(18,6)  NOT NULL,
    [Manufacturer] varchar(64)  NULL,
    [Datecode] varchar(20)  NULL,
    [Description] varchar(max)  NULL,
    [Qty_Received] int  NOT NULL,
    [Qty_Returned] int  NOT NULL,
    [POHeader_Id] int  NOT NULL,
    [Item_Master_Id] int  NULL
);
GO

-- Creating table 'SOHeaders'
CREATE TABLE [dbo].[SOHeaders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SONumber] int  NOT NULL,
    [Customer_Id] int  NOT NULL,
    [Salesman_Id] int  NOT NULL
);
GO

-- Creating table 'SODetails'
CREATE TABLE [dbo].[SODetails] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SalePrice] decimal(18,0)  NOT NULL,
    [Quantity] int  NOT NULL,
    [SOHeader_Id] int  NOT NULL,
    [Item_Master_Id] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserID] nvarchar(12)  NOT NULL,
    [Password] nvarchar(20)  NOT NULL,
    [Inactive] bit  NOT NULL,
    [Priveleges] varchar(max)  NULL,
    [Client_Id] int  NULL
);
GO

-- Creating table 'Settings'
CREATE TABLE [dbo].[Settings] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [POPrefix] nvarchar(4)  NULL,
    [NextPONumber] int  NULL,
    [SOPrefix] nvarchar(6)  NULL,
    [NextSONumber] int  NULL,
    [SiteSettings] nchar(4000)  NULL
);
GO

-- Creating table 'Reminders'
CREATE TABLE [dbo].[Reminders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Note] nvarchar(max)  NOT NULL,
    [ReminderDateTime] datetime  NOT NULL,
    [ReminderType] int  NOT NULL,
    [Salesman_Id] int  NOT NULL
);
GO

-- Creating table 'States'
CREATE TABLE [dbo].[States] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(4)  NOT NULL,
    [Description] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'PricingBasis'
CREATE TABLE [dbo].[PricingBasis] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Basis] int  NOT NULL,
    [Price] decimal(18,6)  NOT NULL,
    [MinQuantity] int  NOT NULL,
    [Item_Master_Id] int  NULL
);
GO

-- Creating table 'FrequencyDiscounts'
CREATE TABLE [dbo].[FrequencyDiscounts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Frequency] int  NOT NULL,
    [DiscountPercent] decimal(8,4)  NOT NULL,
    [Item_Master_Id] int  NULL
);
GO

-- Creating table 'PurchaseHistory'
CREATE TABLE [dbo].[PurchaseHistory] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Rectype] int  NULL,
    [Quantity] int  NULL,
    [UnitPrice] decimal(18,6)  NULL,
    [Manufacturer] nvarchar(64)  NULL,
    [QuoteResponse] decimal(18,6)  NULL,
    [ResponseDate] datetime  NULL,
    [TransDate] datetime  NULL,
    [LotNumber] nvarchar(50)  NULL,
    [Vendor_Id] int  NULL,
    [Item_Master_Id] int  NULL
);
GO

-- Creating table 'SalesHistories'
CREATE TABLE [dbo].[SalesHistories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SalesDate] datetime  NULL,
    [Quantity] int  NULL,
    [Unitcost] decimal(18,6)  NULL,
    [UnitPrice] decimal(18,4)  NULL,
    [LotNumber] nvarchar(20)  NULL,
    [DateCode] nvarchar(12)  NULL,
    [Manufacturer] nvarchar(50)  NULL,
    [CustomerId] int  NULL,
    [SalesmanId] int  NULL,
    [VendorId] int  NULL,
    [TransType] nvarchar(10)  NULL,
    [Item_Master_Id] int  NOT NULL
);
GO

-- Creating table 'ColorStyles'
CREATE TABLE [dbo].[ColorStyles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(20)  NOT NULL,
    [Style] varchar(max)  NOT NULL
);
GO

-- Creating table 'Salesmen'
CREATE TABLE [dbo].[Salesmen] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Commission] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Template_Document'
CREATE TABLE [dbo].[Template_Document] (
    [id] int IDENTITY(1,1) NOT NULL,
    [TemplateName] varchar(64)  NOT NULL,
    [Subsystem] int  NOT NULL,
    [Image] varchar(max)  NULL,
    [DefaultFont] varchar(128)  NULL,
    [HeaderTemplate] varchar(max)  NOT NULL,
    [DetailTemplate] varchar(max)  NOT NULL,
    [FooterTemplate] varchar(max)  NOT NULL
);
GO

-- Creating table 'Template_Item'
CREATE TABLE [dbo].[Template_Item] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TemplateName] varchar(64)  NOT NULL,
    [Template] varchar(max)  NOT NULL,
    [Vendor_Id] int  NULL,
    [Source] varchar(20)  NOT NULL
);
GO

-- Creating table 'Reports'
CREATE TABLE [dbo].[Reports] (
    [id] int IDENTITY(1,1) NOT NULL,
    [ReportName] nvarchar(120)  NOT NULL,
    [SubSystem] nvarchar(20)  NOT NULL
);
GO

-- Creating table 'dictionaries'
CREATE TABLE [dbo].[dictionaries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FieldName] varchar(20)  NOT NULL,
    [FieldType] int  NOT NULL,
    [Iscontainer] bit  NOT NULL,
    [MaxLines] int  NOT NULL,
    [SubSystem] int  NOT NULL
);
GO

-- Creating table 'Notes'
CREATE TABLE [dbo].[Notes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NoteInfo] nvarchar(max)  NOT NULL,
    [NoteDate] datetime  NOT NULL,
    [Customer_Id] int  NULL,
    [Vendor_Id] int  NULL
);
GO

-- Creating table 'PurchasePendings'
CREATE TABLE [dbo].[PurchasePendings] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ItemNumber] varchar(64)  NOT NULL,
    [Description] varchar(max)  NULL,
    [Vendor_Id] int  NULL,
    [Quantity] int  NOT NULL,
    [UnitPrice] decimal(18,6)  NOT NULL,
    [RequestDate] datetime  NULL,
    [Manufacturer] varchar(64)  NULL,
    [Item_Master_Id] int  NULL
);
GO

-- Creating table 'SalesPendings'
CREATE TABLE [dbo].[SalesPendings] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ItemNumber] varchar(64)  NOT NULL,
    [Description] varchar(max)  NOT NULL,
    [Manufacturer] varchar(64)  NULL,
    [CartDate] datetime  NOT NULL,
    [Quantity] int  NOT NULL,
    [UnitPrice] decimal(18,6)  NOT NULL,
    [TranType] nvarchar(10)  NULL,
    [Item_Master_Id] int  NULL,
    [Quantity_Id] int  NULL,
    [Customer_Id] int  NULL,
    [Vendor_Id] int  NULL
);
GO

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CustomerName] nvarchar(128)  NOT NULL,
    [CustomerType] int  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [SOHeaders_Id] int  NULL,
    [Salesman_Id] int  NULL,
    [Cage] varchar(20)  NULL,
    [SICCode] varchar(20)  NULL,
    [NAICCode] varchar(20)  NULL,
    [Account] varchar(20)  NULL,
    [CreidtLimit] decimal(18,2)  NULL
);
GO

-- Creating table 'Clients'
CREATE TABLE [dbo].[Clients] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Clientname] nvarchar(max)  NOT NULL,
    [CageCode] nvarchar(max)  NOT NULL,
    [SICCode] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [CompanyType] int  NULL,
    [Description] varchar(255)  NULL,
    [changedFlag] bit  NULL
);
GO

-- Creating table 'Item_QuantityBin'
CREATE TABLE [dbo].[Item_QuantityBin] (
    [Item_Quantity_Id] int  NOT NULL,
    [Bins_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Lots'
ALTER TABLE [dbo].[Lots]
ADD CONSTRAINT [PK_Lots]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Item_Quantity'
ALTER TABLE [dbo].[Item_Quantity]
ADD CONSTRAINT [PK_Item_Quantity]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Item_Alternates'
ALTER TABLE [dbo].[Item_Alternates]
ADD CONSTRAINT [PK_Item_Alternates]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Item_Master'
ALTER TABLE [dbo].[Item_Master]
ADD CONSTRAINT [PK_Item_Master]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Item_Images'
ALTER TABLE [dbo].[Item_Images]
ADD CONSTRAINT [PK_Item_Images]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_Addresses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [PK_Contacts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Vendors'
ALTER TABLE [dbo].[Vendors]
ADD CONSTRAINT [PK_Vendors]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Warehouses'
ALTER TABLE [dbo].[Warehouses]
ADD CONSTRAINT [PK_Warehouses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [PK_Locations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FloorPlans'
ALTER TABLE [dbo].[FloorPlans]
ADD CONSTRAINT [PK_FloorPlans]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Racks'
ALTER TABLE [dbo].[Racks]
ADD CONSTRAINT [PK_Racks]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Shelves'
ALTER TABLE [dbo].[Shelves]
ADD CONSTRAINT [PK_Shelves]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Bins'
ALTER TABLE [dbo].[Bins]
ADD CONSTRAINT [PK_Bins]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'POHeaders'
ALTER TABLE [dbo].[POHeaders]
ADD CONSTRAINT [PK_POHeaders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PODetails'
ALTER TABLE [dbo].[PODetails]
ADD CONSTRAINT [PK_PODetails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SOHeaders'
ALTER TABLE [dbo].[SOHeaders]
ADD CONSTRAINT [PK_SOHeaders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SODetails'
ALTER TABLE [dbo].[SODetails]
ADD CONSTRAINT [PK_SODetails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Settings'
ALTER TABLE [dbo].[Settings]
ADD CONSTRAINT [PK_Settings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Reminders'
ALTER TABLE [dbo].[Reminders]
ADD CONSTRAINT [PK_Reminders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'States'
ALTER TABLE [dbo].[States]
ADD CONSTRAINT [PK_States]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PricingBasis'
ALTER TABLE [dbo].[PricingBasis]
ADD CONSTRAINT [PK_PricingBasis]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FrequencyDiscounts'
ALTER TABLE [dbo].[FrequencyDiscounts]
ADD CONSTRAINT [PK_FrequencyDiscounts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PurchaseHistory'
ALTER TABLE [dbo].[PurchaseHistory]
ADD CONSTRAINT [PK_PurchaseHistory]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SalesHistories'
ALTER TABLE [dbo].[SalesHistories]
ADD CONSTRAINT [PK_SalesHistories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ColorStyles'
ALTER TABLE [dbo].[ColorStyles]
ADD CONSTRAINT [PK_ColorStyles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Salesmen'
ALTER TABLE [dbo].[Salesmen]
ADD CONSTRAINT [PK_Salesmen]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id] in table 'Template_Document'
ALTER TABLE [dbo].[Template_Document]
ADD CONSTRAINT [PK_Template_Document]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 'Template_Item'
ALTER TABLE [dbo].[Template_Item]
ADD CONSTRAINT [PK_Template_Item]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [PK_Reports]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 'dictionaries'
ALTER TABLE [dbo].[dictionaries]
ADD CONSTRAINT [PK_dictionaries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Notes'
ALTER TABLE [dbo].[Notes]
ADD CONSTRAINT [PK_Notes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PurchasePendings'
ALTER TABLE [dbo].[PurchasePendings]
ADD CONSTRAINT [PK_PurchasePendings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SalesPendings'
ALTER TABLE [dbo].[SalesPendings]
ADD CONSTRAINT [PK_SalesPendings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Clients'
ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [PK_Clients]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Item_Quantity_Id], [Bins_Id] in table 'Item_QuantityBin'
ALTER TABLE [dbo].[Item_QuantityBin]
ADD CONSTRAINT [PK_Item_QuantityBin]
    PRIMARY KEY CLUSTERED ([Item_Quantity_Id], [Bins_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Item_Master_Id] in table 'Item_Quantity'
ALTER TABLE [dbo].[Item_Quantity]
ADD CONSTRAINT [FK_Item_MasterItem_Quantity]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterItem_Quantity'
CREATE INDEX [IX_FK_Item_MasterItem_Quantity]
ON [dbo].[Item_Quantity]
    ([Item_Master_Id]);
GO

-- Creating foreign key on [Lot_Id] in table 'Item_Quantity'
ALTER TABLE [dbo].[Item_Quantity]
ADD CONSTRAINT [FK_LotsItem_Quantity]
    FOREIGN KEY ([Lot_Id])
    REFERENCES [dbo].[Lots]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LotsItem_Quantity'
CREATE INDEX [IX_FK_LotsItem_Quantity]
ON [dbo].[Item_Quantity]
    ([Lot_Id]);
GO

-- Creating foreign key on [Item_Master_Id] in table 'Item_Alternates'
ALTER TABLE [dbo].[Item_Alternates]
ADD CONSTRAINT [FK_Item_MasterItem_Alternates]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterItem_Alternates'
CREATE INDEX [IX_FK_Item_MasterItem_Alternates]
ON [dbo].[Item_Alternates]
    ([Item_Master_Id]);
GO

-- Creating foreign key on [Item_Master_Id] in table 'Item_Images'
ALTER TABLE [dbo].[Item_Images]
ADD CONSTRAINT [FK_Item_MasterItem_Images]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterItem_Images'
CREATE INDEX [IX_FK_Item_MasterItem_Images]
ON [dbo].[Item_Images]
    ([Item_Master_Id]);
GO

-- Creating foreign key on [Vendor_Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_VendorContact]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VendorContact'
CREATE INDEX [IX_FK_VendorContact]
ON [dbo].[Contacts]
    ([Vendor_Id]);
GO

-- Creating foreign key on [Vendor_Id] in table 'Lots'
ALTER TABLE [dbo].[Lots]
ADD CONSTRAINT [FK_VendorLots]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VendorLots'
CREATE INDEX [IX_FK_VendorLots]
ON [dbo].[Lots]
    ([Vendor_Id]);
GO

-- Creating foreign key on [Vendor_Id] in table 'Item_Quantity'
ALTER TABLE [dbo].[Item_Quantity]
ADD CONSTRAINT [FK_VendorItem_Quantity]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VendorItem_Quantity'
CREATE INDEX [IX_FK_VendorItem_Quantity]
ON [dbo].[Item_Quantity]
    ([Vendor_Id]);
GO

-- Creating foreign key on [Warehouse_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_WarehouseAddress]
    FOREIGN KEY ([Warehouse_Id])
    REFERENCES [dbo].[Warehouses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WarehouseAddress'
CREATE INDEX [IX_FK_WarehouseAddress]
ON [dbo].[Addresses]
    ([Warehouse_Id]);
GO

-- Creating foreign key on [Warehouse_Id] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [FK_WarehouseLocations]
    FOREIGN KEY ([Warehouse_Id])
    REFERENCES [dbo].[Warehouses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WarehouseLocations'
CREATE INDEX [IX_FK_WarehouseLocations]
ON [dbo].[Locations]
    ([Warehouse_Id]);
GO

-- Creating foreign key on [Warehouse_Id] in table 'FloorPlans'
ALTER TABLE [dbo].[FloorPlans]
ADD CONSTRAINT [FK_WarehouseFloorPlan]
    FOREIGN KEY ([Warehouse_Id])
    REFERENCES [dbo].[Warehouses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WarehouseFloorPlan'
CREATE INDEX [IX_FK_WarehouseFloorPlan]
ON [dbo].[FloorPlans]
    ([Warehouse_Id]);
GO

-- Creating foreign key on [Location_Id] in table 'Racks'
ALTER TABLE [dbo].[Racks]
ADD CONSTRAINT [FK_LocationsRack]
    FOREIGN KEY ([Location_Id])
    REFERENCES [dbo].[Locations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LocationsRack'
CREATE INDEX [IX_FK_LocationsRack]
ON [dbo].[Racks]
    ([Location_Id]);
GO

-- Creating foreign key on [Rack_Id] in table 'Shelves'
ALTER TABLE [dbo].[Shelves]
ADD CONSTRAINT [FK_RackShelf]
    FOREIGN KEY ([Rack_Id])
    REFERENCES [dbo].[Racks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RackShelf'
CREATE INDEX [IX_FK_RackShelf]
ON [dbo].[Shelves]
    ([Rack_Id]);
GO

-- Creating foreign key on [Shelf_Id] in table 'Bins'
ALTER TABLE [dbo].[Bins]
ADD CONSTRAINT [FK_ShelfBin]
    FOREIGN KEY ([Shelf_Id])
    REFERENCES [dbo].[Shelves]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShelfBin'
CREATE INDEX [IX_FK_ShelfBin]
ON [dbo].[Bins]
    ([Shelf_Id]);
GO

-- Creating foreign key on [Item_Quantity_Id] in table 'Item_QuantityBin'
ALTER TABLE [dbo].[Item_QuantityBin]
ADD CONSTRAINT [FK_Item_QuantityBin_Item_Quantity]
    FOREIGN KEY ([Item_Quantity_Id])
    REFERENCES [dbo].[Item_Quantity]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Bins_Id] in table 'Item_QuantityBin'
ALTER TABLE [dbo].[Item_QuantityBin]
ADD CONSTRAINT [FK_Item_QuantityBin_Bin]
    FOREIGN KEY ([Bins_Id])
    REFERENCES [dbo].[Bins]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Item_QuantityBin_Bin'
CREATE INDEX [IX_FK_Item_QuantityBin_Bin]
ON [dbo].[Item_QuantityBin]
    ([Bins_Id]);
GO

-- Creating foreign key on [POHeader_Id] in table 'PODetails'
ALTER TABLE [dbo].[PODetails]
ADD CONSTRAINT [FK_POHeaderPODetail]
    FOREIGN KEY ([POHeader_Id])
    REFERENCES [dbo].[POHeaders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_POHeaderPODetail'
CREATE INDEX [IX_FK_POHeaderPODetail]
ON [dbo].[PODetails]
    ([POHeader_Id]);
GO

-- Creating foreign key on [Vendors_Id] in table 'POHeaders'
ALTER TABLE [dbo].[POHeaders]
ADD CONSTRAINT [FK_POHeaderVendor]
    FOREIGN KEY ([Vendors_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_POHeaderVendor'
CREATE INDEX [IX_FK_POHeaderVendor]
ON [dbo].[POHeaders]
    ([Vendors_Id]);
GO

-- Creating foreign key on [POHeader_Id] in table 'Warehouses'
ALTER TABLE [dbo].[Warehouses]
ADD CONSTRAINT [FK_POHeaderWarehouse]
    FOREIGN KEY ([POHeader_Id])
    REFERENCES [dbo].[POHeaders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_POHeaderWarehouse'
CREATE INDEX [IX_FK_POHeaderWarehouse]
ON [dbo].[Warehouses]
    ([POHeader_Id]);
GO

-- Creating foreign key on [SOHeader_Id] in table 'SODetails'
ALTER TABLE [dbo].[SODetails]
ADD CONSTRAINT [FK_SOHeaderSODetail]
    FOREIGN KEY ([SOHeader_Id])
    REFERENCES [dbo].[SOHeaders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SOHeaderSODetail'
CREATE INDEX [IX_FK_SOHeaderSODetail]
ON [dbo].[SODetails]
    ([SOHeader_Id]);
GO

-- Creating foreign key on [Item_Master_Id] in table 'SODetails'
ALTER TABLE [dbo].[SODetails]
ADD CONSTRAINT [FK_Item_MasterSODetail]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterSODetail'
CREATE INDEX [IX_FK_Item_MasterSODetail]
ON [dbo].[SODetails]
    ([Item_Master_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_UsersContact]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersContact'
CREATE INDEX [IX_FK_UsersContact]
ON [dbo].[Contacts]
    ([User_Id]);
GO

-- Creating foreign key on [Vendor_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_VendorAddress]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VendorAddress'
CREATE INDEX [IX_FK_VendorAddress]
ON [dbo].[Addresses]
    ([Vendor_Id]);
GO

-- Creating foreign key on [Item_Master_Id] in table 'FrequencyDiscounts'
ALTER TABLE [dbo].[FrequencyDiscounts]
ADD CONSTRAINT [FK_Item_MasterFrequencyDiscounts]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterFrequencyDiscounts'
CREATE INDEX [IX_FK_Item_MasterFrequencyDiscounts]
ON [dbo].[FrequencyDiscounts]
    ([Item_Master_Id]);
GO

-- Creating foreign key on [Item_Master_Id] in table 'PricingBasis'
ALTER TABLE [dbo].[PricingBasis]
ADD CONSTRAINT [FK_Item_MasterPricingBasis]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterPricingBasis'
CREATE INDEX [IX_FK_Item_MasterPricingBasis]
ON [dbo].[PricingBasis]
    ([Item_Master_Id]);
GO

-- Creating foreign key on [Vendor_Id] in table 'PurchaseHistory'
ALTER TABLE [dbo].[PurchaseHistory]
ADD CONSTRAINT [FK_VendorPurchseHistory]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VendorPurchseHistory'
CREATE INDEX [IX_FK_VendorPurchseHistory]
ON [dbo].[PurchaseHistory]
    ([Vendor_Id]);
GO

-- Creating foreign key on [Item_Master_Id] in table 'PurchaseHistory'
ALTER TABLE [dbo].[PurchaseHistory]
ADD CONSTRAINT [FK_Item_MasterPurchseHistory]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterPurchseHistory'
CREATE INDEX [IX_FK_Item_MasterPurchseHistory]
ON [dbo].[PurchaseHistory]
    ([Item_Master_Id]);
GO

-- Creating foreign key on [Item_Master_Id] in table 'SalesHistories'
ALTER TABLE [dbo].[SalesHistories]
ADD CONSTRAINT [FK_Item_MasterSalesHistory]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterSalesHistory'
CREATE INDEX [IX_FK_Item_MasterSalesHistory]
ON [dbo].[SalesHistories]
    ([Item_Master_Id]);
GO

-- Creating foreign key on [Salesman_Id] in table 'SOHeaders'
ALTER TABLE [dbo].[SOHeaders]
ADD CONSTRAINT [FK_SalesmanSOHeader]
    FOREIGN KEY ([Salesman_Id])
    REFERENCES [dbo].[Salesmen]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SalesmanSOHeader'
CREATE INDEX [IX_FK_SalesmanSOHeader]
ON [dbo].[SOHeaders]
    ([Salesman_Id]);
GO

-- Creating foreign key on [Salesman_Id] in table 'Reminders'
ALTER TABLE [dbo].[Reminders]
ADD CONSTRAINT [FK_SalesmanReminder]
    FOREIGN KEY ([Salesman_Id])
    REFERENCES [dbo].[Salesmen]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SalesmanReminder'
CREATE INDEX [IX_FK_SalesmanReminder]
ON [dbo].[Reminders]
    ([Salesman_Id]);
GO

-- Creating foreign key on [Item_Master_Id] in table 'PODetails'
ALTER TABLE [dbo].[PODetails]
ADD CONSTRAINT [FK_Item_MasterPODetail]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterPODetail'
CREATE INDEX [IX_FK_Item_MasterPODetail]
ON [dbo].[PODetails]
    ([Item_Master_Id]);
GO

-- Creating foreign key on [Vendor_Id] in table 'Template_Item'
ALTER TABLE [dbo].[Template_Item]
ADD CONSTRAINT [FK_VendorVendor_Template]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VendorVendor_Template'
CREATE INDEX [IX_FK_VendorVendor_Template]
ON [dbo].[Template_Item]
    ([Vendor_Id]);
GO

-- Creating foreign key on [SalesmanId] in table 'SalesHistories'
ALTER TABLE [dbo].[SalesHistories]
ADD CONSTRAINT [FK_Salesman_SalesHistories]
    FOREIGN KEY ([SalesmanId])
    REFERENCES [dbo].[Salesmen]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Salesman_SalesHistories'
CREATE INDEX [IX_FK_Salesman_SalesHistories]
ON [dbo].[SalesHistories]
    ([SalesmanId]);
GO

-- Creating foreign key on [VendorId] in table 'SalesHistories'
ALTER TABLE [dbo].[SalesHistories]
ADD CONSTRAINT [FK_Vendor_SalesHistories]
    FOREIGN KEY ([VendorId])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Vendor_SalesHistories'
CREATE INDEX [IX_FK_Vendor_SalesHistories]
ON [dbo].[SalesHistories]
    ([VendorId]);
GO

-- Creating foreign key on [Id] in table 'SalesHistories'
ALTER TABLE [dbo].[SalesHistories]
ADD CONSTRAINT [FK_SalesHistories_SalesHistories]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[SalesHistories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [PODetail_Id] in table 'Item_Quantity'
ALTER TABLE [dbo].[Item_Quantity]
ADD CONSTRAINT [FK_PODetailQuantity]
    FOREIGN KEY ([PODetail_Id])
    REFERENCES [dbo].[PODetails]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PODetailQuantity'
CREATE INDEX [IX_FK_PODetailQuantity]
ON [dbo].[Item_Quantity]
    ([PODetail_Id]);
GO

-- Creating foreign key on [Contact_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_ContactAddress]
    FOREIGN KEY ([Contact_Id])
    REFERENCES [dbo].[Contacts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContactAddress'
CREATE INDEX [IX_FK_ContactAddress]
ON [dbo].[Addresses]
    ([Contact_Id]);
GO

-- Creating foreign key on [Salesman_Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_SalesmanContact]
    FOREIGN KEY ([Salesman_Id])
    REFERENCES [dbo].[Salesmen]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SalesmanContact'
CREATE INDEX [IX_FK_SalesmanContact]
ON [dbo].[Contacts]
    ([Salesman_Id]);
GO

-- Creating foreign key on [Item_Master_Id] in table 'PurchasePendings'
ALTER TABLE [dbo].[PurchasePendings]
ADD CONSTRAINT [FK_ItemMasterPurchasePending]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ItemMasterPurchasePending'
CREATE INDEX [IX_FK_ItemMasterPurchasePending]
ON [dbo].[PurchasePendings]
    ([Item_Master_Id]);
GO

-- Creating foreign key on [Item_Master_Id] in table 'SalesPendings'
ALTER TABLE [dbo].[SalesPendings]
ADD CONSTRAINT [FK_ItemMasterSalesPending]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ItemMasterSalesPending'
CREATE INDEX [IX_FK_ItemMasterSalesPending]
ON [dbo].[SalesPendings]
    ([Item_Master_Id]);
GO

-- Creating foreign key on [Quantity_Id] in table 'SalesPendings'
ALTER TABLE [dbo].[SalesPendings]
ADD CONSTRAINT [FK_QuantitySalesPending]
    FOREIGN KEY ([Quantity_Id])
    REFERENCES [dbo].[Item_Quantity]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_QuantitySalesPending'
CREATE INDEX [IX_FK_QuantitySalesPending]
ON [dbo].[SalesPendings]
    ([Quantity_Id]);
GO

-- Creating foreign key on [Vendor_Id] in table 'Notes'
ALTER TABLE [dbo].[Notes]
ADD CONSTRAINT [FK_VendorNote]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VendorNote'
CREATE INDEX [IX_FK_VendorNote]
ON [dbo].[Notes]
    ([Vendor_Id]);
GO

-- Creating foreign key on [Vendor_Id] in table 'PurchasePendings'
ALTER TABLE [dbo].[PurchasePendings]
ADD CONSTRAINT [FK_VendorPurchasePending]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VendorPurchasePending'
CREATE INDEX [IX_FK_VendorPurchasePending]
ON [dbo].[PurchasePendings]
    ([Vendor_Id]);
GO

-- Creating foreign key on [Customer_Id] in table 'Notes'
ALTER TABLE [dbo].[Notes]
ADD CONSTRAINT [FK_Customer_Note]
    FOREIGN KEY ([Customer_Id])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_Note'
CREATE INDEX [IX_FK_Customer_Note]
ON [dbo].[Notes]
    ([Customer_Id]);
GO

-- Creating foreign key on [CustomerId] in table 'SalesHistories'
ALTER TABLE [dbo].[SalesHistories]
ADD CONSTRAINT [FK_Customer_SalesHistories]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_SalesHistories'
CREATE INDEX [IX_FK_Customer_SalesHistories]
ON [dbo].[SalesHistories]
    ([CustomerId]);
GO

-- Creating foreign key on [Customer_Id] in table 'SalesPendings'
ALTER TABLE [dbo].[SalesPendings]
ADD CONSTRAINT [FK_CustomerSalesPending]
    FOREIGN KEY ([Customer_Id])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerSalesPending'
CREATE INDEX [IX_FK_CustomerSalesPending]
ON [dbo].[SalesPendings]
    ([Customer_Id]);
GO

-- Creating foreign key on [Salesman_Id] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [FK_SalesmanCustomer]
    FOREIGN KEY ([Salesman_Id])
    REFERENCES [dbo].[Salesmen]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SalesmanCustomer'
CREATE INDEX [IX_FK_SalesmanCustomer]
ON [dbo].[Customers]
    ([Salesman_Id]);
GO

-- Creating foreign key on [Customer_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_CustomerAddress]
    FOREIGN KEY ([Customer_Id])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerAddress'
CREATE INDEX [IX_FK_CustomerAddress]
ON [dbo].[Addresses]
    ([Customer_Id]);
GO

-- Creating foreign key on [Customer_Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_CustomerContact]
    FOREIGN KEY ([Customer_Id])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerContact'
CREATE INDEX [IX_FK_CustomerContact]
ON [dbo].[Contacts]
    ([Customer_Id]);
GO

-- Creating foreign key on [Client_Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_ClientUser]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientUser'
CREATE INDEX [IX_FK_ClientUser]
ON [dbo].[Users]
    ([Client_Id]);
GO

-- Creating foreign key on [Client_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_ClientAddress]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientAddress'
CREATE INDEX [IX_FK_ClientAddress]
ON [dbo].[Addresses]
    ([Client_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------