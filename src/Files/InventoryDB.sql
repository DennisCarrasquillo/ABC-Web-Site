
use ABCInventory
CREATE LOGIN &UserId WITH PASSWORD = '&Password'
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'&UserId')
BEGIN
    CREATE USER &UserId FOR LOGIN &UserId
    EXEC sp_addrolemember N'db_owner', N'&UserId'
END;

SET QUOTED_IDENTIFIER OFF;
USE [ABCInventory];
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]')
-- Creating table 'Lots'
CREATE TABLE [dbo].[Lots] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Lot_Number] nvarchar(64)  NOT NULL,
    [Lot_Date] datetime  NOT NULL,
    [Vendor_Id] int  NOT NULL
);

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

-- Creating table 'Item_Alternates'
CREATE TABLE [dbo].[Item_Alternates] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Alternate_Number] nvarchar(64)  NOT NULL,
    [Type] int  NOT NULL,
    [Item_Master_Id] int  NOT NULL
);

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

-- Creating table 'Item_Images'
CREATE TABLE [dbo].[Item_Images] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [URL] nvarchar(255)  NOT NULL,
    [Item_Master_Id] int  NOT NULL
);

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

-- Creating table 'Warehouses'
CREATE TABLE [dbo].[Warehouses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [WarehouseName] nvarchar(64)  NOT NULL,
    [POHeader_Id] int  NOT NULL
);

-- Creating table 'Locations'
CREATE TABLE [dbo].[Locations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LocationNane] nvarchar(64)  NOT NULL,
    [LocationType] int  NOT NULL,
    [Warehouse_Id] int  NOT NULL
);

-- Creating table 'FloorPlans'
CREATE TABLE [dbo].[FloorPlans] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Warehouse_Id] int  NOT NULL
);

-- Creating table 'Racks'
CREATE TABLE [dbo].[Racks] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RackName] nvarchar(64)  NOT NULL,
    [Width] decimal(18,0)  NOT NULL,
    [Depth] decimal(18,0)  NOT NULL,
    [Location_Id] int  NOT NULL
);

-- Creating table 'Shelves'
CREATE TABLE [dbo].[Shelves] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ShelfNumber] int  NOT NULL,
    [Height] decimal(18,0)  NOT NULL,
    [Rack_Id] int  NOT NULL
);

-- Creating table 'Bins'
CREATE TABLE [dbo].[Bins] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [BinNumber] int  NOT NULL,
    [Width] decimal(18,0)  NOT NULL,
    [Shelf_Id] int  NOT NULL
);

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

-- Creating table 'SOHeaders'
CREATE TABLE [dbo].[SOHeaders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SONumber] int  NOT NULL,
    [Customer_Id] int  NOT NULL,
    [Salesman_Id] int  NOT NULL
);

-- Creating table 'SODetails'
CREATE TABLE [dbo].[SODetails] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SalePrice] decimal(18,0)  NOT NULL,
    [Quantity] int  NOT NULL,
    [SOHeader_Id] int  NOT NULL,
    [Item_Master_Id] int  NOT NULL
);

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserID] nvarchar(12)  NOT NULL,
    [Password] nvarchar(20)  NOT NULL,
    [Inactive] bit  NOT NULL,
    [Priveleges] varchar(max)  NULL,
    [Client_Id] int  NULL
);

-- Creating table 'Settings'
CREATE TABLE [dbo].[Settings] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [POPrefix] nvarchar(4)  NULL,
    [NextPONumber] int  NULL,
    [SOPrefix] nvarchar(6)  NULL,
    [NextSONumber] int  NULL,
    [SiteSettings] nchar(4000)  NULL
);

-- Creating table 'Reminders'
CREATE TABLE [dbo].[Reminders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Note] nvarchar(max)  NOT NULL,
    [ReminderDateTime] datetime  NOT NULL,
    [ReminderType] int  NOT NULL,
    [Salesman_Id] int  NOT NULL
);

-- Creating table 'States'
CREATE TABLE [dbo].[States] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(4)  NOT NULL,
    [Description] nvarchar(40)  NOT NULL
);

-- Creating table 'PricingBasis'
CREATE TABLE [dbo].[PricingBasis] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Basis] int  NOT NULL,
    [Price] decimal(18,6)  NOT NULL,
    [MinQuantity] int  NOT NULL,
    [Item_Master_Id] int  NULL
);

