USE [master]
GO
/****** Object:  Database [RealEstate]    Script Date: 23.09.2023 20:49:35 ******/
CREATE DATABASE [RealEstate]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RealEstate', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DEV\MSSQL\DATA\RealEstate.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RealEstate_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DEV\MSSQL\DATA\RealEstate_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RealEstate] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RealEstate].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RealEstate] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RealEstate] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RealEstate] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RealEstate] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RealEstate] SET ARITHABORT OFF 
GO
ALTER DATABASE [RealEstate] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RealEstate] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RealEstate] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RealEstate] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RealEstate] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RealEstate] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RealEstate] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RealEstate] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RealEstate] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RealEstate] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RealEstate] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RealEstate] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RealEstate] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RealEstate] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RealEstate] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RealEstate] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RealEstate] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RealEstate] SET RECOVERY FULL 
GO
ALTER DATABASE [RealEstate] SET  MULTI_USER 
GO
ALTER DATABASE [RealEstate] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RealEstate] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RealEstate] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RealEstate] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RealEstate] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RealEstate] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RealEstate', N'ON'
GO
ALTER DATABASE [RealEstate] SET QUERY_STORE = OFF
GO
USE [RealEstate]
GO
/****** Object:  Table [dbo].[Ads]    Script Date: 23.09.2023 20:49:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ads](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Description] [ntext] NOT NULL,
	[LocationId] [uniqueidentifier] NOT NULL,
	[Price] [money] NOT NULL,
	[Area] [smallint] NOT NULL,
	[NumberOfRoomsId] [uniqueidentifier] NOT NULL,
	[NumberOfBathrooms] [tinyint] NOT NULL,
	[AdsTypeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Ads] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdsType]    Script Date: 23.09.2023 20:49:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdsType](
	[Id] [uniqueidentifier] NOT NULL,
	[AdsType] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_AdsType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 23.09.2023 20:49:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[Id] [uniqueidentifier] NOT NULL,
	[Location] [nvarchar](25) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NumberOfRooms]    Script Date: 23.09.2023 20:49:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumberOfRooms](
	[Id] [uniqueidentifier] NOT NULL,
	[RoomType] [nvarchar](20) NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ads] ([Id], [Title], [Description], [LocationId], [Price], [Area], [NumberOfRoomsId], [NumberOfBathrooms], [AdsTypeId]) VALUES (N'b54c4bdb-dd25-4e7a-bb27-0f2e429d4bb7', N'İlan 1', N'description', N'bf5a22bb-90ac-4912-a7f1-ad7f7439e1b0', 300000.0000, 150, N'fa6888c8-96d9-4658-ac04-24aec3fa735d', 1, N'f56cb75f-182c-486e-bf7f-06fb74876e58')
GO
INSERT [dbo].[AdsType] ([Id], [AdsType]) VALUES (N'f56cb75f-182c-486e-bf7f-06fb74876e58', N'Daire')
INSERT [dbo].[AdsType] ([Id], [AdsType]) VALUES (N'bd9a0ffa-c56b-4707-889d-0faa332b70a6', N'Villa')
INSERT [dbo].[AdsType] ([Id], [AdsType]) VALUES (N'8676b8bb-1c7d-4908-b96f-61aa0ab5f2fd', N'Arsa')
INSERT [dbo].[AdsType] ([Id], [AdsType]) VALUES (N'3b441710-8305-401b-b0c6-963282a507f0', N'İş Yeri')
INSERT [dbo].[AdsType] ([Id], [AdsType]) VALUES (N'bd1043a0-843d-4cee-af4d-a06c03d12ce2', N'Rezidans')
GO
INSERT [dbo].[Location] ([Id], [Location]) VALUES (N'bec51720-9213-455c-a4bf-0a960fb97dd8', N'Artvin')
INSERT [dbo].[Location] ([Id], [Location]) VALUES (N'7b9c728f-3663-4eb0-b98b-168a29097dd2', N'Ankara')
INSERT [dbo].[Location] ([Id], [Location]) VALUES (N'bf5a22bb-90ac-4912-a7f1-ad7f7439e1b0', N'İstanbul')
INSERT [dbo].[Location] ([Id], [Location]) VALUES (N'8898259a-c4dc-4ef7-b861-c0ec1c23672d', N'Kocaeli')
GO
INSERT [dbo].[NumberOfRooms] ([Id], [RoomType]) VALUES (N'fa6888c8-96d9-4658-ac04-24aec3fa735d', N'3+1')
INSERT [dbo].[NumberOfRooms] ([Id], [RoomType]) VALUES (N'9f1467b7-81b3-4b9d-9e3b-731af9679340', N'1+1')
INSERT [dbo].[NumberOfRooms] ([Id], [RoomType]) VALUES (N'b84a8227-7607-418a-9047-c1c262c0404a', N'1+0')
INSERT [dbo].[NumberOfRooms] ([Id], [RoomType]) VALUES (N'941aad75-2a6c-46a1-8df1-cf08b03580ee', N'2+1')
GO
ALTER TABLE [dbo].[Ads] ADD  CONSTRAINT [DF_Ads_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[AdsType] ADD  CONSTRAINT [DF_AdsType_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NumberOfRooms] ADD  CONSTRAINT [DF_Room_Id]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  StoredProcedure [dbo].[spAdsFilterList]    Script Date: 23.09.2023 20:49:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<MUSTAFA AKDEMİR>
-- Create date: <2023-09-23>
-- Description:	<Get Ads Filter List>
-- =============================================
CREATE PROCEDURE [dbo].[spAdsFilterList] 
	@AdsTypeId uniqueidentifier, @LocationId uniqueidentifier,@NumberOfRoomsId uniqueidentifier
AS
BEGIN
	SELECT A.Id,A.Title
		,A.[Description]
		,A.LocationId
		,L.[Location]
		,A.Area
		,A.Price
		,A.NumberOfBathrooms
		,A.AdsTypeId
		,T.AdsType
		,A.NumberOfRoomsId
		,N.RoomType FROM Ads A WITH(NOLOCK) 
	LEFT JOIN AdsType T WITH(NOLOCK) ON A.AdsTypeId=T.Id
	LEFT JOIN [Location] L WITH(NOLOCK) ON A.LocationId = L.Id
	LEFT JOIN NumberOfRooms N WITH(NOLOCK) ON A.NumberOfRoomsId=N.Id
	WHERE (@AdsTypeId IS NULL OR A.AdsTypeId=@AdsTypeId)
	AND (@LocationId IS NULL OR A.LocationId=@LocationId)
	AND (@NumberOfRoomsId IS NULL OR A.NumberOfRoomsId=@NumberOfRoomsId)
END
GO
/****** Object:  StoredProcedure [dbo].[spAdsTypeList]    Script Date: 23.09.2023 20:49:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Mustafa AKDEMİR>
-- Create date: <2023-09-23>
-- Description:	<Get Ads Type List>
-- =============================================
CREATE PROCEDURE [dbo].[spAdsTypeList] 
AS
BEGIN
	SELECT * FROM AdsType
END
GO
USE [master]
GO
ALTER DATABASE [RealEstate] SET  READ_WRITE 
GO
