
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/01/2015 23:33:36
-- Generated from EDMX file: C:\Users\dennis\Desktop\New Inventory System\ABC-Inventory-mvc\ABC-Inventory\ABC-Inventory\Client.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ABC_Client];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ClientAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_ClientAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientBilling]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Clients] DROP CONSTRAINT [FK_ClientBilling];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientContact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contacts] DROP CONSTRAINT [FK_ClientContact];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOptions]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Clients] DROP CONSTRAINT [FK_ClientOptions];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientSettings]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Clients] DROP CONSTRAINT [FK_ClientSettings];
GO
IF OBJECT_ID(N'[dbo].[FK_ContactAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Addresses] DROP CONSTRAINT [FK_ContactAddress];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Addresses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Addresses];
GO
IF OBJECT_ID(N'[dbo].[Billings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Billings];
GO
IF OBJECT_ID(N'[dbo].[Clients]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Clients];
GO
IF OBJECT_ID(N'[dbo].[Contacts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contacts];
GO
IF OBJECT_ID(N'[dbo].[Options]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Options];
GO
IF OBJECT_ID(N'[dbo].[Settings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Settings];
GO
IF OBJECT_ID(N'[dbo].[SystemStatus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SystemStatus];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

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
    [AddressType] varchar(20)  NULL,
    [Client_Id] int  NULL,
    [Contact_Id] int  NULL
);
GO

-- Creating table 'Billings'
CREATE TABLE [dbo].[Billings] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [InceptionDate] datetime  NOT NULL,
    [ExceptionDate] datetime  NOT NULL,
    [Amount] decimal(18,0)  NOT NULL,
    [NextPaymentDate] datetime  NOT NULL,
    [CCNumber] nvarchar(24)  NOT NULL,
    [CCExpDate] nvarchar(8)  NOT NULL,
    [CCSV] nvarchar(6)  NOT NULL,
    [Client_Id] int  NOT NULL
);
GO

-- Creating table 'Clients'
CREATE TABLE [dbo].[Clients] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Clientname] nvarchar(max)  NOT NULL,
    [CageCode] nvarchar(max)  NOT NULL,
    [SICCode] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [ExpDate] datetime  NOT NULL
);
GO

-- Creating table 'Contacts'
CREATE TABLE [dbo].[Contacts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(128)  NOT NULL,
    [ContactName] nvarchar(128)  NOT NULL,
    [Phone] nvarchar(20)  NOT NULL,
    [CellPhone] nvarchar(20)  NOT NULL,
    [Fax] nvarchar(20)  NOT NULL,
    [Email] nvarchar(255)  NOT NULL,
    [ContactType] int  NOT NULL,
    [Client_Id] int  NULL,
    [User_Id] int  NULL
);
GO

-- Creating table 'Options'
CREATE TABLE [dbo].[Options] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Purchasing] bit  NULL,
    [Item] bit  NULL,
    [Sales] bit  NULL,
    [Warehouse] bit  NULL,
    [Demo] bit  NULL,
    [ExpDate] datetime  NULL,
    [Client_Id] int  NOT NULL
);
GO

-- Creating table 'Settings'
CREATE TABLE [dbo].[Settings] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CurrentVersion] int  NULL,
    [Client_Id] int  NOT NULL
);
GO

-- Creating table 'SystemStatus1'
CREATE TABLE [dbo].[SystemStatus1] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CurrentVersion] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserId] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Client_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Addresses'
ALTER TABLE [dbo].[Addresses]
ADD CONSTRAINT [PK_Addresses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Billings'
ALTER TABLE [dbo].[Billings]
ADD CONSTRAINT [PK_Billings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Clients'
ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [PK_Clients]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [PK_Contacts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Options'
ALTER TABLE [dbo].[Options]
ADD CONSTRAINT [PK_Options]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Settings'
ALTER TABLE [dbo].[Settings]
ADD CONSTRAINT [PK_Settings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SystemStatus1'
ALTER TABLE [dbo].[SystemStatus1]
ADD CONSTRAINT [PK_SystemStatus1]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

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

-- Creating foreign key on [Client_Id] in table 'Contacts'
ALTER TABLE [dbo].[Contacts]
ADD CONSTRAINT [FK_ClientContact]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientContact'
CREATE INDEX [IX_FK_ClientContact]
ON [dbo].[Contacts]
    ([Client_Id]);
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

-- Creating foreign key on [Client_Id] in table 'Options'
ALTER TABLE [dbo].[Options]
ADD CONSTRAINT [FK_ClientOption]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOption'
CREATE INDEX [IX_FK_ClientOption]
ON [dbo].[Options]
    ([Client_Id]);
GO

-- Creating foreign key on [Client_Id] in table 'Settings'
ALTER TABLE [dbo].[Settings]
ADD CONSTRAINT [FK_ClientSetting]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientSetting'
CREATE INDEX [IX_FK_ClientSetting]
ON [dbo].[Settings]
    ([Client_Id]);
GO

-- Creating foreign key on [Client_Id] in table 'Billings'
ALTER TABLE [dbo].[Billings]
ADD CONSTRAINT [FK_ClientBilling]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientBilling'
CREATE INDEX [IX_FK_ClientBilling]
ON [dbo].[Billings]
    ([Client_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------