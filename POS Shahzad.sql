USE [master]
GO
/****** Object:  Database [PointofSale]    Script Date: 06-Feb-20 5:03:52 PM ******/
CREATE DATABASE [PointofSale]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PointofSale', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PointofSale.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PointofSale_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PointofSale_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PointofSale] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PointofSale].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PointofSale] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PointofSale] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PointofSale] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PointofSale] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PointofSale] SET ARITHABORT OFF 
GO
ALTER DATABASE [PointofSale] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PointofSale] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PointofSale] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PointofSale] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PointofSale] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PointofSale] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PointofSale] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PointofSale] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PointofSale] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PointofSale] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PointofSale] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PointofSale] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PointofSale] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PointofSale] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PointofSale] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PointofSale] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PointofSale] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PointofSale] SET RECOVERY FULL 
GO
ALTER DATABASE [PointofSale] SET  MULTI_USER 
GO
ALTER DATABASE [PointofSale] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PointofSale] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PointofSale] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PointofSale] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PointofSale] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PointofSale', N'ON'
GO
ALTER DATABASE [PointofSale] SET QUERY_STORE = OFF
GO
USE [PointofSale]
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
USE [PointofSale]
GO
/****** Object:  Table [dbo].[Customer_Table]    Script Date: 06-Feb-20 5:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Table](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[CompnayName] [varchar](50) NULL,
	[Addressline1] [varchar](50) NULL,
	[Addressline2] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[Province] [varchar](50) NULL,
	[PostalCode] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[Accesskey] [varchar](50) NULL,
	[EmailAddress] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[FaxNumber] [varchar](50) NULL,
	[Website] [varchar](50) NULL,
	[SalesRep] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Customer_Table] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomFieldsTB]    Script Date: 06-Feb-20 5:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomFieldsTB](
	[CustomfieldID] [int] IDENTITY(1,1) NOT NULL,
	[Customfield1] [varchar](50) NULL,
	[Customfield2] [varchar](50) NULL,
	[Customfield3] [varchar](50) NULL,
	[Customfield4] [varchar](50) NULL,
	[Customfield5] [varchar](50) NULL,
 CONSTRAINT [PK_CustomFieldsTB] PRIMARY KEY CLUSTERED 
(
	[CustomfieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 06-Feb-20 5:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DeparmentDescription] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 06-Feb-20 5:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItemCode] [varchar](13) NOT NULL,
	[ItemDescription] [varchar](255) NULL,
	[ItemDepartmentID] [int] NULL,
	[PurchaseQty] [int] NULL,
	[SaleQty] [int] NULL,
	[BalanceQty] [int] NULL,
	[PurchaseRate] [float] NULL,
	[SaleRate] [float] NULL,
	[Minilevel] [int] NULL,
	[ExpiryDate] [date] NULL,
	[ProductImage] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ItemCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsletterSubscription&intestTB]    Script Date: 06-Feb-20 5:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsletterSubscription&intestTB](
	[NewsLetterID] [int] IDENTITY(1,1) NOT NULL,
	[NewLetter1] [bit] NULL,
	[NewLetter2] [bit] NULL,
	[NewLetter3] [bit] NULL,
	[NewLetter4] [bit] NULL,
	[NewLetter5] [bit] NULL,
	[NewLetter6] [bit] NULL,
	[NewLetter7] [bit] NULL,
	[NewLetter8] [bit] NULL,
	[NewLetter9] [bit] NULL,
	[NewLetter10] [bit] NULL,
	[NewLetter11] [bit] NULL,
	[NewLetter12] [bit] NULL,
	[NewLetter13] [bit] NULL,
	[NewLetter14] [bit] NULL,
	[NewLetter15] [bit] NULL,
	[NewLetter17] [bit] NULL,
	[NewLetter18] [bit] NULL,
	[NewLetter19] [bit] NULL,
	[NewLetter20] [bit] NULL,
	[LastModified] [date] NULL,
	[LastModby] [date] NULL,
 CONSTRAINT [PK_NewsletterSubscription&intestTB] PRIMARY KEY CLUSTERED 
(
	[NewsLetterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Optional Feilds]    Script Date: 06-Feb-20 5:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Optional Feilds](
	[OptionalFieldsId] [int] IDENTITY(1,1) NOT NULL,
	[IsCostomerAnonymousq] [int] NULL,
	[LoginAttempts] [bit] NULL,
	[TaxID] [varchar](50) NULL,
	[EmailSubscriber] [bit] NULL,
	[IDCustomersGroups] [varchar](50) NULL,
 CONSTRAINT [PK_Optional Feilds] PRIMARY KEY CLUSTERED 
(
	[OptionalFieldsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpacialPrivilages]    Script Date: 06-Feb-20 5:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpacialPrivilages](
	[PaysStateTex] [varchar](50) NULL,
	[PriceDiscountLevel] [varchar](50) NULL,
	[PersentDiscount] [varchar](50) NULL,
	[Rewardpoint] [varchar](50) NULL,
	[IsSuperAdmin] [bit] NULL,
	[AllowAccessToPrivateSections] [bit] NULL,
	[RemovedFromRewards] [bit] NULL,
	[SpacialPreviligesId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SpacialPrivilages] PRIMARY KEY CLUSTERED 
(
	[SpacialPreviligesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuppliersAccounts]    Script Date: 06-Feb-20 5:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuppliersAccounts](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [varchar](255) NULL,
	[SupplierTotalAmount] [float] NULL,
	[SupplierReceivedAmount] [float] NULL,
	[BalanceAmount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transections]    Script Date: 06-Feb-20 5:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transections](
	[TransectionID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNo] [varchar](255) NULL,
	[BillDate] [date] NULL,
	[SupplierID] [int] NULL,
	[ItemCode] [varchar](13) NULL,
	[Qty] [int] NULL,
	[PRate] [float] NULL,
	[SRate] [float] NULL,
	[Scheme] [int] NULL,
	[Discount] [float] NULL,
	[GST] [float] NULL,
	[Amount] [float] NULL,
	[TotalAmount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[TransectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06-Feb-20 5:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](255) NULL,
	[UserRole] [varchar](255) NULL,
	[UserPassword] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vender]    Script Date: 06-Feb-20 5:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vender](
	[VenderID] [int] IDENTITY(1,1) NOT NULL,
	[VenderName] [varchar](255) NULL,
	[VenderAddress] [varchar](255) NULL,
	[VenderEmail] [varchar](255) NULL,
	[VenderEmailSubject] [varchar](255) NULL,
	[VenderFaxNo] [varchar](255) NULL,
	[POSignedBy] [varchar](255) NULL,
	[Active] [bit] NULL,
	[AllowDropShip] [bit] NULL,
	[ShipTo] [varchar](255) NULL,
	[ShipVia] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[VenderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Verient]    Script Date: 06-Feb-20 5:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Verient](
	[VerintID] [int] IDENTITY(1,1) NOT NULL,
	[size] [varchar](255) NULL,
	[color] [varchar](255) NULL,
	[Gramage] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[VerintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD FOREIGN KEY([ItemDepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Transections]  WITH CHECK ADD FOREIGN KEY([ItemCode])
REFERENCES [dbo].[Items] ([ItemCode])
GO
ALTER TABLE [dbo].[Transections]  WITH CHECK ADD FOREIGN KEY([SupplierID])
REFERENCES [dbo].[SuppliersAccounts] ([SupplierID])
GO
USE [master]
GO
ALTER DATABASE [PointofSale] SET  READ_WRITE 
GO
