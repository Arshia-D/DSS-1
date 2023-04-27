
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 05/24/2019 15:38:18
-- Generated from EDMX file: D:\Sites\karajmedia.ir\karajmedia_v2.7\App_Code\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Platform];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_inboxes_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[inboxes] DROP CONSTRAINT [FK_inboxes_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Outbox_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Outboxes] DROP CONSTRAINT [FK_Outbox_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_UserPayment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_UserPayment];
GO
IF OBJECT_ID(N'[dbo].[FK_Userpolice]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[police] DROP CONSTRAINT [FK_Userpolice];
GO
IF OBJECT_ID(N'[dbo].[FK_UserFav]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Favs] DROP CONSTRAINT [FK_UserFav];
GO
IF OBJECT_ID(N'[dbo].[FK_UserDateTime]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DateTimes] DROP CONSTRAINT [FK_UserDateTime];
GO
IF OBJECT_ID(N'[dbo].[FK_UserSupport]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supports] DROP CONSTRAINT [FK_UserSupport];
GO
IF OBJECT_ID(N'[dbo].[FK_UserKala]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Kalas] DROP CONSTRAINT [FK_UserKala];
GO
IF OBJECT_ID(N'[dbo].[FK_Kalacomment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[comments] DROP CONSTRAINT [FK_Kalacomment];
GO
IF OBJECT_ID(N'[dbo].[FK_UserGroup]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Groups] DROP CONSTRAINT [FK_UserGroup];
GO
IF OBJECT_ID(N'[dbo].[FK_UserDownloadGroup]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DownloadGroups] DROP CONSTRAINT [FK_UserDownloadGroup];
GO
IF OBJECT_ID(N'[dbo].[FK_DownloadGroupStandard]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Downloads] DROP CONSTRAINT [FK_DownloadGroupStandard];
GO
IF OBJECT_ID(N'[dbo].[FK_GalleryAX]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AXes] DROP CONSTRAINT [FK_GalleryAX];
GO
IF OBJECT_ID(N'[dbo].[FK_UserGallery]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Galleries] DROP CONSTRAINT [FK_UserGallery];
GO
IF OBJECT_ID(N'[dbo].[FK_UserAbout]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Abouts] DROP CONSTRAINT [FK_UserAbout];
GO
IF OBJECT_ID(N'[dbo].[FK_UserLinks]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Links] DROP CONSTRAINT [FK_UserLinks];
GO
IF OBJECT_ID(N'[dbo].[FK_KalaKalaImage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[KalaImages] DROP CONSTRAINT [FK_KalaKalaImage];
GO
IF OBJECT_ID(N'[dbo].[FK_GroupSubGroup]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SubGroups] DROP CONSTRAINT [FK_GroupSubGroup];
GO
IF OBJECT_ID(N'[dbo].[FK_SubGroupDetail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Details] DROP CONSTRAINT [FK_SubGroupDetail];
GO
IF OBJECT_ID(N'[dbo].[FK_DetailPhoto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Photos] DROP CONSTRAINT [FK_DetailPhoto];
GO
IF OBJECT_ID(N'[dbo].[FK_UserBalance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Balances] DROP CONSTRAINT [FK_UserBalance];
GO
IF OBJECT_ID(N'[dbo].[FK_PhotoPhoto_comment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Photo_comment] DROP CONSTRAINT [FK_PhotoPhoto_comment];
GO
IF OBJECT_ID(N'[dbo].[FK_SubGroupSub_comment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sub_comment] DROP CONSTRAINT [FK_SubGroupSub_comment];
GO
IF OBJECT_ID(N'[dbo].[FK_UserBasket]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Baskets] DROP CONSTRAINT [FK_UserBasket];
GO
IF OBJECT_ID(N'[dbo].[FK_UserFactor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Factors] DROP CONSTRAINT [FK_UserFactor];
GO
IF OBJECT_ID(N'[dbo].[FK_DetailDet_comment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Det_comment] DROP CONSTRAINT [FK_DetailDet_comment];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[inboxes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[inboxes];
GO
IF OBJECT_ID(N'[dbo].[Outboxes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Outboxes];
GO
IF OBJECT_ID(N'[dbo].[Payments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Payments];
GO
IF OBJECT_ID(N'[dbo].[police]', 'U') IS NOT NULL
    DROP TABLE [dbo].[police];
GO
IF OBJECT_ID(N'[dbo].[Favs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Favs];
GO
IF OBJECT_ID(N'[dbo].[DateTimes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DateTimes];
GO
IF OBJECT_ID(N'[dbo].[Supports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Supports];
GO
IF OBJECT_ID(N'[dbo].[Kalas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Kalas];
GO
IF OBJECT_ID(N'[dbo].[comments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[comments];
GO
IF OBJECT_ID(N'[dbo].[Groups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Groups];
GO
IF OBJECT_ID(N'[dbo].[Downloads]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Downloads];
GO
IF OBJECT_ID(N'[dbo].[DownloadGroups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DownloadGroups];
GO
IF OBJECT_ID(N'[dbo].[Galleries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Galleries];
GO
IF OBJECT_ID(N'[dbo].[AXes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AXes];
GO
IF OBJECT_ID(N'[dbo].[Abouts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Abouts];
GO
IF OBJECT_ID(N'[dbo].[Links]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Links];
GO
IF OBJECT_ID(N'[dbo].[KalaImages]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KalaImages];
GO
IF OBJECT_ID(N'[dbo].[SubGroups]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SubGroups];
GO
IF OBJECT_ID(N'[dbo].[Details]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Details];
GO
IF OBJECT_ID(N'[dbo].[Photos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Photos];
GO
IF OBJECT_ID(N'[dbo].[Balances]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Balances];
GO
IF OBJECT_ID(N'[dbo].[Photo_comment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Photo_comment];
GO
IF OBJECT_ID(N'[dbo].[Sub_comment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sub_comment];
GO
IF OBJECT_ID(N'[dbo].[Baskets]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Baskets];
GO
IF OBJECT_ID(N'[dbo].[Factors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Factors];
GO
IF OBJECT_ID(N'[dbo].[Det_comment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Det_comment];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(max)  NULL,
    [Pass] nvarchar(max)  NOT NULL,
    [Code] nvarchar(max)  NULL,
    [Role] nvarchar(max)  NULL,
    [GU_ID] uniqueidentifier  NOT NULL,
    [Block] bit  NULL,
    [Name] nvarchar(max)  NULL,
    [Tel] nvarchar(max)  NULL,
    [Date] datetime  NULL,
    [Image] varbinary(max)  NULL,
    [PDate] nvarchar(max)  NULL,
    [Rss] bit  NULL,
    [Address] nvarchar(max)  NULL,
    [Image_Name] nvarchar(max)  NULL,
    [Path] nvarchar(max)  NULL,
    [Image_Cover] nvarchar(max)  NULL,
    [Path_Cover] nvarchar(max)  NULL,
    [Position] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [ConfirmImage] bit  NULL,
    [ConfirmCover] bit  NULL
);
GO

-- Creating table 'inboxes'
CREATE TABLE [dbo].[inboxes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [From_ID] uniqueidentifier  NULL,
    [Title] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [User_ID] int  NOT NULL,
    [Date] nvarchar(max)  NULL,
    [U_ID] uniqueidentifier  NULL,
    [Name] nvarchar(max)  NULL,
    [PDate] nvarchar(max)  NULL
);
GO

-- Creating table 'Outboxes'
CREATE TABLE [dbo].[Outboxes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [To_ID] uniqueidentifier  NOT NULL,
    [Title] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [User_ID] int  NOT NULL,
    [Date] nvarchar(max)  NULL,
    [U_ID] uniqueidentifier  NOT NULL,
    [Name] nvarchar(max)  NULL,
    [PDate] nvarchar(max)  NULL
);
GO

-- Creating table 'Payments'
CREATE TABLE [dbo].[Payments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [BankName] nvarchar(max)  NULL,
    [PayMethod] nvarchar(max)  NULL,
    [SerialNo] nvarchar(max)  NULL,
    [Service] real  NULL,
    [CardNo] nvarchar(max)  NULL,
    [Pay_d] tinyint  NULL,
    [Pay_m] tinyint  NULL,
    [Pay_y] smallint  NULL,
    [Tel] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [U_ID] uniqueidentifier  NOT NULL,
    [Confermed] bit  NULL,
    [Accepted_ID] uniqueidentifier  NULL,
    [Accepted_Date] nvarchar(max)  NULL,
    [UserName] nvarchar(max)  NULL,
    [Bonus] int  NULL,
    [Bedehkar] int  NULL,
    [Bestankar] int  NULL,
    [Balance] int  NOT NULL,
    [Date] datetime  NULL,
    [Time] nvarchar(max)  NULL,
    [PDate] nvarchar(max)  NOT NULL,
    [Factor_No] int  NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'police'
CREATE TABLE [dbo].[police] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [From_ID] uniqueidentifier  NOT NULL,
    [Title] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [Date] nvarchar(max)  NULL,
    [For_ID] uniqueidentifier  NOT NULL,
    [Visited] bit  NULL,
    [PDate] nvarchar(max)  NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Favs'
CREATE TABLE [dbo].[Favs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FavID] int  NULL,
    [Des] nvarchar(max)  NULL,
    [PDate] nvarchar(max)  NULL,
    [Image_Name] nvarchar(max)  NULL,
    [Path] nvarchar(max)  NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'DateTimes'
CREATE TABLE [dbo].[DateTimes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Start] datetime  NULL,
    [End] datetime  NULL,
    [U_ID] uniqueidentifier  NULL,
    [P_Start] nvarchar(max)  NULL,
    [P_End] nvarchar(max)  NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Supports'
CREATE TABLE [dbo].[Supports] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Sender] uniqueidentifier  NULL,
    [Title] nvarchar(max)  NULL,
    [Time] nvarchar(max)  NULL,
    [Date] nvarchar(max)  NULL,
    [U_ID] uniqueidentifier  NOT NULL,
    [Name] nvarchar(max)  NULL,
    [Topic] nvarchar(max)  NULL,
    [visited] bit  NULL,
    [Ticket_ID] int  NULL,
    [Des] nvarchar(max)  NULL,
    [Responser] nvarchar(max)  NULL,
    [Answer] nvarchar(max)  NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Kalas'
CREATE TABLE [dbo].[Kalas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Code] nvarchar(max)  NULL,
    [Name] nvarchar(max)  NULL,
    [Price1] int  NULL,
    [Price2] int  NULL,
    [Image] varbinary(max)  NULL,
    [Image_t] varbinary(max)  NULL,
    [Tel] nvarchar(max)  NULL,
    [Fax] nvarchar(max)  NULL,
    [Yid] nvarchar(max)  NULL,
    [Ostan] nvarchar(max)  NULL,
    [City] nvarchar(max)  NULL,
    [Date] datetime  NULL,
    [IsStock] bit  NULL,
    [Sold] bit  NULL,
    [Confirmed] bit  NULL,
    [Group] nvarchar(max)  NULL,
    [Email] nvarchar(max)  NULL,
    [Tahator] bit  NULL,
    [T_Des] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [PDate] nvarchar(max)  NULL,
    [HaveAx] bit  NULL,
    [SubGroup] nvarchar(max)  NULL,
    [Status] nvarchar(max)  NULL,
    [Exist] nvarchar(max)  NULL,
    [Model] nvarchar(max)  NULL,
    [Color] nvarchar(max)  NULL,
    [Des2] nvarchar(max)  NULL,
    [Des3] nvarchar(max)  NULL,
    [Time] nvarchar(max)  NULL,
    [BuyCount] int  NULL,
    [Click] int  NULL,
    [Category] nvarchar(max)  NULL,
    [Brand] nvarchar(max)  NULL,
    [Image_Name] nvarchar(max)  NULL,
    [Visit] int  NULL,
    [Path] nvarchar(max)  NULL,
    [Image_Name_M] nvarchar(max)  NULL,
    [Image_Name_S] nvarchar(max)  NULL,
    [Path_M] nvarchar(max)  NULL,
    [Path_S] nvarchar(max)  NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'comments'
CREATE TABLE [dbo].[comments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NULL,
    [Price] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [Date] datetime  NULL,
    [Tel] nvarchar(max)  NULL,
    [Checked] bit  NULL,
    [Block] bit  NULL,
    [Time] nvarchar(max)  NULL,
    [PDate] nvarchar(max)  NULL,
    [Kala_Id] int  NOT NULL
);
GO

-- Creating table 'Groups'
CREATE TABLE [dbo].[Groups] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [Image] varbinary(max)  NULL,
    [Image_t] varbinary(max)  NULL,
    [PDate] nvarchar(max)  NULL,
    [Date] datetime  NULL,
    [Time] nvarchar(max)  NULL,
    [Image_width] int  NULL,
    [Image_height] int  NULL,
    [Image_size] int  NULL,
    [Image_Name] nvarchar(max)  NULL,
    [Path] nvarchar(max)  NULL,
    [Path_M] nvarchar(max)  NULL,
    [Path_S] nvarchar(max)  NULL,
    [Image_Name_M] nvarchar(max)  NULL,
    [Image_Name_S] nvarchar(max)  NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Downloads'
CREATE TABLE [dbo].[Downloads] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NULL,
    [Image] varbinary(max)  NULL,
    [Add] nvarchar(max)  NULL,
    [Name] nvarchar(max)  NULL,
    [GUID] uniqueidentifier  NULL,
    [Des] nvarchar(max)  NULL,
    [Num] int  NULL,
    [Date] datetime  NULL,
    [Time] nvarchar(50)  NULL,
    [PDate] nvarchar(50)  NULL,
    [Price] int  NULL,
    [Image_t] varbinary(max)  NULL,
    [Image_Name] nvarchar(max)  NULL,
    [Visit] int  NULL,
    [Path] nvarchar(max)  NULL,
    [Image_Name_M] nvarchar(max)  NULL,
    [Image_Name_S] nvarchar(max)  NULL,
    [Path_M] nvarchar(max)  NULL,
    [Path_S] nvarchar(max)  NULL,
    [DownloadGroup_Id] int  NOT NULL
);
GO

-- Creating table 'DownloadGroups'
CREATE TABLE [dbo].[DownloadGroups] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [Image] varbinary(max)  NULL,
    [Image_t] varbinary(max)  NULL,
    [PDate] nvarchar(50)  NULL,
    [Date] datetime  NULL,
    [Time] nvarchar(50)  NULL,
    [Image_Name] nvarchar(max)  NULL,
    [Visit] int  NULL,
    [Path] nvarchar(max)  NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Galleries'
CREATE TABLE [dbo].[Galleries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NULL,
    [Image] varbinary(max)  NULL,
    [Image_t] varbinary(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [Group] nvarchar(max)  NULL,
    [Subgroup] nvarchar(max)  NULL,
    [PDate] nvarchar(max)  NULL,
    [Time] nvarchar(max)  NULL,
    [Block] bit  NULL,
    [Date] datetime  NULL,
    [Image_Name] nvarchar(max)  NULL,
    [Path] nvarchar(max)  NULL,
    [Image_height] int  NULL,
    [Image_width] int  NULL,
    [Image_size] int  NULL,
    [Visit] int  NULL,
    [Image_Name_M] nvarchar(max)  NULL,
    [Image_Name_S] nvarchar(max)  NULL,
    [Path_M] nvarchar(max)  NULL,
    [Path_S] nvarchar(max)  NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'AXes'
CREATE TABLE [dbo].[AXes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Image] varbinary(max)  NULL,
    [Image_t] varbinary(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [Title] nvarchar(max)  NULL,
    [Size] nvarchar(max)  NULL,
    [PDate] nvarchar(max)  NULL,
    [Time] nvarchar(max)  NULL,
    [Block] bit  NULL,
    [Date] datetime  NULL,
    [User_id] int  NULL,
    [Image_Name] nvarchar(max)  NULL,
    [Name] nvarchar(max)  NULL,
    [Path] nvarchar(max)  NULL,
    [Gallery_Id] int  NOT NULL
);
GO

-- Creating table 'Abouts'
CREATE TABLE [dbo].[Abouts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [Image] varbinary(max)  NULL,
    [Image_t] varbinary(max)  NULL,
    [Image_Name] nvarchar(max)  NULL,
    [Path] nvarchar(max)  NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Links'
CREATE TABLE [dbo].[Links] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Add] nvarchar(max)  NULL,
    [Title] nvarchar(max)  NULL,
    [Image] varbinary(max)  NULL,
    [Image_t] varbinary(max)  NULL,
    [Image_Name] nvarchar(max)  NOT NULL,
    [Path] nvarchar(max)  NOT NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'KalaImages'
CREATE TABLE [dbo].[KalaImages] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Image] varbinary(max)  NULL,
    [Image_t] varbinary(max)  NULL,
    [Title] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [Image_b] varbinary(max)  NULL,
    [Image_Name] nvarchar(max)  NULL,
    [Visit] int  NULL,
    [Path] nvarchar(max)  NULL,
    [Image_Name_M] nvarchar(max)  NULL,
    [Image_Name_S] nvarchar(max)  NULL,
    [Path_M] nvarchar(max)  NULL,
    [Path_S] nvarchar(max)  NULL,
    [Kala_Id] int  NOT NULL
);
GO

-- Creating table 'SubGroups'
CREATE TABLE [dbo].[SubGroups] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [Image] varbinary(max)  NULL,
    [Image_t] varbinary(max)  NULL,
    [PDate] nvarchar(max)  NULL,
    [Date] datetime  NULL,
    [Time] nvarchar(max)  NULL,
    [Rss] bit  NULL,
    [Image_b] varbinary(max)  NULL,
    [Agent] nvarchar(max)  NULL,
    [Visit] int  NULL,
    [Image_width] int  NULL,
    [Image_height] int  NULL,
    [Image_Name] nvarchar(max)  NULL,
    [Path] nvarchar(max)  NULL,
    [Image_size] int  NULL,
    [Path_M] nvarchar(max)  NULL,
    [Path_S] nvarchar(max)  NULL,
    [Image_Name_M] nvarchar(max)  NULL,
    [Image_Name_S] nvarchar(max)  NULL,
    [Publish] bit  NULL,
    [GroupName] nvarchar(max)  NULL,
    [SubgroupName] nvarchar(max)  NULL,
    [Group_Id] int  NOT NULL
);
GO

-- Creating table 'Details'
CREATE TABLE [dbo].[Details] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [Image] varbinary(max)  NULL,
    [Image_t] varbinary(max)  NULL,
    [PDate] nvarchar(max)  NULL,
    [Date] datetime  NULL,
    [Time] nvarchar(max)  NULL,
    [Rss] bit  NULL,
    [Image_b] varbinary(max)  NULL,
    [Image_width] int  NULL,
    [Image_size] int  NULL,
    [Path] nvarchar(max)  NULL,
    [Image_Name] nvarchar(max)  NULL,
    [Image_height] int  NULL,
    [Visit] int  NULL,
    [Path_M] nvarchar(max)  NULL,
    [Path_S] nvarchar(max)  NULL,
    [Image_Name_M] nvarchar(max)  NULL,
    [Image_Name_S] nvarchar(max)  NULL,
    [Publish] bit  NULL,
    [SubGroup_Id] int  NOT NULL
);
GO

-- Creating table 'Photos'
CREATE TABLE [dbo].[Photos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [Image] varbinary(max)  NULL,
    [Image_t] varbinary(max)  NULL,
    [PDate] nvarchar(max)  NULL,
    [Date] datetime  NULL,
    [Time] nvarchar(max)  NULL,
    [Size] int  NULL,
    [Rss] bit  NULL,
    [Image_width] int  NULL,
    [Image_size] int  NULL,
    [Path] nvarchar(max)  NULL,
    [Image_Name] nvarchar(max)  NULL,
    [Image_height] int  NULL,
    [Visit] int  NULL,
    [Path_M] nvarchar(max)  NULL,
    [Path_S] nvarchar(max)  NULL,
    [Image_Name_M] nvarchar(max)  NULL,
    [Image_Name_S] nvarchar(max)  NULL,
    [Publish] bit  NULL,
    [Detail_Id] int  NOT NULL
);
GO

-- Creating table 'Balances'
CREATE TABLE [dbo].[Balances] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date] datetime  NULL,
    [PDate] nvarchar(max)  NULL,
    [Remain] int  NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Photo_comment'
CREATE TABLE [dbo].[Photo_comment] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [User_id] int  NULL,
    [Name] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [Date] datetime  NULL,
    [PDate] nvarchar(max)  NULL,
    [Checked] bit  NULL,
    [Block] bit  NULL,
    [Time] nvarchar(max)  NULL,
    [Publish] bit  NULL,
    [Photo_Id] int  NOT NULL
);
GO

-- Creating table 'Sub_comment'
CREATE TABLE [dbo].[Sub_comment] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [User_id] int  NULL,
    [Name] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [Date] datetime  NULL,
    [PDate] nvarchar(max)  NULL,
    [Checked] bit  NULL,
    [Block] bit  NULL,
    [Time] nvarchar(max)  NULL,
    [Publish] bit  NULL,
    [SubGroup_Id] int  NOT NULL
);
GO

-- Creating table 'Baskets'
CREATE TABLE [dbo].[Baskets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [kala_id] int  NULL,
    [Date] datetime  NULL,
    [Time] nvarchar(max)  NULL,
    [PDate] nvarchar(max)  NULL,
    [Count] smallint  NULL,
    [Name] nvarchar(max)  NULL,
    [Image_t] varbinary(max)  NULL,
    [Price1] int  NULL,
    [Price2] int  NULL,
    [Delivered] bit  NULL,
    [UserId] int  NULL,
    [Paid] bit  NULL,
    [FactorNo] int  NULL,
    [Image_Name] nvarchar(max)  NULL,
    [Path] nvarchar(max)  NULL,
    [Image_Name_M] nvarchar(max)  NULL,
    [Image_Name_S] nvarchar(max)  NULL,
    [Path_M] nvarchar(max)  NULL,
    [Path_S] nvarchar(max)  NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Factors'
CREATE TABLE [dbo].[Factors] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Number] int  NULL,
    [Date] datetime  NULL,
    [PDate] nvarchar(max)  NULL,
    [Time] nvarchar(max)  NULL,
    [Buyer_Id] int  NULL,
    [amount] int  NULL,
    [DateOfPay] datetime  NULL,
    [PDateOfPay] nvarchar(max)  NULL,
    [TimeOfPay] nvarchar(max)  NULL,
    [Financial_confirmation] bit  NULL,
    [Anbar_confirmation] bit  NULL,
    [Paid] bit  NULL,
    [Posted] bit  NULL,
    [Delivered] bit  NULL,
    [Pay_Id] int  NULL,
    [Maliat] int  NULL,
    [Shipping_cost] int  NULL,
    [PayMethod] nvarchar(max)  NULL,
    [Tracking_Code] nvarchar(max)  NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'Det_comment'
CREATE TABLE [dbo].[Det_comment] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [User_id] int  NULL,
    [Name] nvarchar(max)  NULL,
    [Des] nvarchar(max)  NULL,
    [Date] datetime  NULL,
    [PDate] nvarchar(max)  NULL,
    [Checked] bit  NULL,
    [Block] bit  NULL,
    [Time] nvarchar(max)  NULL,
    [Publish] bit  NULL,
    [Detail_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'inboxes'
ALTER TABLE [dbo].[inboxes]
ADD CONSTRAINT [PK_inboxes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Outboxes'
ALTER TABLE [dbo].[Outboxes]
ADD CONSTRAINT [PK_Outboxes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [PK_Payments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'police'
ALTER TABLE [dbo].[police]
ADD CONSTRAINT [PK_police]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Favs'
ALTER TABLE [dbo].[Favs]
ADD CONSTRAINT [PK_Favs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DateTimes'
ALTER TABLE [dbo].[DateTimes]
ADD CONSTRAINT [PK_DateTimes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Supports'
ALTER TABLE [dbo].[Supports]
ADD CONSTRAINT [PK_Supports]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Kalas'
ALTER TABLE [dbo].[Kalas]
ADD CONSTRAINT [PK_Kalas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'comments'
ALTER TABLE [dbo].[comments]
ADD CONSTRAINT [PK_comments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Groups'
ALTER TABLE [dbo].[Groups]
ADD CONSTRAINT [PK_Groups]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Downloads'
ALTER TABLE [dbo].[Downloads]
ADD CONSTRAINT [PK_Downloads]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DownloadGroups'
ALTER TABLE [dbo].[DownloadGroups]
ADD CONSTRAINT [PK_DownloadGroups]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Galleries'
ALTER TABLE [dbo].[Galleries]
ADD CONSTRAINT [PK_Galleries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AXes'
ALTER TABLE [dbo].[AXes]
ADD CONSTRAINT [PK_AXes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Abouts'
ALTER TABLE [dbo].[Abouts]
ADD CONSTRAINT [PK_Abouts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Links'
ALTER TABLE [dbo].[Links]
ADD CONSTRAINT [PK_Links]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'KalaImages'
ALTER TABLE [dbo].[KalaImages]
ADD CONSTRAINT [PK_KalaImages]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SubGroups'
ALTER TABLE [dbo].[SubGroups]
ADD CONSTRAINT [PK_SubGroups]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Details'
ALTER TABLE [dbo].[Details]
ADD CONSTRAINT [PK_Details]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Photos'
ALTER TABLE [dbo].[Photos]
ADD CONSTRAINT [PK_Photos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Balances'
ALTER TABLE [dbo].[Balances]
ADD CONSTRAINT [PK_Balances]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Photo_comment'
ALTER TABLE [dbo].[Photo_comment]
ADD CONSTRAINT [PK_Photo_comment]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sub_comment'
ALTER TABLE [dbo].[Sub_comment]
ADD CONSTRAINT [PK_Sub_comment]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Baskets'
ALTER TABLE [dbo].[Baskets]
ADD CONSTRAINT [PK_Baskets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Factors'
ALTER TABLE [dbo].[Factors]
ADD CONSTRAINT [PK_Factors]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Det_comment'
ALTER TABLE [dbo].[Det_comment]
ADD CONSTRAINT [PK_Det_comment]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [User_ID] in table 'inboxes'
ALTER TABLE [dbo].[inboxes]
ADD CONSTRAINT [FK_inboxes_Users]
    FOREIGN KEY ([User_ID])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_inboxes_Users'
CREATE INDEX [IX_FK_inboxes_Users]
ON [dbo].[inboxes]
    ([User_ID]);
GO

-- Creating foreign key on [User_ID] in table 'Outboxes'
ALTER TABLE [dbo].[Outboxes]
ADD CONSTRAINT [FK_Outbox_Users]
    FOREIGN KEY ([User_ID])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Outbox_Users'
CREATE INDEX [IX_FK_Outbox_Users]
ON [dbo].[Outboxes]
    ([User_ID]);
GO

-- Creating foreign key on [User_Id] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_UserPayment]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserPayment'
CREATE INDEX [IX_FK_UserPayment]
ON [dbo].[Payments]
    ([User_Id]);
GO

-- Creating foreign key on [User_Id] in table 'police'
ALTER TABLE [dbo].[police]
ADD CONSTRAINT [FK_Userpolice]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Userpolice'
CREATE INDEX [IX_FK_Userpolice]
ON [dbo].[police]
    ([User_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Favs'
ALTER TABLE [dbo].[Favs]
ADD CONSTRAINT [FK_UserFav]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserFav'
CREATE INDEX [IX_FK_UserFav]
ON [dbo].[Favs]
    ([User_Id]);
GO

-- Creating foreign key on [User_Id] in table 'DateTimes'
ALTER TABLE [dbo].[DateTimes]
ADD CONSTRAINT [FK_UserDateTime]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserDateTime'
CREATE INDEX [IX_FK_UserDateTime]
ON [dbo].[DateTimes]
    ([User_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Supports'
ALTER TABLE [dbo].[Supports]
ADD CONSTRAINT [FK_UserSupport]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserSupport'
CREATE INDEX [IX_FK_UserSupport]
ON [dbo].[Supports]
    ([User_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Kalas'
ALTER TABLE [dbo].[Kalas]
ADD CONSTRAINT [FK_UserKala]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserKala'
CREATE INDEX [IX_FK_UserKala]
ON [dbo].[Kalas]
    ([User_Id]);
GO

-- Creating foreign key on [Kala_Id] in table 'comments'
ALTER TABLE [dbo].[comments]
ADD CONSTRAINT [FK_Kalacomment]
    FOREIGN KEY ([Kala_Id])
    REFERENCES [dbo].[Kalas]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Kalacomment'
CREATE INDEX [IX_FK_Kalacomment]
ON [dbo].[comments]
    ([Kala_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Groups'
ALTER TABLE [dbo].[Groups]
ADD CONSTRAINT [FK_UserGroup]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserGroup'
CREATE INDEX [IX_FK_UserGroup]
ON [dbo].[Groups]
    ([User_Id]);
GO

-- Creating foreign key on [User_Id] in table 'DownloadGroups'
ALTER TABLE [dbo].[DownloadGroups]
ADD CONSTRAINT [FK_UserDownloadGroup]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserDownloadGroup'
CREATE INDEX [IX_FK_UserDownloadGroup]
ON [dbo].[DownloadGroups]
    ([User_Id]);
GO

-- Creating foreign key on [DownloadGroup_Id] in table 'Downloads'
ALTER TABLE [dbo].[Downloads]
ADD CONSTRAINT [FK_DownloadGroupStandard]
    FOREIGN KEY ([DownloadGroup_Id])
    REFERENCES [dbo].[DownloadGroups]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DownloadGroupStandard'
CREATE INDEX [IX_FK_DownloadGroupStandard]
ON [dbo].[Downloads]
    ([DownloadGroup_Id]);
GO

-- Creating foreign key on [Gallery_Id] in table 'AXes'
ALTER TABLE [dbo].[AXes]
ADD CONSTRAINT [FK_GalleryAX]
    FOREIGN KEY ([Gallery_Id])
    REFERENCES [dbo].[Galleries]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GalleryAX'
CREATE INDEX [IX_FK_GalleryAX]
ON [dbo].[AXes]
    ([Gallery_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Galleries'
ALTER TABLE [dbo].[Galleries]
ADD CONSTRAINT [FK_UserGallery]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserGallery'
CREATE INDEX [IX_FK_UserGallery]
ON [dbo].[Galleries]
    ([User_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Abouts'
ALTER TABLE [dbo].[Abouts]
ADD CONSTRAINT [FK_UserAbout]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserAbout'
CREATE INDEX [IX_FK_UserAbout]
ON [dbo].[Abouts]
    ([User_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Links'
ALTER TABLE [dbo].[Links]
ADD CONSTRAINT [FK_UserLinks]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserLinks'
CREATE INDEX [IX_FK_UserLinks]
ON [dbo].[Links]
    ([User_Id]);
GO

-- Creating foreign key on [Kala_Id] in table 'KalaImages'
ALTER TABLE [dbo].[KalaImages]
ADD CONSTRAINT [FK_KalaKalaImage]
    FOREIGN KEY ([Kala_Id])
    REFERENCES [dbo].[Kalas]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_KalaKalaImage'
CREATE INDEX [IX_FK_KalaKalaImage]
ON [dbo].[KalaImages]
    ([Kala_Id]);
GO

-- Creating foreign key on [Group_Id] in table 'SubGroups'
ALTER TABLE [dbo].[SubGroups]
ADD CONSTRAINT [FK_GroupSubGroup]
    FOREIGN KEY ([Group_Id])
    REFERENCES [dbo].[Groups]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupSubGroup'
CREATE INDEX [IX_FK_GroupSubGroup]
ON [dbo].[SubGroups]
    ([Group_Id]);
GO

-- Creating foreign key on [SubGroup_Id] in table 'Details'
ALTER TABLE [dbo].[Details]
ADD CONSTRAINT [FK_SubGroupDetail]
    FOREIGN KEY ([SubGroup_Id])
    REFERENCES [dbo].[SubGroups]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubGroupDetail'
CREATE INDEX [IX_FK_SubGroupDetail]
ON [dbo].[Details]
    ([SubGroup_Id]);
GO

-- Creating foreign key on [Detail_Id] in table 'Photos'
ALTER TABLE [dbo].[Photos]
ADD CONSTRAINT [FK_DetailPhoto]
    FOREIGN KEY ([Detail_Id])
    REFERENCES [dbo].[Details]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DetailPhoto'
CREATE INDEX [IX_FK_DetailPhoto]
ON [dbo].[Photos]
    ([Detail_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Balances'
ALTER TABLE [dbo].[Balances]
ADD CONSTRAINT [FK_UserBalance]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserBalance'
CREATE INDEX [IX_FK_UserBalance]
ON [dbo].[Balances]
    ([User_Id]);
GO

-- Creating foreign key on [Photo_Id] in table 'Photo_comment'
ALTER TABLE [dbo].[Photo_comment]
ADD CONSTRAINT [FK_PhotoPhoto_comment]
    FOREIGN KEY ([Photo_Id])
    REFERENCES [dbo].[Photos]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoPhoto_comment'
CREATE INDEX [IX_FK_PhotoPhoto_comment]
ON [dbo].[Photo_comment]
    ([Photo_Id]);
GO

-- Creating foreign key on [SubGroup_Id] in table 'Sub_comment'
ALTER TABLE [dbo].[Sub_comment]
ADD CONSTRAINT [FK_SubGroupSub_comment]
    FOREIGN KEY ([SubGroup_Id])
    REFERENCES [dbo].[SubGroups]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubGroupSub_comment'
CREATE INDEX [IX_FK_SubGroupSub_comment]
ON [dbo].[Sub_comment]
    ([SubGroup_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Baskets'
ALTER TABLE [dbo].[Baskets]
ADD CONSTRAINT [FK_UserBasket]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserBasket'
CREATE INDEX [IX_FK_UserBasket]
ON [dbo].[Baskets]
    ([User_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Factors'
ALTER TABLE [dbo].[Factors]
ADD CONSTRAINT [FK_UserFactor]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserFactor'
CREATE INDEX [IX_FK_UserFactor]
ON [dbo].[Factors]
    ([User_Id]);
GO

-- Creating foreign key on [Detail_Id] in table 'Det_comment'
ALTER TABLE [dbo].[Det_comment]
ADD CONSTRAINT [FK_DetailDet_comment]
    FOREIGN KEY ([Detail_Id])
    REFERENCES [dbo].[Details]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DetailDet_comment'
CREATE INDEX [IX_FK_DetailDet_comment]
ON [dbo].[Det_comment]
    ([Detail_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------