-- Creating table 'FrequencyDiscounts'
CREATE TABLE [dbo].[FrequencyDiscounts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Frequency] int  NOT NULL,
    [DiscountPercent] decimal(8,4)  NOT NULL,
    [Item_Master_Id] int  NULL
);

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

-- Creating table 'ColorStyles'
CREATE TABLE [dbo].[ColorStyles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(20)  NOT NULL,
    [Style] varchar(max)  NOT NULL
);

-- Creating table 'Salesmen'
CREATE TABLE [dbo].[Salesmen] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Commission] decimal(18,0)  NOT NULL
);

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

-- Creating table 'Template_Item'
CREATE TABLE [dbo].[Template_Item] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TemplateName] varchar(64)  NOT NULL,
    [Template] varchar(max)  NOT NULL,
    [Vendor_Id] int  NULL,
    [Source] varchar(20)  NOT NULL
);

-- Creating table 'Reports'
CREATE TABLE [dbo].[Reports] (
    [id] int IDENTITY(1,1) NOT NULL,
    [ReportName] nvarchar(120)  NOT NULL,
    [SubSystem] nvarchar(20)  NOT NULL
);

-- Creating table 'dictionaries'
CREATE TABLE [dbo].[dictionaries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FieldName] varchar(20)  NOT NULL,
    [FieldType] int  NOT NULL,
    [Iscontainer] bit  NOT NULL,
    [MaxLines] int  NOT NULL,
    [SubSystem] int  NOT NULL
);

-- Creating table 'Notes'
CREATE TABLE [dbo].[Notes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NoteInfo] nvarchar(max)  NOT NULL,
    [NoteDate] datetime  NOT NULL,
    [Customer_Id] int  NULL,
    [Vendor_Id] int  NULL
);

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

-- Creating table 'Item_QuantityBin'
CREATE TABLE [dbo].[Item_QuantityBin] (
    [Item_Quantity_Id] int  NOT NULL,
    [Bins_Id] int  NOT NULL
);

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Lots'
ALTER TABLE [dbo].[Lots]
ADD CONSTRAINT [PK_Lots]
    PRIMARY KEY CLUSTERED ([Id] ASC);

-- Creating primary key on [Id] in table 'Item_Quantity'
ALTER TABLE [dbo].[Item_Quantity]
ADD CONSTRAINT [PK_Item_Quantity]
    PRIMARY KEY CLUSTERED ([Id] ASC);

-- Creating primary key on [Id] in table 'Item_Alternates'
ALTER TABLE [dbo].[Item_Alternates]
ADD CONSTRAINT [PK_Item_Alternates]
    PRIMARY KEY CLUSTERED ([Id] ASC);

-- Creating primary key on [Id] in table 'Item_Master'
ALTER TABLE [dbo].[Item_Master]
ADD CONSTRAINT [PK_Item_Master]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Item_Images'
ALTER TABLE [dbo].[Item_Images]
ADD CONSTRAINT [PK_Item_Images]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_Addresses]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [PK_Contacts]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Vendors'
ALTER TABLE [dbo].[Vendors]
ADD CONSTRAINT [PK_Vendors]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Warehouses'
ALTER TABLE [dbo].[Warehouses]
ADD CONSTRAINT [PK_Warehouses]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [PK_Locations]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'FloorPlans'
ALTER TABLE [dbo].[FloorPlans]
ADD CONSTRAINT [PK_FloorPlans]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Racks'
ALTER TABLE [dbo].[Racks]
ADD CONSTRAINT [PK_Racks]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Shelves'
ALTER TABLE [dbo].[Shelves]
ADD CONSTRAINT [PK_Shelves]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Bins'
ALTER TABLE [dbo].[Bins]
ADD CONSTRAINT [PK_Bins]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'POHeaders'
ALTER TABLE [dbo].[POHeaders]
ADD CONSTRAINT [PK_POHeaders]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'PODetails'
ALTER TABLE [dbo].[PODetails]
ADD CONSTRAINT [PK_PODetails]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'SOHeaders'
ALTER TABLE [dbo].[SOHeaders]
ADD CONSTRAINT [PK_SOHeaders]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'SODetails'
ALTER TABLE [dbo].[SODetails]
ADD CONSTRAINT [PK_SODetails]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Settings'
ALTER TABLE [dbo].[Settings]
ADD CONSTRAINT [PK_Settings]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Reminders'
ALTER TABLE [dbo].[Reminders]
ADD CONSTRAINT [PK_Reminders]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'States'
ALTER TABLE [dbo].[States]
ADD CONSTRAINT [PK_States]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'PricingBasis'
ALTER TABLE [dbo].[PricingBasis]
ADD CONSTRAINT [PK_PricingBasis]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'FrequencyDiscounts'
ALTER TABLE [dbo].[FrequencyDiscounts]
ADD CONSTRAINT [PK_FrequencyDiscounts]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'PurchaseHistory'
ALTER TABLE [dbo].[PurchaseHistory]
ADD CONSTRAINT [PK_PurchaseHistory]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'SalesHistories'
ALTER TABLE [dbo].[SalesHistories]
ADD CONSTRAINT [PK_SalesHistories]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'ColorStyles'
ALTER TABLE [dbo].[ColorStyles]
ADD CONSTRAINT [PK_ColorStyles]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Salesmen'
ALTER TABLE [dbo].[Salesmen]
ADD CONSTRAINT [PK_Salesmen]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [id] in table 'Template_Document'
ALTER TABLE [dbo].[Template_Document]
ADD CONSTRAINT [PK_Template_Document]
    PRIMARY KEY CLUSTERED ([id] ASC);


