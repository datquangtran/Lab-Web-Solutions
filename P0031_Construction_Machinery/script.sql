USE [master]
GO
/****** Object:  Database [P0031]    Script Date: 9/7/2019 11:19:57 PM ******/
CREATE DATABASE [P0031]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'P0031', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\P0031.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'P0031_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\P0031_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [P0031] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [P0031].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [P0031] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [P0031] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [P0031] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [P0031] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [P0031] SET ARITHABORT OFF 
GO
ALTER DATABASE [P0031] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [P0031] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [P0031] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [P0031] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [P0031] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [P0031] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [P0031] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [P0031] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [P0031] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [P0031] SET  DISABLE_BROKER 
GO
ALTER DATABASE [P0031] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [P0031] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [P0031] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [P0031] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [P0031] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [P0031] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [P0031] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [P0031] SET RECOVERY FULL 
GO
ALTER DATABASE [P0031] SET  MULTI_USER 
GO
ALTER DATABASE [P0031] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [P0031] SET DB_CHAINING OFF 
GO
ALTER DATABASE [P0031] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [P0031] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [P0031] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'P0031', N'ON'
GO
ALTER DATABASE [P0031] SET QUERY_STORE = OFF
GO
USE [P0031]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [P0031]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 9/7/2019 11:19:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 9/7/2019 11:19:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(0,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Information] [nvarchar](max) NULL,
	[Sale] [bit] NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Machine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [Name], [Description], [Information], [Sale], [Image]) VALUES (0, N'Retailer and Supplier of Construction Machinery', N'Contact your Machinery Specialist for a Free Quote - Call 12345', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', 0, N'mc_main.jpg')
INSERT [dbo].[Posts] ([Id], [Name], [Description], [Information], [Sale], [Image]) VALUES (1, N'About Our Company', N'Contact your Machinery Specialist for a Free Quote - Call 12345', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.', 0, N'mc2.jpg')
INSERT [dbo].[Posts] ([Id], [Name], [Description], [Information], [Sale], [Image]) VALUES (2, N'Machine 1', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', 1, N'mc1.jpg')
INSERT [dbo].[Posts] ([Id], [Name], [Description], [Information], [Sale], [Image]) VALUES (3, N'Machine 2', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', 0, N'mc2.jpg')
INSERT [dbo].[Posts] ([Id], [Name], [Description], [Information], [Sale], [Image]) VALUES (4, N'Machine 3', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', 0, N'mc3.jpg')
INSERT [dbo].[Posts] ([Id], [Name], [Description], [Information], [Sale], [Image]) VALUES (5, N'Machine 4', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', 1, N'mc4.jpg')
INSERT [dbo].[Posts] ([Id], [Name], [Description], [Information], [Sale], [Image]) VALUES (6, N'Machine 5', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', 1, N'mc5.jpg')
INSERT [dbo].[Posts] ([Id], [Name], [Description], [Information], [Sale], [Image]) VALUES (7, N'Machine 6', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', 0, N'mc6.jpg')
SET IDENTITY_INSERT [dbo].[Posts] OFF
USE [master]
GO
ALTER DATABASE [P0031] SET  READ_WRITE 
GO
