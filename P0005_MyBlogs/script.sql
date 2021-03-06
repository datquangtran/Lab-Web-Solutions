USE [master]
GO
/****** Object:  Database [P0005]    Script Date: 9/7/2019 11:19:26 PM ******/
CREATE DATABASE [P0005]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'P0005', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\P0005.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'P0005_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\P0005_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [P0005] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [P0005].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [P0005] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [P0005] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [P0005] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [P0005] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [P0005] SET ARITHABORT OFF 
GO
ALTER DATABASE [P0005] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [P0005] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [P0005] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [P0005] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [P0005] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [P0005] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [P0005] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [P0005] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [P0005] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [P0005] SET  DISABLE_BROKER 
GO
ALTER DATABASE [P0005] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [P0005] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [P0005] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [P0005] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [P0005] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [P0005] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [P0005] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [P0005] SET RECOVERY FULL 
GO
ALTER DATABASE [P0005] SET  MULTI_USER 
GO
ALTER DATABASE [P0005] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [P0005] SET DB_CHAINING OFF 
GO
ALTER DATABASE [P0005] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [P0005] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [P0005] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'P0005', N'ON'
GO
ALTER DATABASE [P0005] SET QUERY_STORE = OFF
GO
USE [P0005]
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
USE [P0005]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 9/7/2019 11:19:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[LongContent] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 9/7/2019 11:19:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 9/7/2019 11:19:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Company] [nvarchar](50) NOT NULL,
	[Message] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([id], [Title], [LongContent], [Image], [Category], [Date]) VALUES (1, N'Making security feeds smarter via machine learning', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet ante in mauris mattis, id mollis lectus mollis. Ut ac ligula tempus, ultricies quam ac, posuere purus. Integer efficitur varius sem id ornare. Suspendisse in euismod tortor. Sed sollicitudin a tellus at pharetra. Proin mollis pretium elit, nec sollicitudin mi mattis sed. Cras nec mi porttitor, vestibulum turpis eu, venenatis dui. Ut luctus ex vel lectus cursus finibus. Vivamus lobortis a elit sed vestibulum. Nulla facilisi. Cras vel velit arcu. Vivamus sit amet malesuada justo. Mauris interdum id quam ac consequat. Aenean elementum tellus ac quam blandit, a pulvinar ante lacinia. Praesent quis magna placerat augue sodales vehicula ut nec lorem. Nunc vel urna vitae arcu porttitor lobortis vitae et felis.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce tincidunt feugiat ipsum eu molestie. Suspendisse ut pulvinar ligula. Aliquam congue ex non nisi elementum, ac varius nisl bibendum. Integer et ex nibh. Morbi imperdiet non tellus id condimentum. Quisque accumsan arcu ac nisl fermentum, non ullamcorper ex tempus. Sed consectetur elementum leo, sed mattis tortor.

In dapibus, enim id fringilla viverra, leo ligula pretium eros, vel vestibulum odio nisl at dolor. Maecenas erat nisi, maximus faucibus ornare nec, iaculis a erat. Ut consequat eu justo in rhoncus. Ut gravida auctor lectus ac suscipit. Nullam arcu sem, rhoncus non elit eu, vestibulum blandit orci. Integer consectetur lacinia felis, ac egestas ipsum blandit vel. Integer auctor purus quam, vel ornare sapien posuere imperdiet. Suspendisse sit amet semper diam. Integer sit amet turpis eu dolor dictum scelerisque sed fringilla velit. Curabitur vel vestibulum ipsum. Nulla ac consequat dolor.', N'img03.jpg', N'Art', CAST(N'2019-03-20' AS Date))
INSERT [dbo].[Article] ([id], [Title], [LongContent], [Image], [Category], [Date]) VALUES (4, N'Elevenia tawarkan layanan Mokado', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet ante in mauris mattis, id mollis lectus mollis. Ut ac ligula tempus, ultricies quam ac, posuere purus. Integer efficitur varius sem id ornare. Suspendisse in euismod tortor. Sed sollicitudin a tellus at pharetra. Proin mollis pretium elit, nec sollicitudin mi mattis sed. Cras nec mi porttitor, vestibulum turpis eu, venenatis dui. Ut luctus ex vel lectus cursus finibus. Vivamus lobortis a elit sed vestibulum. Nulla facilisi. Cras vel velit arcu. Vivamus sit amet malesuada justo. Mauris interdum id quam ac consequat. Aenean elementum tellus ac quam blandit, a pulvinar ante lacinia. Praesent quis magna placerat augue sodales vehicula ut nec lorem. Nunc vel urna vitae arcu porttitor lobortis vitae et felis.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce tincidunt feugiat ipsum eu molestie. Suspendisse ut pulvinar ligula. Aliquam congue ex non nisi elementum, ac varius nisl bibendum. Integer et ex nibh. Morbi imperdiet non tellus id condimentum. Quisque accumsan arcu ac nisl fermentum, non ullamcorper ex tempus. Sed consectetur elementum leo, sed mattis tortor.

In dapibus, enim id fringilla viverra, leo ligula pretium eros, vel vestibulum odio nisl at dolor. Maecenas erat nisi, maximus faucibus ornare nec, iaculis a erat. Ut consequat eu justo in rhoncus. Ut gravida auctor lectus ac suscipit. Nullam arcu sem, rhoncus non elit eu, vestibulum blandit orci. Integer consectetur lacinia felis, ac egestas ipsum blandit vel. Integer auctor purus quam, vel ornare sapien posuere imperdiet. Suspendisse sit amet semper diam. Integer sit amet turpis eu dolor dictum scelerisque sed fringilla velit. Curabitur vel vestibulum ipsum. Nulla ac consequat dolor.', N'img03.jpg', N'Art', CAST(N'2019-03-19' AS Date))
INSERT [dbo].[Article] ([id], [Title], [LongContent], [Image], [Category], [Date]) VALUES (7, N'Preventing bullshit from everywhere', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet ante in mauris mattis, id mollis lectus mollis. Ut ac ligula tempus, ultricies quam ac, posuere purus. Integer efficitur varius sem id ornare. Suspendisse in euismod tortor. Sed sollicitudin a tellus at pharetra. Proin mollis pretium elit, nec sollicitudin mi mattis sed. Cras nec mi porttitor, vestibulum turpis eu, venenatis dui. Ut luctus ex vel lectus cursus finibus. Vivamus lobortis a elit sed vestibulum. Nulla facilisi. Cras vel velit arcu. Vivamus sit amet malesuada justo. Mauris interdum id quam ac consequat. Aenean elementum tellus ac quam blandit, a pulvinar ante lacinia. Praesent quis magna placerat augue sodales vehicula ut nec lorem. Nunc vel urna vitae arcu porttitor lobortis vitae et felis.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce tincidunt feugiat ipsum eu molestie. Suspendisse ut pulvinar ligula. Aliquam congue ex non nisi elementum, ac varius nisl bibendum. Integer et ex nibh. Morbi imperdiet non tellus id condimentum. Quisque accumsan arcu ac nisl fermentum, non ullamcorper ex tempus. Sed consectetur elementum leo, sed mattis tortor.

In dapibus, enim id fringilla viverra, leo ligula pretium eros, vel vestibulum odio nisl at dolor. Maecenas erat nisi, maximus faucibus ornare nec, iaculis a erat. Ut consequat eu justo in rhoncus. Ut gravida auctor lectus ac suscipit. Nullam arcu sem, rhoncus non elit eu, vestibulum blandit orci. Integer consectetur lacinia felis, ac egestas ipsum blandit vel. Integer auctor purus quam, vel ornare sapien posuere imperdiet. Suspendisse sit amet semper diam. Integer sit amet turpis eu dolor dictum scelerisque sed fringilla velit. Curabitur vel vestibulum ipsum. Nulla ac consequat dolor.', N'img03.jpg', N'Art', CAST(N'2019-03-18' AS Date))
INSERT [dbo].[Article] ([id], [Title], [LongContent], [Image], [Category], [Date]) VALUES (8, N'Best in the worst', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet ante in mauris mattis, id mollis lectus mollis. Ut ac ligula tempus, ultricies quam ac, posuere purus. Integer efficitur varius sem id ornare. Suspendisse in euismod tortor. Sed sollicitudin a tellus at pharetra. Proin mollis pretium elit, nec sollicitudin mi mattis sed. Cras nec mi porttitor, vestibulum turpis eu, venenatis dui. Ut luctus ex vel lectus cursus finibus. Vivamus lobortis a elit sed vestibulum. Nulla facilisi. Cras vel velit arcu. Vivamus sit amet malesuada justo. Mauris interdum id quam ac consequat. Aenean elementum tellus ac quam blandit, a pulvinar ante lacinia. Praesent quis magna placerat augue sodales vehicula ut nec lorem. Nunc vel urna vitae arcu porttitor lobortis vitae et felis.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce tincidunt feugiat ipsum eu molestie. Suspendisse ut pulvinar ligula. Aliquam congue ex non nisi elementum, ac varius nisl bibendum. Integer et ex nibh. Morbi imperdiet non tellus id condimentum. Quisque accumsan arcu ac nisl fermentum, non ullamcorper ex tempus. Sed consectetur elementum leo, sed mattis tortor.

In dapibus, enim id fringilla viverra, leo ligula pretium eros, vel vestibulum odio nisl at dolor. Maecenas erat nisi, maximus faucibus ornare nec, iaculis a erat. Ut consequat eu justo in rhoncus. Ut gravida auctor lectus ac suscipit. Nullam arcu sem, rhoncus non elit eu, vestibulum blandit orci. Integer consectetur lacinia felis, ac egestas ipsum blandit vel. Integer auctor purus quam, vel ornare sapien posuere imperdiet. Suspendisse sit amet semper diam. Integer sit amet turpis eu dolor dictum scelerisque sed fringilla velit. Curabitur vel vestibulum ipsum. Nulla ac consequat dolor.', N'img03.jpg', N'Art', CAST(N'2019-03-21' AS Date))
INSERT [dbo].[Article] ([id], [Title], [LongContent], [Image], [Category], [Date]) VALUES (10, N'Preventing bullshit from everywhere', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet ante in mauris mattis, id mollis lectus mollis. Ut ac ligula tempus, ultricies quam ac, posuere purus. Integer efficitur varius sem id ornare. Suspendisse in euismod tortor. Sed sollicitudin a tellus at pharetra. Proin mollis pretium elit, nec sollicitudin mi mattis sed. Cras nec mi porttitor, vestibulum turpis eu, venenatis dui. Ut luctus ex vel lectus cursus finibus. Vivamus lobortis a elit sed vestibulum. Nulla facilisi. Cras vel velit arcu. Vivamus sit amet malesuada justo. Mauris interdum id quam ac consequat. Aenean elementum tellus ac quam blandit, a pulvinar ante lacinia. Praesent quis magna placerat augue sodales vehicula ut nec lorem. Nunc vel urna vitae arcu porttitor lobortis vitae et felis.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce tincidunt feugiat ipsum eu molestie. Suspendisse ut pulvinar ligula. Aliquam congue ex non nisi elementum, ac varius nisl bibendum. Integer et ex nibh. Morbi imperdiet non tellus id condimentum. Quisque accumsan arcu ac nisl fermentum, non ullamcorper ex tempus. Sed consectetur elementum leo, sed mattis tortor.

In dapibus, enim id fringilla viverra, leo ligula pretium eros, vel vestibulum odio nisl at dolor. Maecenas erat nisi, maximus faucibus ornare nec, iaculis a erat. Ut consequat eu justo in rhoncus. Ut gravida auctor lectus ac suscipit. Nullam arcu sem, rhoncus non elit eu, vestibulum blandit orci. Integer consectetur lacinia felis, ac egestas ipsum blandit vel. Integer auctor purus quam, vel ornare sapien posuere imperdiet. Suspendisse sit amet semper diam. Integer sit amet turpis eu dolor dictum scelerisque sed fringilla velit. Curabitur vel vestibulum ipsum. Nulla ac consequat dolor.', N'img03.jpg', N'Beauty', CAST(N'2019-03-22' AS Date))
INSERT [dbo].[Article] ([id], [Title], [LongContent], [Image], [Category], [Date]) VALUES (11, N'Best in the worst', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet ante in mauris mattis, id mollis lectus mollis. Ut ac ligula tempus, ultricies quam ac, posuere purus. Integer efficitur varius sem id ornare. Suspendisse in euismod tortor. Sed sollicitudin a tellus at pharetra. Proin mollis pretium elit, nec sollicitudin mi mattis sed. Cras nec mi porttitor, vestibulum turpis eu, venenatis dui. Ut luctus ex vel lectus cursus finibus. Vivamus lobortis a elit sed vestibulum. Nulla facilisi. Cras vel velit arcu. Vivamus sit amet malesuada justo. Mauris interdum id quam ac consequat. Aenean elementum tellus ac quam blandit, a pulvinar ante lacinia. Praesent quis magna placerat augue sodales vehicula ut nec lorem. Nunc vel urna vitae arcu porttitor lobortis vitae et felis.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce tincidunt feugiat ipsum eu molestie. Suspendisse ut pulvinar ligula. Aliquam congue ex non nisi elementum, ac varius nisl bibendum. Integer et ex nibh. Morbi imperdiet non tellus id condimentum. Quisque accumsan arcu ac nisl fermentum, non ullamcorper ex tempus. Sed consectetur elementum leo, sed mattis tortor.

In dapibus, enim id fringilla viverra, leo ligula pretium eros, vel vestibulum odio nisl at dolor. Maecenas erat nisi, maximus faucibus ornare nec, iaculis a erat. Ut consequat eu justo in rhoncus. Ut gravida auctor lectus ac suscipit. Nullam arcu sem, rhoncus non elit eu, vestibulum blandit orci. Integer consectetur lacinia felis, ac egestas ipsum blandit vel. Integer auctor purus quam, vel ornare sapien posuere imperdiet. Suspendisse sit amet semper diam. Integer sit amet turpis eu dolor dictum scelerisque sed fringilla velit. Curabitur vel vestibulum ipsum. Nulla ac consequat dolor.', N'img03.jpg', N'Beauty', CAST(N'2019-03-30' AS Date))
INSERT [dbo].[Article] ([id], [Title], [LongContent], [Image], [Category], [Date]) VALUES (12, N'Preventing bullshit from everywhere', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet ante in mauris mattis, id mollis lectus mollis. Ut ac ligula tempus, ultricies quam ac, posuere purus. Integer efficitur varius sem id ornare. Suspendisse in euismod tortor. Sed sollicitudin a tellus at pharetra. Proin mollis pretium elit, nec sollicitudin mi mattis sed. Cras nec mi porttitor, vestibulum turpis eu, venenatis dui. Ut luctus ex vel lectus cursus finibus. Vivamus lobortis a elit sed vestibulum. Nulla facilisi. Cras vel velit arcu. Vivamus sit amet malesuada justo. Mauris interdum id quam ac consequat. Aenean elementum tellus ac quam blandit, a pulvinar ante lacinia. Praesent quis magna placerat augue sodales vehicula ut nec lorem. Nunc vel urna vitae arcu porttitor lobortis vitae et felis.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce tincidunt feugiat ipsum eu molestie. Suspendisse ut pulvinar ligula. Aliquam congue ex non nisi elementum, ac varius nisl bibendum. Integer et ex nibh. Morbi imperdiet non tellus id condimentum. Quisque accumsan arcu ac nisl fermentum, non ullamcorper ex tempus. Sed consectetur elementum leo, sed mattis tortor.

In dapibus, enim id fringilla viverra, leo ligula pretium eros, vel vestibulum odio nisl at dolor. Maecenas erat nisi, maximus faucibus ornare nec, iaculis a erat. Ut consequat eu justo in rhoncus. Ut gravida auctor lectus ac suscipit. Nullam arcu sem, rhoncus non elit eu, vestibulum blandit orci. Integer consectetur lacinia felis, ac egestas ipsum blandit vel. Integer auctor purus quam, vel ornare sapien posuere imperdiet. Suspendisse sit amet semper diam. Integer sit amet turpis eu dolor dictum scelerisque sed fringilla velit. Curabitur vel vestibulum ipsum. Nulla ac consequat dolor.', N'img03.jpg', N'Food', CAST(N'2019-03-18' AS Date))
SET IDENTITY_INSERT [dbo].[Article] OFF
INSERT [dbo].[Category] ([Category], [Image]) VALUES (N'Art', N'img01.jpg')
INSERT [dbo].[Category] ([Category], [Image]) VALUES (N'Food', N'img01.jpg')
INSERT [dbo].[Category] ([Category], [Image]) VALUES (N'Beauty', N'img01.jpg')
INSERT [dbo].[Category] ([Category], [Image]) VALUES (N'Car', N'img01.jpg')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nguyá»
n ChÃ­nh NghÄ©a', N'nghiancse04410@gmail.com', N'0983567696', N'FPT University', N'aaaaaaaaaaa')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nguyá»
n ChÃ­nh NghÄ©a', N'nghiancse04410@gmail.com', N'0983567696', N'FPT University', N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nguyá»
n ChÃ­nh NghÄ©a', N'nghiancse04410@gmail.com', N'0983567696', N'FPT University', N'aaaaaaaaa')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nguyá»
n ChÃ­nh NghÄ©a', N'nghiancse04410@gmail.com', N'0983567696', N'FPT University', N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nguyá»
n ChÃ­nh NghÄ©a', N'nghiancse04410@gmail.com', N'0983567696', N'FPT University', N'aaaaaaaaa')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nguyá»
n ChÃ­nh NghÄ©a', N'nghiancse04410@gmail.com', N'0983567696', N'FPT University', N'aaaaaaaaa')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nguyá»
n ChÃ­nh NghÄ©a', N'nghiancse0441', N'0983567696', N'FPT University', N'aaaaaaaaaaaaa')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'NguyÃ¡Â»Â
n ChÃÂ­nh NghÃÂ©a', N'nghiancse0441', N'0983567696', N'FPT University', N' aaaaaaaaaaaaa ')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nghia', N'nghiancse0441', N'0983567696', N'FPT University', N'  aaaaaaaaaaaaa  ')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nghia', N'nghiancse0441', N'0983567696', N'FPT University', N'   aaaaaaaaaaaaa   ')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nghia', N'nghiancse0441', N'0983567696', N'FPT University', N'    aaaaaaaaaaaaa    ')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'NguyÃ¡Â»Â
n ChÃÂ­nh NghÃÂ©a', N'nghiancse0441', N'0983567696', N'FPT University', N'aaaaaaaaa')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nghia', N'nghiancse0441', N'0983567696', N'FPT University', N'  aaaaaaaaaa')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nghia', N'nghiancse0441', N'0983567696', N'FPT University', N'  aaaaaaaaaa')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nghia', N'nghiancse0441', N'0983567696', N'FPT University', N'   aaaaaaaaaa ')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'NguyÃ¡Â»Â
n ChÃÂ­nh NghÃÂ©a', N'nghiancse04410', N'0983567696', N'FPT University', N'aaaaaaaaaaa')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nguyá»
n ChÃ­nh NghÄ©a', N'nghiancse04410@gmail.com', N'0983567696', N'FPT University', N'aaaaaaaaaaaaa')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'Nguyá»
n ChÃ­nh NghÄ©a', N'nghiancse04410@gmail.com', N'0983567696', N'FPT University', N'aaaaaaaaaaaaa')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh8859@gmail.com', N'0913118859', N'Automatic', N'22C 23 xuan la tay ho')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh8859@gmail.com', N'0913118859', N'Automatic', N'22C 23 xuan la tay ho')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh8859@gmail.com', N'0913118859', N'Automatic', N'22C 23 xuan la tay ho')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh8859@gmail.com', N'0913118859', N'Automatic', N'22C 23 xuan la tay ho')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh8859@gmail.com', N'0913118859', N'Automatic', N'22C, ngÃ¡ch 23, ngÃµ 38')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh8859@gmail.com', N'0913118859', N'Automatic', N'22C, ngÃ¡ch 23, ngÃµ 38')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh88_59@gmail.com', N'0913118859', N'Automatic', N'22C, ngÃ¡ch 23')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh88_59@gmail.com', N'0913118859', N'Automatic', N'22C, ngÃ¡ch 23')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh8ASDA859@gmail.com', N'0913118859', N'Automatic', N'22C, ngÃ¡ch 23, ngÃµ ')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh8859@gmail.com', N'0913118859', N'Automatic', N'22C 23 xuan la tay ho')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh8859@gmail.com', N'0913118859', N'Automatic', N'22C, ngÃ¡ch 23, ngÃµ 38')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh8859@gmail.com', N'0913118859', N'Automatic', N'22C, ngÃ¡ch 23, ngÃµ 38')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh88_59@gmail.com', N'0913118859', N'Automatic', N'22C, ngÃ¡ch 23')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh8859@gmail.com', N'0913118859', N'Automatic', N'22C, ngÃ¡ch 23, ngÃµ 38')
INSERT [dbo].[Contact] ([Name], [Email], [Phone], [Company], [Message]) VALUES (N'VÅ© Äá»©c Anh', N'vud.anh8ASDA859@gmail.com', N'0913118859', N'Automatic', N'22C, ngÃ¡ch 23, ngÃµ ')
USE [master]
GO
ALTER DATABASE [P0005] SET  READ_WRITE 
GO