-- Creating primary key on [Id] in table 'Template_Item'
ALTER TABLE [dbo].[Template_Item]
ADD CONSTRAINT [PK_Template_Item]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [id] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [PK_Reports]
    PRIMARY KEY CLUSTERED ([id] ASC);


-- Creating primary key on [Id] in table 'dictionaries'
ALTER TABLE [dbo].[dictionaries]
ADD CONSTRAINT [PK_dictionaries]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Notes'
ALTER TABLE [dbo].[Notes]
ADD CONSTRAINT [PK_Notes]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'PurchasePendings'
ALTER TABLE [dbo].[PurchasePendings]
ADD CONSTRAINT [PK_PurchasePendings]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'SalesPendings'
ALTER TABLE [dbo].[SalesPendings]
ADD CONSTRAINT [PK_SalesPendings]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Id] in table 'Clients'
ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [PK_Clients]
    PRIMARY KEY CLUSTERED ([Id] ASC);


-- Creating primary key on [Item_Quantity_Id], [Bins_Id] in table 'Item_QuantityBin'
ALTER TABLE [dbo].[Item_QuantityBin]
ADD CONSTRAINT [PK_Item_QuantityBin]
    PRIMARY KEY CLUSTERED ([Item_Quantity_Id], [Bins_Id] ASC);


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


-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterItem_Quantity'
CREATE INDEX [IX_FK_Item_MasterItem_Quantity]
ON [dbo].[Item_Quantity]
    ([Item_Master_Id]);


-- Creating foreign key on [Lot_Id] in table 'Item_Quantity'
ALTER TABLE [dbo].[Item_Quantity]
ADD CONSTRAINT [FK_LotsItem_Quantity]
    FOREIGN KEY ([Lot_Id])
    REFERENCES [dbo].[Lots]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_LotsItem_Quantity'
CREATE INDEX [IX_FK_LotsItem_Quantity]
ON [dbo].[Item_Quantity]
    ([Lot_Id]);


-- Creating foreign key on [Item_Master_Id] in table 'Item_Alternates'
ALTER TABLE [dbo].[Item_Alternates]
ADD CONSTRAINT [FK_Item_MasterItem_Alternates]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterItem_Alternates'
CREATE INDEX [IX_FK_Item_MasterItem_Alternates]
ON [dbo].[Item_Alternates]
    ([Item_Master_Id]);


-- Creating foreign key on [Item_Master_Id] in table 'Item_Images'
ALTER TABLE [dbo].[Item_Images]
ADD CONSTRAINT [FK_Item_MasterItem_Images]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterItem_Images'
CREATE INDEX [IX_FK_Item_MasterItem_Images]
ON [dbo].[Item_Images]
    ([Item_Master_Id]);


