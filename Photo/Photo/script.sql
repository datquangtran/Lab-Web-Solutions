USE [master]
GO
/****** Object:  Database [Photo]    Script Date: 3/30/2021 1:56:43 PM ******/
CREATE DATABASE [Photo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Photo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Photo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Photo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Photo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Photo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Photo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Photo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Photo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Photo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Photo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Photo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Photo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Photo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Photo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Photo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Photo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Photo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Photo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Photo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Photo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Photo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Photo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Photo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Photo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Photo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Photo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Photo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Photo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Photo] SET RECOVERY FULL 
GO
ALTER DATABASE [Photo] SET  MULTI_USER 
GO
ALTER DATABASE [Photo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Photo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Photo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Photo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Photo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Photo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Photo', N'ON'
GO
ALTER DATABASE [Photo] SET QUERY_STORE = OFF
GO
USE [Photo]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 3/30/2021 1:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[telephone] [int] NULL,
	[email] [nvarchar](max) NULL,
	[facebook_url] [nvarchar](max) NULL,
	[google_url] [nvarchar](max) NULL,
	[twitter_url] [nvarchar](max) NULL,
	[about] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[city] [nvarchar](max) NULL,
	[country] [nvarchar](max) NULL,
	[img_main] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 3/30/2021 1:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[gallery_id] [int] IDENTITY(1,1) NOT NULL,
	[galleryName] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[view] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[gallery_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 3/30/2021 1:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gallery_id] [int] NULL,
	[img] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[View]    Script Date: 3/30/2021 1:56:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[View](
	[view] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Contact] ([telephone], [email], [facebook_url], [google_url], [twitter_url], [about], [address], [city], [country], [img_main]) VALUES (989779802, N'Thaovphe130635@fpt.edu.vn', N'https://www.facebook.com/', N'https://www.google.com/', N'https://twitter.com/?lang=vi', N'Conclusions
If you regularly need to stock a database with faked data, or a standard data set, in order to conduct any sort of testing, then SDG is designed to be the tool to do this. It will work happily with any Build system such as Jenkins or TFS, and is just as amenable to use with PowerShell.

I like to store a version of the SDG project with the build scripts in source control so that it is possible to build, at any time, any version of the database, along with its data. To do this, you need to add any additional files used by SQL Data Generator, along with the script, into source control.', N' Lac Long Quan Street, Lang Thuong Ward, Binh Thanh District', N'Ha Noi', N'Viet Nam', N'1.jpg')
GO
SET IDENTITY_INSERT [dbo].[Gallery] ON 

INSERT [dbo].[Gallery] ([gallery_id], [galleryName], [description], [view]) VALUES (1, N'Gallery 1', N'On Thursday, Facebook banned Myanmar’s military from its platforms with immediate effect. It’s the strongest action the company has taken against the armed forces, known as the Tatmadaw, or indeed those in power in any nation.', 4)
INSERT [dbo].[Gallery] ([gallery_id], [galleryName], [description], [view]) VALUES (2, N'Gallery 2', N'Amid global outcry over Facebook’s role in those events, the company admitted in 2018 that it did not do enough to prevent the abuse of its platform leading to offline harm.', 5)
INSERT [dbo].[Gallery] ([gallery_id], [galleryName], [description], [view]) VALUES (3, N'Gallery 3', N'All of that changed after the coup on Feb. 1, when the Tatmadaw removed the civilian government of Aung Sang Suu Kyi, claiming that her pro-democracy movement’s landslide victory in November elections was a result of voter fraud.', 2)
SET IDENTITY_INSERT [dbo].[Gallery] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (1, 1, N'1.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (2, 2, N'2.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (3, 1, N'2.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (4, 1, N'3.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (5, 1, N'4.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (6, 1, N'5.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (7, 1, N'6.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (8, 1, N'7.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (9, 1, N'8.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (10, 1, N'9.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (11, 1, N'10.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (12, 1, N'11.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (13, 1, N'12.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (14, 1, N'1.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (15, 2, N'12.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (16, 2, N'1.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (17, 2, N'2.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (18, 2, N'3.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (19, 2, N'4.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (20, 2, N'19.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (21, 3, N'3.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (22, 3, N'6.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (23, 3, N'7.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (24, 3, N'8.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (25, 3, N'9.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (26, 3, N'10.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (27, 3, N'11.jpg')
INSERT [dbo].[Image] ([id], [gallery_id], [img]) VALUES (28, 3, N'12.jpg')
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
INSERT [dbo].[View] ([view]) VALUES (66)
GO
USE [master]
GO
ALTER DATABASE [Photo] SET  READ_WRITE 
GO
