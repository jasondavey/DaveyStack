-- Script Date: 12/9/2015 5:40 PM  - ErikEJ.SqlCeScripting version 3.5.2.56
-- Database information:
-- Database: C:\Users\ye44727\Documents\Visual Studio 2015\Projects\DaveyStack\src\DaveyStack.DataAccess\DaveyStack.db
-- ServerVersion: 3.8.11.1
-- DatabaseSize: 6 KB
-- Created: 12/9/2015 1:27 PM

-- User Table information:
-- Number of tables: 4
-- OrderItems: -1 row(s)
-- Orders: -1 row(s)
-- Products: -1 row(s)
-- Vendors: -1 row(s)


SELECT 1;
--PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
DROP TABLE IF EXISTS [Vendors];
DROP TABLE IF EXISTS [Orders];
DROP TABLE IF EXISTS [OrderItems];
DROP TABLE IF EXISTS [Products];

CREATE TABLE [Vendors] (
  [ID] int NOT NULL
, [NAME] nvarchar(100) NOT NULL
, [ADDRESS_ID] int NOT NULL
, CONSTRAINT [sqlite_autoindex_Vendors_1] PRIMARY KEY ([ID])
);
CREATE TABLE [Products] (
  [ID] bigint NOT NULL
, [Name] nvarchar(100) NOT NULL
, [Description] nvarchar(400) NOT NULL
, CONSTRAINT [sqlite_master_PK_Products] PRIMARY KEY ([ID])
);
CREATE TABLE [Orders] (
  [ID] bigint NOT NULL
, [VENDOR_ID] tinyint NOT NULL
, [DATETIME_CREATED] datetime NOT NULL
, CONSTRAINT [sqlite_master_PK_Orders] PRIMARY KEY ([ID])
);
CREATE TABLE [OrderItems] (
  [ID] bigint NOT NULL
, [ORDER_ID] int NOT NULL
, [PRODUCT_ID] int NOT NULL
, [COUNT] tinyint NOT NULL
, CONSTRAINT [sqlite_master_PK_OrderItems] PRIMARY KEY ([ID])
);
INSERT INTO [Vendors] ([ID],[NAME],[ADDRESS_ID]) VALUES (1,'Davey, Inc',1);
INSERT INTO [Vendors] ([ID],[NAME],[ADDRESS_ID]) VALUES (2,'Minted',2);
INSERT INTO [Vendors] ([ID],[NAME],[ADDRESS_ID]) VALUES (3,'Shutterfly',3);
INSERT INTO [Products] ([ID],[Name],[Description]) VALUES (1,'Stamps','Picture it Postage');
INSERT INTO [Orders] ([ID],[VENDOR_ID],[DATETIME_CREATED]) VALUES (1,1,'2015-12-10');
INSERT INTO [Orders] ([ID],[VENDOR_ID],[DATETIME_CREATED]) VALUES (2,1,'2015-12-10');
INSERT INTO [OrderItems] ([ID],[ORDER_ID],[PRODUCT_ID],[COUNT]) VALUES (1,1,1,3);
INSERT INTO [OrderItems] ([ID],[ORDER_ID],[PRODUCT_ID],[COUNT]) VALUES (2,1,1,1);
INSERT INTO [OrderItems] ([ID],[ORDER_ID],[PRODUCT_ID],[COUNT]) VALUES (3,1,1,3);
INSERT INTO [OrderItems] ([ID],[ORDER_ID],[PRODUCT_ID],[COUNT]) VALUES (4,1,1,2);
COMMIT;