-- Creating foreign key on [Vendor_Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_VendorContact]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_VendorContact'
CREATE INDEX [IX_FK_VendorContact]
ON [dbo].[Contacts]
    ([Vendor_Id]);


-- Creating foreign key on [Vendor_Id] in table 'Lots'
ALTER TABLE [dbo].[Lots]
ADD CONSTRAINT [FK_VendorLots]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_VendorLots'
CREATE INDEX [IX_FK_VendorLots]
ON [dbo].[Lots]
    ([Vendor_Id]);


-- Creating foreign key on [Vendor_Id] in table 'Item_Quantity'
ALTER TABLE [dbo].[Item_Quantity]
ADD CONSTRAINT [FK_VendorItem_Quantity]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_VendorItem_Quantity'
CREATE INDEX [IX_FK_VendorItem_Quantity]
ON [dbo].[Item_Quantity]
    ([Vendor_Id]);


-- Creating foreign key on [Warehouse_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_WarehouseAddress]
    FOREIGN KEY ([Warehouse_Id])
    REFERENCES [dbo].[Warehouses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_WarehouseAddress'
CREATE INDEX [IX_FK_WarehouseAddress]
ON [dbo].[Addresses]
    ([Warehouse_Id]);


-- Creating foreign key on [Warehouse_Id] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [FK_WarehouseLocations]
    FOREIGN KEY ([Warehouse_Id])
    REFERENCES [dbo].[Warehouses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_WarehouseLocations'
CREATE INDEX [IX_FK_WarehouseLocations]
ON [dbo].[Locations]
    ([Warehouse_Id]);


-- Creating foreign key on [Warehouse_Id] in table 'FloorPlans'
ALTER TABLE [dbo].[FloorPlans]
ADD CONSTRAINT [FK_WarehouseFloorPlan]
    FOREIGN KEY ([Warehouse_Id])
    REFERENCES [dbo].[Warehouses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_WarehouseFloorPlan'
CREATE INDEX [IX_FK_WarehouseFloorPlan]
ON [dbo].[FloorPlans]
    ([Warehouse_Id]);


-- Creating foreign key on [Location_Id] in table 'Racks'
ALTER TABLE [dbo].[Racks]
ADD CONSTRAINT [FK_LocationsRack]
    FOREIGN KEY ([Location_Id])
    REFERENCES [dbo].[Locations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_LocationsRack'
CREATE INDEX [IX_FK_LocationsRack]
ON [dbo].[Racks]
    ([Location_Id]);


-- Creating foreign key on [Rack_Id] in table 'Shelves'
ALTER TABLE [dbo].[Shelves]
ADD CONSTRAINT [FK_RackShelf]
    FOREIGN KEY ([Rack_Id])
    REFERENCES [dbo].[Racks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_RackShelf'
CREATE INDEX [IX_FK_RackShelf]
ON [dbo].[Shelves]
    ([Rack_Id]);


-- Creating foreign key on [Shelf_Id] in table 'Bins'
ALTER TABLE [dbo].[Bins]
ADD CONSTRAINT [FK_ShelfBin]
    FOREIGN KEY ([Shelf_Id])
    REFERENCES [dbo].[Shelves]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_ShelfBin'
CREATE INDEX [IX_FK_ShelfBin]
ON [dbo].[Bins]
    ([Shelf_Id]);


-- Creating foreign key on [Item_Quantity_Id] in table 'Item_QuantityBin'
ALTER TABLE [dbo].[Item_QuantityBin]
ADD CONSTRAINT [FK_Item_QuantityBin_Item_Quantity]
    FOREIGN KEY ([Item_Quantity_Id])
    REFERENCES [dbo].[Item_Quantity]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating foreign key on [Bins_Id] in table 'Item_QuantityBin'
ALTER TABLE [dbo].[Item_QuantityBin]
ADD CONSTRAINT [FK_Item_QuantityBin_Bin]
    FOREIGN KEY ([Bins_Id])
    REFERENCES [dbo].[Bins]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_Item_QuantityBin_Bin'
CREATE INDEX [IX_FK_Item_QuantityBin_Bin]
ON [dbo].[Item_QuantityBin]
    ([Bins_Id]);


-- Creating foreign key on [POHeader_Id] in table 'PODetails'
ALTER TABLE [dbo].[PODetails]
ADD CONSTRAINT [FK_POHeaderPODetail]
    FOREIGN KEY ([POHeader_Id])
    REFERENCES [dbo].[POHeaders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_POHeaderPODetail'
CREATE INDEX [IX_FK_POHeaderPODetail]
ON [dbo].[PODetails]
    ([POHeader_Id]);


-- Creating foreign key on [Vendors_Id] in table 'POHeaders'
ALTER TABLE [dbo].[POHeaders]
ADD CONSTRAINT [FK_POHeaderVendor]
    FOREIGN KEY ([Vendors_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_POHeaderVendor'
CREATE INDEX [IX_FK_POHeaderVendor]
ON [dbo].[POHeaders]
    ([Vendors_Id]);


-- Creating foreign key on [POHeader_Id] in table 'Warehouses'
ALTER TABLE [dbo].[Warehouses]
ADD CONSTRAINT [FK_POHeaderWarehouse]
    FOREIGN KEY ([POHeader_Id])
    REFERENCES [dbo].[POHeaders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_POHeaderWarehouse'
CREATE INDEX [IX_FK_POHeaderWarehouse]
ON [dbo].[Warehouses]
    ([POHeader_Id]);


-- Creating foreign key on [SOHeader_Id] in table 'SODetails'
ALTER TABLE [dbo].[SODetails]
ADD CONSTRAINT [FK_SOHeaderSODetail]
    FOREIGN KEY ([SOHeader_Id])
    REFERENCES [dbo].[SOHeaders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_SOHeaderSODetail'
CREATE INDEX [IX_FK_SOHeaderSODetail]
ON [dbo].[SODetails]
    ([SOHeader_Id]);


-- Creating foreign key on [Item_Master_Id] in table 'SODetails'
ALTER TABLE [dbo].[SODetails]
ADD CONSTRAINT [FK_Item_MasterSODetail]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterSODetail'
CREATE INDEX [IX_FK_Item_MasterSODetail]
ON [dbo].[SODetails]
    ([Item_Master_Id]);


-- Creating foreign key on [User_Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_UsersContact]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_UsersContact'
CREATE INDEX [IX_FK_UsersContact]
ON [dbo].[Contacts]
    ([User_Id]);


-- Creating foreign key on [Vendor_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_VendorAddress]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_VendorAddress'
CREATE INDEX [IX_FK_VendorAddress]
ON [dbo].[Addresses]
    ([Vendor_Id]);


-- Creating foreign key on [Item_Master_Id] in table 'FrequencyDiscounts'
ALTER TABLE [dbo].[FrequencyDiscounts]
ADD CONSTRAINT [FK_Item_MasterFrequencyDiscounts]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterFrequencyDiscounts'
CREATE INDEX [IX_FK_Item_MasterFrequencyDiscounts]
ON [dbo].[FrequencyDiscounts]
    ([Item_Master_Id]);


-- Creating foreign key on [Item_Master_Id] in table 'PricingBasis'
ALTER TABLE [dbo].[PricingBasis]
ADD CONSTRAINT [FK_Item_MasterPricingBasis]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterPricingBasis'
CREATE INDEX [IX_FK_Item_MasterPricingBasis]
ON [dbo].[PricingBasis]
    ([Item_Master_Id]);


-- Creating foreign key on [Vendor_Id] in table 'PurchaseHistory'
ALTER TABLE [dbo].[PurchaseHistory]
ADD CONSTRAINT [FK_VendorPurchseHistory]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_VendorPurchseHistory'
CREATE INDEX [IX_FK_VendorPurchseHistory]
ON [dbo].[PurchaseHistory]
    ([Vendor_Id]);


-- Creating foreign key on [Item_Master_Id] in table 'PurchaseHistory'
ALTER TABLE [dbo].[PurchaseHistory]
ADD CONSTRAINT [FK_Item_MasterPurchseHistory]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterPurchseHistory'
CREATE INDEX [IX_FK_Item_MasterPurchseHistory]
ON [dbo].[PurchaseHistory]
    ([Item_Master_Id]);


-- Creating foreign key on [Item_Master_Id] in table 'SalesHistories'
ALTER TABLE [dbo].[SalesHistories]
ADD CONSTRAINT [FK_Item_MasterSalesHistory]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterSalesHistory'
CREATE INDEX [IX_FK_Item_MasterSalesHistory]
ON [dbo].[SalesHistories]
    ([Item_Master_Id]);


-- Creating foreign key on [Salesman_Id] in table 'SOHeaders'
ALTER TABLE [dbo].[SOHeaders]
ADD CONSTRAINT [FK_SalesmanSOHeader]
    FOREIGN KEY ([Salesman_Id])
    REFERENCES [dbo].[Salesmen]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_SalesmanSOHeader'
CREATE INDEX [IX_FK_SalesmanSOHeader]
ON [dbo].[SOHeaders]
    ([Salesman_Id]);


-- Creating foreign key on [Salesman_Id] in table 'Reminders'
ALTER TABLE [dbo].[Reminders]
ADD CONSTRAINT [FK_SalesmanReminder]
    FOREIGN KEY ([Salesman_Id])
    REFERENCES [dbo].[Salesmen]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_SalesmanReminder'
CREATE INDEX [IX_FK_SalesmanReminder]
ON [dbo].[Reminders]
    ([Salesman_Id]);


-- Creating foreign key on [Item_Master_Id] in table 'PODetails'
ALTER TABLE [dbo].[PODetails]
ADD CONSTRAINT [FK_Item_MasterPODetail]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_Item_MasterPODetail'
CREATE INDEX [IX_FK_Item_MasterPODetail]
ON [dbo].[PODetails]
    ([Item_Master_Id]);


-- Creating foreign key on [Vendor_Id] in table 'Template_Item'
ALTER TABLE [dbo].[Template_Item]
ADD CONSTRAINT [FK_VendorVendor_Template]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_VendorVendor_Template'
CREATE INDEX [IX_FK_VendorVendor_Template]
ON [dbo].[Template_Item]
    ([Vendor_Id]);


-- Creating foreign key on [SalesmanId] in table 'SalesHistories'
ALTER TABLE [dbo].[SalesHistories]
ADD CONSTRAINT [FK_Salesman_SalesHistories]
    FOREIGN KEY ([SalesmanId])
    REFERENCES [dbo].[Salesmen]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_Salesman_SalesHistories'
CREATE INDEX [IX_FK_Salesman_SalesHistories]
ON [dbo].[SalesHistories]
    ([SalesmanId]);


-- Creating foreign key on [VendorId] in table 'SalesHistories'
ALTER TABLE [dbo].[SalesHistories]
ADD CONSTRAINT [FK_Vendor_SalesHistories]
    FOREIGN KEY ([VendorId])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_Vendor_SalesHistories'
CREATE INDEX [IX_FK_Vendor_SalesHistories]
ON [dbo].[SalesHistories]
    ([VendorId]);


-- Creating foreign key on [Id] in table 'SalesHistories'
ALTER TABLE [dbo].[SalesHistories]
ADD CONSTRAINT [FK_SalesHistories_SalesHistories]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[SalesHistories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating foreign key on [PODetail_Id] in table 'Item_Quantity'
ALTER TABLE [dbo].[Item_Quantity]
ADD CONSTRAINT [FK_PODetailQuantity]
    FOREIGN KEY ([PODetail_Id])
    REFERENCES [dbo].[PODetails]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_PODetailQuantity'
CREATE INDEX [IX_FK_PODetailQuantity]
ON [dbo].[Item_Quantity]
    ([PODetail_Id]);


-- Creating foreign key on [Contact_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_ContactAddress]
    FOREIGN KEY ([Contact_Id])
    REFERENCES [dbo].[Contacts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_ContactAddress'
CREATE INDEX [IX_FK_ContactAddress]
ON [dbo].[Addresses]
    ([Contact_Id]);


-- Creating foreign key on [Salesman_Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_SalesmanContact]
    FOREIGN KEY ([Salesman_Id])
    REFERENCES [dbo].[Salesmen]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_SalesmanContact'
CREATE INDEX [IX_FK_SalesmanContact]
ON [dbo].[Contacts]
    ([Salesman_Id]);


-- Creating foreign key on [Item_Master_Id] in table 'PurchasePendings'
ALTER TABLE [dbo].[PurchasePendings]
ADD CONSTRAINT [FK_ItemMasterPurchasePending]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_ItemMasterPurchasePending'
CREATE INDEX [IX_FK_ItemMasterPurchasePending]
ON [dbo].[PurchasePendings]
    ([Item_Master_Id]);


-- Creating foreign key on [Item_Master_Id] in table 'SalesPendings'
ALTER TABLE [dbo].[SalesPendings]
ADD CONSTRAINT [FK_ItemMasterSalesPending]
    FOREIGN KEY ([Item_Master_Id])
    REFERENCES [dbo].[Item_Master]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_ItemMasterSalesPending'
CREATE INDEX [IX_FK_ItemMasterSalesPending]
ON [dbo].[SalesPendings]
    ([Item_Master_Id]);


-- Creating foreign key on [Quantity_Id] in table 'SalesPendings'
ALTER TABLE [dbo].[SalesPendings]
ADD CONSTRAINT [FK_QuantitySalesPending]
    FOREIGN KEY ([Quantity_Id])
    REFERENCES [dbo].[Item_Quantity]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_QuantitySalesPending'
CREATE INDEX [IX_FK_QuantitySalesPending]
ON [dbo].[SalesPendings]
    ([Quantity_Id]);


-- Creating foreign key on [Vendor_Id] in table 'Notes'
ALTER TABLE [dbo].[Notes]
ADD CONSTRAINT [FK_VendorNote]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_VendorNote'
CREATE INDEX [IX_FK_VendorNote]
ON [dbo].[Notes]
    ([Vendor_Id]);


-- Creating foreign key on [Vendor_Id] in table 'PurchasePendings'
ALTER TABLE [dbo].[PurchasePendings]
ADD CONSTRAINT [FK_VendorPurchasePending]
    FOREIGN KEY ([Vendor_Id])
    REFERENCES [dbo].[Vendors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_VendorPurchasePending'
CREATE INDEX [IX_FK_VendorPurchasePending]
ON [dbo].[PurchasePendings]
    ([Vendor_Id]);


-- Creating foreign key on [Customer_Id] in table 'Notes'
ALTER TABLE [dbo].[Notes]
ADD CONSTRAINT [FK_Customer_Note]
    FOREIGN KEY ([Customer_Id])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_Note'
CREATE INDEX [IX_FK_Customer_Note]
ON [dbo].[Notes]
    ([Customer_Id]);


-- Creating foreign key on [CustomerId] in table 'SalesHistories'
ALTER TABLE [dbo].[SalesHistories]
ADD CONSTRAINT [FK_Customer_SalesHistories]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_SalesHistories'
CREATE INDEX [IX_FK_Customer_SalesHistories]
ON [dbo].[SalesHistories]
    ([CustomerId]);


-- Creating foreign key on [Customer_Id] in table 'SalesPendings'
ALTER TABLE [dbo].[SalesPendings]
ADD CONSTRAINT [FK_CustomerSalesPending]
    FOREIGN KEY ([Customer_Id])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerSalesPending'
CREATE INDEX [IX_FK_CustomerSalesPending]
ON [dbo].[SalesPendings]
    ([Customer_Id]);


-- Creating foreign key on [Salesman_Id] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [FK_SalesmanCustomer]
    FOREIGN KEY ([Salesman_Id])
    REFERENCES [dbo].[Salesmen]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_SalesmanCustomer'
CREATE INDEX [IX_FK_SalesmanCustomer]
ON [dbo].[Customers]
    ([Salesman_Id]);


-- Creating foreign key on [Customer_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_CustomerAddress]
    FOREIGN KEY ([Customer_Id])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerAddress'
CREATE INDEX [IX_FK_CustomerAddress]
ON [dbo].[Addresses]
    ([Customer_Id]);


-- Creating foreign key on [Customer_Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_CustomerContact]
    FOREIGN KEY ([Customer_Id])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerContact'
CREATE INDEX [IX_FK_CustomerContact]
ON [dbo].[Contacts]
    ([Customer_Id]);


-- Creating foreign key on [Client_Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_ClientUser]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_ClientUser'
CREATE INDEX [IX_FK_ClientUser]
ON [dbo].[Users]
    ([Client_Id]);


-- Creating foreign key on [Client_Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [FK_ClientAddress]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;


-- Creating non-clustered index for FOREIGN KEY 'FK_ClientAddress'
CREATE INDEX [IX_FK_ClientAddress]
ON [dbo].[Addresses]
    ([Client_Id]);


-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------