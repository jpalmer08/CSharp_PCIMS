USE [master]
GO
/****** Object:  Database [PCIMS]    Script Date: 2/16/2020 9:36:53 PM ******/
CREATE DATABASE [PCIMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PCIMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PCIMS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PCIMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PCIMS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PCIMS] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PCIMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PCIMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PCIMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PCIMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PCIMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PCIMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [PCIMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PCIMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PCIMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PCIMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PCIMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PCIMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PCIMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PCIMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PCIMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PCIMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PCIMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PCIMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PCIMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PCIMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PCIMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PCIMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PCIMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PCIMS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PCIMS] SET  MULTI_USER 
GO
ALTER DATABASE [PCIMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PCIMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PCIMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PCIMS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PCIMS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PCIMS] SET QUERY_STORE = OFF
GO
USE [PCIMS]
GO
/****** Object:  Table [dbo].[cargo]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cargo](
	[Name] [nvarchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[control]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[control](
	[STATION] [nvarchar](2) NULL,
	[LASTJOB] [int] NULL,
	[LASTINV] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[ContactFirstName] [nvarchar](30) NULL,
	[ContactLastName] [nvarchar](50) NULL,
	[CompanyOrDepartment] [nvarchar](35) NULL,
	[SortOrder] [nvarchar](35) NOT NULL,
	[BillingAddress] [nvarchar](255) NULL,
	[BillingAddress2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[StateOrProvince] [nvarchar](20) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[Country] [nvarchar](50) NULL,
	[ContactTitle] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](30) NULL,
	[Extension] [nvarchar](50) NULL,
	[FaxNumber] [nvarchar](30) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[Notes] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inspector]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inspector](
	[EMPID] [nvarchar](5) NULL,
	[LNAME] [nvarchar](30) NULL,
	[FNAME] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryDetail]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryDetail](
	[DtlNbr] [int] IDENTITY(1,1) NOT NULL,
	[JobNbr] [int] NOT NULL,
	[CalcType] [nvarchar](1) NULL,
	[VCFTABLE] [nvarchar](2) NULL,
	[BeforeGRAV] [decimal](18, 0) NULL,
	[AfterGRAV] [decimal](18, 0) NULL,
	[ConvGRAV] [decimal](18, 0) NULL,
	[GROSS_TOT] [float] NULL,
	[GROSS_BARR] [float] NULL,
	[GROSS_METE] [float] NULL,
	[GROSS_GALL] [float] NULL,
	[GROSS_LONG] [float] NULL,
	[GROSS_METR] [float] NULL,
	[GROSS_SHOR] [float] NULL,
	[GROSS_PDS] [float] NULL,
	[NET_TOT] [float] NULL,
	[NET_BARR] [float] NULL,
	[NET_METE] [float] NULL,
	[NET_GALL] [float] NULL,
	[NET_LONG] [float] NULL,
	[NET_METR] [float] NULL,
	[NET_SHOR] [float] NULL,
	[NET_PDS] [float] NULL,
	[FWG] [nvarchar](15) NULL,
	[NOTE] [nvarchar](250) NULL,
	[WT_VOL] [nvarchar](1) NULL,
	[TOT_CONV] [nvarchar](1) NULL,
	[APPLY_ROOF] [nvarchar](1) NULL,
	[TankName] [nvarchar](68) NULL,
	[T1A] [nvarchar](5) NULL,
	[G1A] [nvarchar](11) NULL,
	[NSV1A] [float] NULL,
	[TOV1A] [float] NULL,
	[WG1A] [nvarchar](10) NULL,
	[WV1A] [decimal](18, 0) NULL,
	[CTSH1A] [decimal](18, 0) NULL,
	[RC1A] [float] NULL,
	[GOV1A] [float] NULL,
	[TP1A] [decimal](18, 0) NULL,
	[API1A] [decimal](18, 0) NULL,
	[VCF1A] [decimal](18, 0) NULL,
	[TRUCK1_DE] [nvarchar](45) NULL,
	[TRUCK1_GR] [float] NULL,
	[TRUCK1_TP] [decimal](18, 0) NULL,
	[TRUCK1_API] [decimal](18, 0) NULL,
	[TRUCK1_VCF] [decimal](18, 0) NULL,
	[TRUCK1_NSV] [float] NULL,
	[TRUCK2_DE] [nvarchar](45) NULL,
	[TRUCK2_GR] [float] NULL,
	[TRUCK2_TP] [decimal](18, 0) NULL,
	[TRUCK2_API] [decimal](18, 0) NULL,
	[TRUCK2_VCF] [decimal](18, 0) NULL,
	[TRUCK2_NSV] [float] NULL,
	[TRUCK3_DE] [nvarchar](45) NULL,
	[TRUCK3_GR] [float] NULL,
	[TRUCK3_TP] [decimal](18, 0) NULL,
	[TRUCK3_API] [decimal](18, 0) NULL,
	[TRUCK3_VCF] [decimal](18, 0) NULL,
	[TRUCK3_NSV] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryHeader]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryHeader](
	[JobNbr] [int] NOT NULL,
	[Gauge] [nvarchar](10) NULL,
	[MeasType] [nvarchar](15) NULL,
	[MeasDecs] [decimal](18, 0) NULL,
	[VCFTable] [nvarchar](2) NULL,
	[ConvTable] [nvarchar](2) NULL,
	[ConvDecs] [decimal](18, 0) NULL,
	[Notes] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceDetail]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetail](
	[DtlNbr] [int] IDENTITY(1,1) NOT NULL,
	[JobNbr] [int] NOT NULL,
	[ServiceCode] [nvarchar](4) NULL,
	[ServiceDesc] [nvarchar](50) NULL,
	[Quantity] [float] NULL,
	[Unit] [nvarchar](6) NULL,
	[UnitPrice] [float] NULL,
	[Amount] [money] NULL,
	[LineSplit] [float] NULL,
	[LineDisc] [float] NULL,
	[LineTotal] [money] NULL,
	[LineNbr] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceHeader]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceHeader](
	[InvNbr] [int] NOT NULL,
	[JobNbr] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[InvDate] [nvarchar](10) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[BillingAddress] [nvarchar](255) NULL,
	[BillingAddress2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[StateOrProvince] [nvarchar](20) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[Country] [nvarchar](50) NULL,
	[CustRefNbr] [nvarchar](30) NULL,
	[JobDate] [nvarchar](10) NULL,
	[JobDesc] [nvarchar](50) NULL,
	[PctDiscount] [decimal](6, 2) NULL,
	[Split] [decimal](6, 2) NULL,
	[Notes] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobs]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobs](
	[JobNbr] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OrderDateTime] [date] NULL,
	[TakenBy] [nvarchar](25) NULL,
	[JobType] [int] NULL,
	[OrderBy] [nvarchar](25) NULL,
	[DateSampled] [date] NULL,
	[SubmissionID] [nvarchar](40) NULL,
	[Terminal] [nvarchar](40) NULL,
	[Location] [nvarchar](40) NULL,
	[Cargo] [nvarchar](40) NULL,
	[SampleQty] [int] NULL,
	[DateinLab] [date] NULL,
	[DateCompleted] [date] NULL,
	[Reports] [nvarchar](15) NULL,
	[Splits] [smallint] NULL,
	[Dist1] [nvarchar](250) NULL,
	[Dist2] [nvarchar](250) NULL,
	[Subs] [tinyint] NULL,
	[LD] [nvarchar](9) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobtemplates]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobtemplates](
	[DtlNbr] [int] IDENTITY(1,1) NOT NULL,
	[TemplateId] [int] NOT NULL,
	[JobNbr] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobtypes]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobtypes](
	[JobTypeID] [int] NOT NULL,
	[JobTypeDesc] [nvarchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[labdetail]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[labdetail](
	[DtlNbr] [int] IDENTITY(1,1) NOT NULL,
	[JobNbr] [int] NOT NULL,
	[SheetNbr] [smallint] NULL,
	[LineNbr] [smallint] NULL,
	[Marked] [nvarchar](60) NULL,
	[Re] [nvarchar](6) NULL,
	[TemplateId] [int] NULL,
	[TestId] [int] NULL,
	[Test] [nvarchar](80) NULL,
	[Astm] [nvarchar](32) NULL,
	[CompBy] [nvarchar](6) NULL,
	[ReleaseId] [nvarchar](6) NULL,
	[Spec] [nvarchar](60) NULL,
	[Fee] [decimal](18, 0) NULL,
	[Result] [nvarchar](20) NULL,
	[Note] [nvarchar](140) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[labfees]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[labfees](
	[TestId] [int] IDENTITY(1,1) NOT NULL,
	[TestDesc] [nvarchar](250) NOT NULL,
	[Fee] [decimal](18, 0) NOT NULL,
	[ASTM] [char](16) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[labheader]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[labheader](
	[JobNbr] [int] NOT NULL,
	[SheetNbr] [smallint] NULL,
	[SheetDesc] [nvarchar](30) NULL,
	[Product] [nvarchar](20) NULL,
	[Marked] [nvarchar](20) NULL,
	[WhoFrom] [nvarchar](30) NULL,
	[WhoFor] [nvarchar](30) NULL,
	[CustCode] [nvarchar](8) NULL,
	[LabNbr] [nvarchar](10) NULL,
	[LabDate] [smalldatetime] NULL,
	[TotalTest] [int] NULL,
	[TotalCharge] [decimal](18, 0) NULL,
	[Ot] [decimal](18, 0) NULL,
	[Tests] [nvarchar](126) NULL,
	[Template] [int] NULL,
	[Okayed] [nvarchar](3) NULL,
	[Disposal] [decimal](18, 0) NULL,
	[SampleDate] [smalldatetime] NULL,
	[Spec] [nvarchar](10) NULL,
	[Notes1] [nvarchar](200) NULL,
	[Notes2] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[labrptdtl]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[labrptdtl](
	[JobNbr] [int] IDENTITY(1,1) NOT NULL,
	[LineNbr] [smallint] NULL,
	[Result] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[labrpthdr]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[labrpthdr](
	[JobNbr] [int] NOT NULL,
	[LabNbr] [nvarchar](15) NULL,
	[ReportDate] [smalldatetime] NULL,
	[Sample1] [nvarchar](25) NULL,
	[Sample2] [nvarchar](25) NULL,
	[IdMarks1] [nvarchar](25) NULL,
	[IdMarks2] [nvarchar](25) NULL,
	[IdMarks3] [nvarchar](25) NULL,
	[IdMarks4] [nvarchar](25) NULL,
	[Submitted1] [nvarchar](25) NULL,
	[Submitted2] [nvarchar](25) NULL,
	[Client1] [int] NULL,
	[Client2] [int] NULL,
	[Client3] [int] NULL,
	[Client4] [int] NULL,
	[Header1] [nvarchar](25) NULL,
	[Header2] [nvarchar](25) NULL,
	[Foot1] [nvarchar](50) NULL,
	[Foot2] [nvarchar](50) NULL,
	[Foot3] [nvarchar](50) NULL,
	[RetDays] [int] NULL,
	[Notes] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[labspecs]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[labspecs](
	[Product] [nvarchar](80) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Specs] [nvarchar](60) NULL,
	[TestId] [int] NOT NULL,
	[Astm] [nvarchar](32) NULL,
	[Min] [nvarchar](50) NULL,
	[Max] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[labtemplatefees]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[labtemplatefees](
	[TemplateId] [int] NOT NULL,
	[TestId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[labtemplates]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[labtemplates](
	[TemplateID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateName] [nvarchar](30) NULL,
	[Re] [nvarchar](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[location]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location](
	[Name] [nvarchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prices]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prices](
	[ServiceCode] [nvarchar](4) NOT NULL,
	[ServiceDesc] [nvarchar](50) NOT NULL,
	[Amount] [float] NOT NULL,
	[MinCharge] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rptdist]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rptdist](
	[JobNbr] [int] NOT NULL,
	[Notes] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[specinstr]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[specinstr](
	[JobNbr] [int] NOT NULL,
	[Notes] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[splits]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[splits](
	[SplitID] [int] IDENTITY(1,1) NOT NULL,
	[JobNbr] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[CustOrdNbr] [nvarchar](30) NULL,
	[Split] [decimal](6, 3) NULL,
	[SplitLetter] [nvarchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stdetail]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stdetail](
	[JobNbr] [int] NOT NULL,
	[TabNbr] [tinyint] NULL,
	[Tn1] [nvarchar](68) NULL,
	[Product] [nvarchar](30) NULL,
	[T1A] [nvarchar](5) NULL,
	[T1B] [nvarchar](5) NULL,
	[G1A] [nvarchar](11) NULL,
	[G1B] [nvarchar](11) NULL,
	[TOV1A] [decimal](13, 3) NULL,
	[TOV1B] [decimal](13, 3) NULL,
	[WG1A] [nvarchar](10) NULL,
	[WG1B] [nvarchar](10) NULL,
	[WV1A] [decimal](13, 3) NULL,
	[WV1B] [decimal](13, 3) NULL,
	[CTSH1A] [decimal](6, 5) NULL,
	[CTSH1B] [decimal](6, 5) NULL,
	[RC1A] [decimal](13, 3) NULL,
	[RC1B] [decimal](13, 3) NULL,
	[GOV1A] [decimal](13, 3) NULL,
	[GOV1B] [decimal](13, 3) NULL,
	[TP1A] [decimal](5, 1) NULL,
	[TP1B] [decimal](5, 1) NULL,
	[API1A] [decimal](5, 1) NULL,
	[API1B] [decimal](5, 1) NULL,
	[VCF1A] [decimal](6, 5) NULL,
	[VCF1B] [decimal](6, 5) NULL,
	[GSV1A] [decimal](13, 3) NULL,
	[GSV1B] [decimal](13, 3) NULL,
	[PCT_SWA] [decimal](13, 3) NULL,
	[PCT_SWB] [decimal](13, 3) NULL,
	[PCT_SWT] [decimal](13, 3) NULL,
	[VOL_SWA] [decimal](13, 3) NULL,
	[VOL_SWB] [decimal](13, 3) NULL,
	[VOL_SWT] [decimal](13, 3) NULL,
	[TRUCK1_DE] [nvarchar](45) NULL,
	[TRUCK1_GR] [decimal](13, 3) NULL,
	[TRUCK1_TP] [decimal](5, 1) NULL,
	[TRUCK1_API] [decimal](5, 1) NULL,
	[TRUCK1_VCF] [decimal](6, 5) NULL,
	[TRUCK1_NSV] [decimal](13, 3) NULL,
	[TRUCK2_DE] [nvarchar](45) NULL,
	[TRUCK2_GR] [decimal](13, 3) NULL,
	[TRUCK2_TP] [decimal](5, 1) NULL,
	[TRUCK2_API] [decimal](5, 1) NULL,
	[TRUCK2_VCF] [decimal](6, 5) NULL,
	[TRUCK2_NSV] [decimal](13, 3) NULL,
	[TRUCK3_DE] [nvarchar](45) NULL,
	[TRUCK3_GR] [decimal](13, 3) NULL,
	[TRUCK3_TP] [decimal](5, 1) NULL,
	[TRUCK3_API] [decimal](5, 1) NULL,
	[TRUCK3_VCF] [decimal](6, 5) NULL,
	[TRUCK3_NSV] [decimal](13, 3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stheader]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stheader](
	[JobNbr] [int] NOT NULL,
	[Method] [nvarchar](1) NULL,
	[Gauge] [nvarchar](1) NULL,
	[MeasType] [nvarchar](1) NULL,
	[MeasDecs] [int] NULL,
	[VCFDecs] [int] NULL,
	[ConvFactor] [float] NULL,
	[ConvTable] [nvarchar](2) NULL,
	[ConvDecs] [int] NULL,
	[NbrTanks] [int] NULL,
	[CalcType] [nvarchar](1) NULL,
	[VCFTABLE] [nvarchar](2) NULL,
	[BeforeGRAV] [decimal](5, 1) NULL,
	[AfterGRAV] [decimal](5, 1) NULL,
	[ConvGRAV] [decimal](5, 1) NULL,
	[ADD_DE] [nvarchar](25) NULL,
	[ADD_GR] [decimal](13, 3) NULL,
	[ADD_TP] [decimal](5, 1) NULL,
	[ADD_API] [decimal](5, 1) NULL,
	[ADD_VCF] [decimal](6, 5) NULL,
	[ADD_NSV] [decimal](13, 3) NULL,
	[GROSS_TOT] [decimal](13, 3) NULL,
	[GROSS_BARR] [decimal](13, 3) NULL,
	[GROSS_METE] [decimal](13, 3) NULL,
	[GROSS_GALL] [decimal](13, 3) NULL,
	[GROSS_LONG] [decimal](13, 3) NULL,
	[GROSS_METR] [decimal](13, 3) NULL,
	[GROSS_SHOR] [decimal](13, 3) NULL,
	[GROSS_PDS] [decimal](13, 3) NULL,
	[NET_TOT] [decimal](13, 3) NULL,
	[NET_BARR] [decimal](13, 3) NULL,
	[NET_METE] [decimal](13, 3) NULL,
	[NET_GALL] [decimal](13, 3) NULL,
	[NET_LONG] [decimal](13, 3) NULL,
	[NET_METR] [decimal](13, 3) NULL,
	[NET_SHOR] [decimal](13, 3) NULL,
	[NET_PDS] [decimal](13, 3) NULL,
	[SH1] [nvarchar](5) NULL,
	[SH2] [nvarchar](5) NULL,
	[SH3] [decimal](18, 0) NULL,
	[FWG] [nvarchar](15) NULL,
	[NOTE] [nvarchar](80) NULL,
	[WT_VOL] [nvarchar](1) NULL,
	[TOT_CONV] [nvarchar](1) NULL,
	[PCT_SW_TOT] [decimal](5, 1) NULL,
	[VOL_SW_TOT] [decimal](13, 3) NULL,
	[BEFORE_SW] [nvarchar](1) NULL,
	[APPLY_ROOF] [nvarchar](1) NULL,
	[FREEWATER] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[table11]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table11](
	[API] [decimal](4, 1) NULL,
	[LT_BARREL] [decimal](6, 5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[table13]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table13](
	[API] [decimal](4, 1) NULL,
	[MT_BARREL] [decimal](6, 5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[table8]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table8](
	[API] [decimal](4, 1) NULL,
	[PDS] [decimal](6, 5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tableb1]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tableb1](
	[SHELLTEMP] [int] NULL,
	[CONVFACT] [decimal](6, 5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[terminal]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[terminal](
	[Name] [nvarchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeDtl]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeDtl](
	[JobNbr] [int] NOT NULL,
	[LineNbr] [smallint] NULL,
	[Date] [smalldatetime] NULL,
	[Time] [nvarchar](4) NULL,
	[Event] [nvarchar](80) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[timehd]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timehd](
	[JobNbr] [int] NOT NULL,
	[ReportDate] [smalldatetime] NULL,
	[Pumprate] [nvarchar](15) NULL,
	[TermBy] [nvarchar](15) NULL,
	[Loadtime] [nvarchar](15) NULL,
	[Delay1] [nvarchar](30) NULL,
	[Delay2] [nvarchar](30) NULL,
	[Delay3] [nvarchar](30) NULL,
	[Lastcargo] [nvarchar](30) NULL,
	[2ndcargo] [nvarchar](30) NULL,
	[3rdcargo] [nvarchar](30) NULL,
	[Weather] [nvarchar](10) NULL,
	[Airtemp] [nvarchar](10) NULL,
	[Seatemp] [nvarchar](10) NULL,
	[Sea] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vessel]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vessel](
	[Name] [nvarchar](40) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vgdetail]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vgdetail](
	[JobNbr] [int] NOT NULL,
	[BeforeAfter] [nvarchar](20) NULL,
	[Tank] [nvarchar](4) NULL,
	[Gauge] [nvarchar](11) NULL,
	[TrimGauge] [nvarchar](10) NULL,
	[ObservVol] [float] NULL,
	[FreeGauge] [nvarchar](10) NULL,
	[FreeVol] [float] NULL,
	[GrossObs] [float] NULL,
	[Temperature] [decimal](5, 1) NULL,
	[VCF] [decimal](8, 5) NULL,
	[GrossStd] [float] NULL,
	[LineNbr] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vgheader]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vgheader](
	[JobNbr] [int] NOT NULL,
	[Stage] [nvarchar](20) NULL,
	[Method] [nvarchar](1) NULL,
	[Gauge] [nvarchar](1) NULL,
	[MeasType] [nvarchar](1) NULL,
	[MeasDecs] [int] NULL,
	[VCFDecs] [int] NULL,
	[ConvFactor] [float] NULL,
	[ConvTable] [nvarchar](2) NULL,
	[ConvDecs] [int] NULL,
	[NbrTanks] [int] NULL,
	[CalcType] [nvarchar](1) NULL,
	[AvgTempBefore] [decimal](5, 1) NULL,
	[AvgTempAfter] [decimal](5, 1) NULL,
	[VCFBefore] [decimal](8, 5) NULL,
	[VCFAfter] [decimal](8, 5) NULL,
	[VCFTABLE] [nvarchar](2) NULL,
	[BeforeGRAV] [decimal](5, 1) NULL,
	[AfterGRAV] [decimal](5, 1) NULL,
	[ConvGRAV] [decimal](5, 1) NULL,
	[ULINBEFORE] [nvarchar](1) NULL,
	[ULINAFTER] [nvarchar](1) NULL,
	[BEFORE] [nvarchar](25) NULL,
	[AFTER] [nvarchar](25) NULL,
	[SEALS] [nvarchar](25) NULL,
	[FWDBEFORE] [nvarchar](6) NULL,
	[AFTBEFORE] [nvarchar](6) NULL,
	[LSTBEFORE] [nvarchar](6) NULL,
	[FWDAFTER] [nvarchar](6) NULL,
	[AFTAFTER] [nvarchar](6) NULL,
	[LSTAFTER] [nvarchar](6) NULL,
	[VEF] [decimal](13, 3) NULL,
	[GROSSBARRBefore] [decimal](13, 3) NULL,
	[GROSSMETEBefore] [decimal](13, 3) NULL,
	[GROSSGALLBefore] [decimal](13, 3) NULL,
	[GROSSLONGBefore] [decimal](13, 3) NULL,
	[GROSSMETRBefore] [decimal](13, 3) NULL,
	[GROSSSHORBefore] [decimal](13, 3) NULL,
	[GROSSPDSBefore] [decimal](13, 3) NULL,
	[NETBARRBefore] [decimal](13, 3) NULL,
	[NETMETEBefore] [decimal](13, 3) NULL,
	[NETGALLBefore] [decimal](13, 3) NULL,
	[NETLONGBefore] [decimal](13, 3) NULL,
	[NETMETRBefore] [decimal](13, 3) NULL,
	[NETSHORBefore] [decimal](13, 3) NULL,
	[NETPDSBefore] [decimal](13, 3) NULL,
	[GROSSBARRAfter] [decimal](13, 3) NULL,
	[GROSSMETEAfter] [decimal](13, 3) NULL,
	[GROSSGALLAfter] [decimal](13, 3) NULL,
	[GROSSLONGAfter] [decimal](13, 3) NULL,
	[GROSSMETRAfter] [decimal](13, 3) NULL,
	[GROSSSHORAfter] [decimal](13, 3) NULL,
	[GROSSPDSAfter] [decimal](13, 3) NULL,
	[NETBARRAfter] [decimal](13, 3) NULL,
	[NETMETEAfter] [decimal](13, 3) NULL,
	[NETGALLAfter] [decimal](13, 3) NULL,
	[NETLONGAfter] [decimal](13, 3) NULL,
	[NETMETRAfter] [decimal](13, 3) NULL,
	[NETSHORAfter] [decimal](13, 3) NULL,
	[NETPDSAfter] [decimal](13, 3) NULL,
	[GROSSBARR] [decimal](13, 3) NULL,
	[GROSSMETE] [decimal](13, 3) NULL,
	[GROSSGALL] [decimal](13, 3) NULL,
	[GROSSLONG] [decimal](13, 3) NULL,
	[GROSSMETR] [decimal](13, 3) NULL,
	[GROSSSHOR] [decimal](13, 3) NULL,
	[GROSSPDS] [decimal](13, 3) NULL,
	[NETBARR] [decimal](13, 3) NULL,
	[NETMETE] [decimal](13, 3) NULL,
	[NETGALL] [decimal](13, 3) NULL,
	[NETLONG] [decimal](13, 3) NULL,
	[NETMETR] [decimal](13, 3) NULL,
	[NETSHOR] [decimal](13, 3) NULL,
	[NETPDS] [decimal](13, 3) NULL,
	[SWP] [decimal](13, 3) NULL,
	[SWV] [decimal](13, 3) NULL,
	[CALCVOL] [decimal](13, 3) NULL,
	[OBQLOT] [decimal](18, 0) NULL,
	[CPT] [nvarchar](20) NULL,
	[NOTE] [nvarchar](80) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Delete_AllLabTemplateFeeDataById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_AllLabTemplateFeeDataById] 
	-- Add the parameters for the stored procedure here
	@TemplateID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM [dbo].[labtemplatefees] WHERE TemplateID = @TemplateID
END
GO
/****** Object:  StoredProcedure [dbo].[Delete_AppliedTemplateById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_AppliedTemplateById] 
	-- Add the parameters for the stored procedure here
	@DtlNbr		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE FROM [dbo].[jobtemplates]
		WHERE DtlNbr = @DtlNbr
END	
GO
/****** Object:  StoredProcedure [dbo].[Delete_AppliedTemplatesById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_AppliedTemplatesById] 
	-- Add the parameters for the stored procedure here
	@JobNbr			int,
	@TemplateId		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE FROM [dbo].[labdetail]
		WHERE	TemplateId = @TemplateId
			AND	JobNbr = @JobNbr
END	
GO
/****** Object:  StoredProcedure [dbo].[Delete_AppliedTestById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_AppliedTestById] 
	-- Add the parameters for the stored procedure here
	@DtlNbr		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE FROM [dbo].[labdetail]
		WHERE DtlNbr = @DtlNbr
END	
GO
/****** Object:  StoredProcedure [dbo].[Delete_AppliedTestsById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_AppliedTestsById] 
	-- Add the parameters for the stored procedure here
	@JobNbr		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE FROM [dbo].[labdetail]
		WHERE JobNbr = @JobNbr
END	
GO
/****** Object:  StoredProcedure [dbo].[Delete_AppliedTestsBySheetNbr]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_AppliedTestsBySheetNbr] 
	-- Add the parameters for the stored procedure here
	@JobNbr		int,
	@SheetNbr	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE FROM [dbo].[labdetail]
		WHERE	JobNbr = @JobNbr
			AND SheetNbr = @SheetNbr
END	
GO
/****** Object:  StoredProcedure [dbo].[Delete_CustomerInfoById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_CustomerInfoById]
	@CustomerID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DELETE FROM [dbo].[Customers] WHERE CustomerID = @CustomerID
END
GO
/****** Object:  StoredProcedure [dbo].[Delete_JobInfoById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_JobInfoById]
	@JobNbr int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DELETE FROM [dbo].[jobs] WHERE JobNbr = @JobNbr
END
GO
/****** Object:  StoredProcedure [dbo].[Delete_LabFeeInfoById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_LabFeeInfoById]
	@TestID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DELETE FROM [dbo].[labfees] WHERE TestID = @TestID
END
GO
/****** Object:  StoredProcedure [dbo].[Delete_LabSpecByCustomerIdAndTestId]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_LabSpecByCustomerIdAndTestId] 
	-- Add the parameters for the stored procedure here
	@CustomerId	int,
	@TestId		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM [dbo].[labspecs]
	WHERE	[CustomerId] = @CustomerId
		AND	[TestId] = @TestId
END
GO
/****** Object:  StoredProcedure [dbo].[Delete_LabTemplateFeeData]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_LabTemplateFeeData] 
	-- Add the parameters for the stored procedure here
	@TemplateID int,
	@TestID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM [dbo].[labtemplatefees] WHERE TemplateID = @TemplateID AND TestID = @TestID
END
GO
/****** Object:  StoredProcedure [dbo].[Delete_LabTemplateInfoById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_LabTemplateInfoById] 
		@TemplateID  int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM [dbo].[labtemplates] WHERE TemplateID = @TemplateID
END
GO
/****** Object:  StoredProcedure [dbo].[Get_AllCompanyNames]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AllCompanyNames]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT CustomerID, CompanyName FROM [dbo].[Customers]
END
GO
/****** Object:  StoredProcedure [dbo].[Get_AllCustomerInfo]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AllCustomerInfo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM [dbo].[Customers]
END
GO
/****** Object:  StoredProcedure [dbo].[Get_AllJobInfo]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AllJobInfo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT * FROM [dbo].[jobs]
END
GO
/****** Object:  StoredProcedure [dbo].[Get_AllJobSelectInfo]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AllJobSelectInfo]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT [JobNbr],[CustomerID],[OrderDateTime],[JobType] FROM [dbo].[jobs]
END
GO
/****** Object:  StoredProcedure [dbo].[Get_AllLabSpecs]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AllLabSpecs]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM [dbo].[labspecs]
END
GO
/****** Object:  StoredProcedure [dbo].[Get_AllLabSpecsByCustomerId]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AllLabSpecsByCustomerId] 
	-- Add the parameters for the stored procedure here
	@CustomerId	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Product],[Specs],[TestId],[Astm],[Min],[Max]
	FROM [dbo].[labspecs]
	WHERE [CustomerId]= @CustomerId
END
GO
/****** Object:  StoredProcedure [dbo].[Get_AllLabTemplateFeeInfo]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AllLabTemplateFeeInfo] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM [dbo].[labfees]
END
GO
/****** Object:  StoredProcedure [dbo].[Get_AllLabTemplateFeeInfoById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AllLabTemplateFeeInfoById] 
	@TemplateID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [TestID] FROM [dbo].[labtemplatefees] WHERE TemplateID = @TemplateID
END
GO
/****** Object:  StoredProcedure [dbo].[Get_AllLabTemplateInfo]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AllLabTemplateInfo] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM [dbo].[labtemplates]
END
GO
/****** Object:  StoredProcedure [dbo].[Get_AppliedTemplateById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AppliedTemplateById] 
	-- Add the parameters for the stored procedure here
	@DtlNbr		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT * FROM [dbo].[jobtemplates]
		WHERE DtlNbr = @DtlNbr
END	
GO
/****** Object:  StoredProcedure [dbo].[Get_AppliedTemplatesById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AppliedTemplatesById] 
	-- Add the parameters for the stored procedure here
	@JobNbr		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [DtlNbr], [TemplateId]
	FROM [dbo].[jobtemplates]
		WHERE [JobNbr] = @JobNbr
END	
GO
/****** Object:  StoredProcedure [dbo].[Get_AppliedTestsById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AppliedTestsById]
	@JobNbr		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * 
	FROM [dbo].[labdetail] 
	WHERE [JobNbr] = @jobNbr
END
GO
/****** Object:  StoredProcedure [dbo].[Get_AppliedTestsBySheetNbr]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_AppliedTestsBySheetNbr] 
	-- Add the parameters for the stored procedure here
	@JobNbr		int,
	@SheetNbr	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT * 
	FROM [dbo].[labdetail]
	WHERE	JobNbr = @JobNbr
		AND SheetNbr = @SheetNbr
END	
GO
/****** Object:  StoredProcedure [dbo].[Get_CompanyNameById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_CompanyNameById]
	-- Add the parameters for the stored procedure here
	@CustomerId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [CompanyName] FROM [dbo].[Customers] WHERE CustomerID = @CustomerId
END
GO
/****** Object:  StoredProcedure [dbo].[Get_CustomerInfoById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_CustomerInfoById]
	@CustomerID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM [dbo].[Customers] WHERE [CustomerID] = @CustomerID
END
GO
/****** Object:  StoredProcedure [dbo].[Get_JobInfoById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_JobInfoById]
	@JobNbr int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT * FROM [dbo].[jobs] WHERE JobNbr = @JobNbr
END
GO
/****** Object:  StoredProcedure [dbo].[Get_JobTypeById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_JobTypeById] 
	@JobTypeId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT JobTypeDesc FROM [dbo].[jobtypes] WHERE JobTypeID = @JobTypeId
END
GO
/****** Object:  StoredProcedure [dbo].[Get_JobTypes]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_JobTypes]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT * FROM [dbo].[jobtypes]
END
GO
/****** Object:  StoredProcedure [dbo].[Get_LabFeeInfoById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_LabFeeInfoById] 
	@TestID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM [dbo].[labfees] WHERE TestID = @TestID
END
GO
/****** Object:  StoredProcedure [dbo].[Get_LabReportHeaderById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_LabReportHeaderById]
	@JobNbr int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [LabNbr], [ReportDate], [Sample1], [Sample2], [IdMarks1], [IdMarks2], [IdMarks3], [IdMarks4],
		   [Submitted1], [Submitted2], [Client1], [Client2], [Client3], [Client4]
	FROM [dbo].[labrpthdr]
	WHERE [JobNbr] = @JobNbr
END
GO
/****** Object:  StoredProcedure [dbo].[Get_LabSpecByCustomerIdAndTestId]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_LabSpecByCustomerIdAndTestId] 
	-- Add the parameters for the stored procedure here
	@CustomerId	int,
	@TestId		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Product],[Specs],[TestId],[Astm],[Min],[Max]
	FROM [dbo].[labspecs]
	WHERE	[CustomerId]= @CustomerId 
		AND [TestId] = @TestId
END
GO
/****** Object:  StoredProcedure [dbo].[Get_LabTemplateInfoById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_LabTemplateInfoById] 
	@TemplateId		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * 
	FROM [dbo].[labtemplates]
	WHERE [TemplateID] = @TemplateId
END
GO
/****** Object:  StoredProcedure [dbo].[Get_LabTemplateNameById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_LabTemplateNameById] 
	-- Add the parameters for the stored procedure here
	@TemplateId		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [TemplateName] 
	FROM [dbo].[labtemplates] 
	WHERE [TemplateID] = @TemplateId
END
GO
/****** Object:  StoredProcedure [dbo].[Get_WorksheetBySheetNbr]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_WorksheetBySheetNbr] 
	-- Add the parameters for the stored procedure here
	@JobNbr		int,
	@SheetNbr	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [Test], [TestId], [Astm], [Spec], [Result]
	FROM [dbo].[labdetail]
	WHERE	JobNbr = @JobNbr
		AND	SheetNbr = @SheetNbr
END	
GO
/****** Object:  StoredProcedure [dbo].[Get_WorksheetsByJobNbr]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_WorksheetsByJobNbr] 
	-- Add the parameters for the stored procedure here
	@JobNbr		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT DISTINCT [SheetNbr] 
	FROM [dbo].[labdetail]
	WHERE	JobNbr = @JobNbr
END	
GO
/****** Object:  StoredProcedure [dbo].[Insert_AllLabTemplateFeeInfo]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_AllLabTemplateFeeInfo] 
	@TemplateID int,
	@TestID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[labtemplatefees]
	VALUES (@TemplateID, @TestID)
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_AppliedTemplateById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[Insert_AppliedTemplateById]
	-- Add the parameters for the stored procedure here
	@TemplateId		int,
	@JobNbr			int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO [dbo].[jobtemplates]
           ([TemplateId]
           ,[JobNbr])
     VALUES
           (@TemplateId
           ,@JobNbr)
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_AppliedTest]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_AppliedTest] 
	-- Add the parameters for the stored procedure here
	@JobNbr		int,
	@SheetNbr	int,
	@Marked		nvarchar(60),
	@Re			nvarchar(6),
	@TemplateId	int,
	@TestId		int,
	@Test		nvarchar(80),
	@Astm		nvarchar(32),
	@CompBy		nvarchar(6),
	@Result		nvarchar(20),
	@Spec		nvarchar(60),
	@Fee		decimal(18,0),
	@ReleaseId	nvarchar(6),
	@Note		nvarchar(140)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[labdetail]
				([JobNbr]
				,[SheetNbr]
				,[Marked]
				,[Re]
				,[TemplateId]
				,[TestId]
				,[Test]
				,[Astm]
				,[CompBy]
				,[Result]
				,[Spec]
				,[Fee]
				,[ReleaseId]
				,[Note])
	Values(@JobNbr,
		   @SheetNbr,
		   @Marked,		
	       @Re,	
		   @TemplateId,
		   @TestId,		
		   @Test,		
		   @Astm,		
		   @CompBy,		
		   @Result,		
		   @Spec,		
		   @Fee,		
		   @ReleaseId,	
		   @Note)
END	
GO
/****** Object:  StoredProcedure [dbo].[Insert_CustomerInfo]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_CustomerInfo]
	@CompanyName nvarchar(50),
	@ContactFirstName nvarchar(30),
	@ContactLastName nvarchar(50),
	@CompanyOrDepartment nvarchar(35),
	@SortOrder nvarchar(35),
	@BillingAddress nvarchar(255),
	@BillingAddress2 nvarchar(50),
	@City nvarchar(50),
	@StateOrProvince nvarchar(20),
	@PostalCode nvarchar(20),
	@Country nvarchar(50),
	@ContactTitle nvarchar(50),
	@PhoneNumber nvarchar(30),
	@Extension nvarchar(50),
	@FaxNumber nvarchar(30),
	@EmailAddress nvarchar(50),
	@Notes ntext
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Customers]
           ([CompanyName],[ContactFirstName],[ContactLastName],[CompanyOrDepartment],[SortOrder],[BillingAddress],[BillingAddress2],
            [City],[StateOrProvince],[PostalCode],[Country],[ContactTitle],[PhoneNumber],[Extension],[FaxNumber],[EmailAddress],[Notes])
     VALUES
           (@CompanyName,@ContactFirstName,@ContactLastName,@CompanyOrDepartment,@SortOrder,@BillingAddress,@BillingAddress2
           ,@City,@StateOrProvince,@PostalCode,@Country,@ContactTitle,@PhoneNumber,@Extension,@FaxNumber,@EmailAddress,@Notes)
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_JobInfo]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_JobInfo]
	@CustomerID int,
    @OrderDateTime nvarchar(25),
    @TakenBy nvarchar(25),
    @JobType int,
    @OrderBy nvarchar(25),
    @DateSampled nvarchar(25),
    @SubmissionId nvarchar(40),
    @Terminal nvarchar(40),
    @Location nvarchar(40),
    @Cargo nvarchar(40),
    @SampleQty int,
    @DateInLab nvarchar(25),
    @DateCompleted nvarchar(25),
    @Reports nvarchar(15),
    @Splits smallint,
    @Dist1 nvarchar(250),
    @Dist2 nvarchar(250),
    @Subs tinyint,
    @LD  nvarchar(9)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO [dbo].[jobs]([CustomerID],[OrderDateTime],[TakenBy],[JobType],[OrderBy],[DateSampled],[SubmissionId],[Terminal],[Location],[Cargo],[SampleQty],[DateInLab],[DateCompleted],[Reports],[Splits],[Dist1],[Dist2],[Subs],[LD])
     VALUES(@CustomerID,@OrderDateTime,@TakenBy,@JobType,@OrderBy,@DateSampled,@SubmissionId,@Terminal,@Location,@Cargo,@SampleQty,@DateInLab,@DateCompleted,@Reports,@Splits,@Dist1,@Dist2,@Subs,@LD)

	SELECT SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_LabFeeInfo]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_LabFeeInfo]
	@TestDesc nvarchar(max),
	@Fee decimal,
	@ASTM char(16)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[labfees]
    VALUES (@TestDesc, @Fee, @ASTM)
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_LabReportHeader]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_LabReportHeader]
	@JobNbr		int,
	@LabNbr		nvarchar(15),
	@ReportDate	datetime,
	@Sample1	nvarchar(25),
	@Sample2	nvarchar(25),
	@IdMarks1	nvarchar(25),
	@IdMarks2	nvarchar(25),
	@IdMarks3	nvarchar(25),
	@IdMarks4	nvarchar(25),
	@Submitted1	nvarchar(25),
	@Submitted2	nvarchar(25),
	@Client1	int,
	@Client2	int,
	@Client3	int,
	@Client4	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF EXISTS(SELECT * FROM [dbo].[labrpthdr] WHERE [JobNbr] = @JobNbr)
		DELETE FROM [dbo].[labrpthdr] WHERE [JobNbr] = @JobNbr

    INSERT INTO [dbo].[labrpthdr] 
		   (JobNbr, LabNbr, ReportDate, Sample1, Sample2, IdMarks1, IdMarks2, IdMarks3, IdMarks4, 
			Submitted1, Submitted2, Client1, Client2, Client3, Client4)
	VALUES (@JobNbr, @LabNbr, @ReportDate, @Sample1, @Sample2, @IdMarks1, @IdMarks2, @IdMarks3, @IdMarks4, 
			@Submitted1, @Submitted2, @Client1, @Client2, @Client3, @Client4)
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_LabSpec]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_LabSpec] 
	-- Add the parameters for the stored procedure here
	@Product	nvarchar(80),
	@CustomerId	int,
	@Specs		nvarchar(60),
	@TestId		int,
	@Astm		nvarchar(32),
	@Min		nvarchar(50),
	@Max		nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[labspecs]
	VALUES (@Product, @CustomerId, @Specs, @TestId, @Astm, @Min, @Max)
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_LabTemplateFeeData]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_LabTemplateFeeData] 
	-- Add the parameters for the stored procedure here
	@TemplateID int,
	@TestID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[labtemplatefees]
	VALUES (@TemplateID, @TestID)
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_LabTemplateInfo]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_LabTemplateInfo]
	@TemplateName nvarchar(max),
	@Re char(3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[labtemplates]
	VALUES (@TemplateName, @Re)

	SELECT SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Update_AppliedTestsById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_AppliedTestsById] 
	-- Add the parameters for the stored procedure here
	@DtlNbr		int,
	@JobNbr		int,
	@Marked		nvarchar(60),
	@Re			nvarchar(6),
	@TestId		int,
	@Test		nvarchar(80),
	@Astm		nvarchar(32),
	@CompBy		nvarchar(6),
	@Result		nvarchar(20),
	@Spec		nvarchar(60),
	@Fee		decimal(18,0),
	@ReleaseId	nvarchar(6),
	@Note		nvarchar(140)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[labdetail]
		SET  [JobNbr] = @JobNbr
			,[Marked] = @Marked
			,[Re] = @Re
			,[TestId] = @TestId
			,[Test] = @Test
			,[Astm] = @Astm
			,[CompBy] = @CompBy
			,[Result] = @Result
			,[Spec] = @Spec
			,[Fee] = @Fee
			,[ReleaseId] = @ReleaseId
			,[Note] = @Note
		WHERE DtlNbr = @DtlNbr
END	
GO
/****** Object:  StoredProcedure [dbo].[Update_AssignedTestResultsById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_AssignedTestResultsById]
	-- Add the parameters for the stored procedure here
	@JobNbr		int,
	@SheetNbr	int,
	@TestId		int,
	@Result		varchar(20),
	@ReleaseId	nvarchar(6),
	@Marked		varchar(60),
	@CompBy		nvarchar(6)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [dbo].[labdetail]
	SET [Result] = @Result, [ReleaseId] = @ReleaseId, [Marked] = @Marked, [CompBy] = @CompBy
	WHERE [JobNbr] = @JobNbr AND [TestId] = @TestId AND [SheetNbr] = @SheetNbr
END
GO
/****** Object:  StoredProcedure [dbo].[Update_CustomerInfoById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_CustomerInfoById]
	@CustomerID int,
	@CompanyName nvarchar(50),
	@ContactFirstName nvarchar(30),
	@ContactLastName nvarchar(50),
	@CompanyOrDepartment nvarchar(35),
	@SortOrder nvarchar(35),
	@BillingAddress nvarchar(255),
	@BillingAddress2 nvarchar(50),
	@City nvarchar(50),
	@StateOrProvince nvarchar(20),
	@PostalCode nvarchar(20),
	@Country nvarchar(50),
	@ContactTitle nvarchar(50),
	@PhoneNumber nvarchar(30),
	@Extension nvarchar(50),
	@FaxNumber nvarchar(30),
	@EmailAddress nvarchar(50),
	@Notes ntext
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE [dbo].[Customers]
   SET [CompanyName] = @CompanyName
      ,[ContactFirstName] = @ContactFirstName
      ,[ContactLastName] = @ContactLastName
      ,[CompanyOrDepartment] = @CompanyOrDepartment
      ,[SortOrder] = @SortOrder
      ,[BillingAddress] = @BillingAddress
      ,[BillingAddress2] = @BillingAddress2
      ,[City] = @City
      ,[StateOrProvince] = @StateOrProvince
      ,[PostalCode] = @PostalCode
      ,[Country] = @Country
      ,[ContactTitle] = @ContactTitle
      ,[PhoneNumber] = @PhoneNumber
      ,[Extension] = @Extension
      ,[FaxNumber] = @FaxNumber
      ,[EmailAddress] = @EmailAddress
      ,[Notes] = @Notes
	 WHERE CustomerID = @CustomerID
END
GO
/****** Object:  StoredProcedure [dbo].[Update_JobInfoById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_JobInfoById]
	@JobNbr int,
	@CustomerID int,
    @OrderDateTime nvarchar(25),
    @TakenBy nvarchar(25),
    @JobType int,
    @OrderBy nvarchar(25),
    @DateSampled nvarchar(25),
    @SubmissionId nvarchar(40),
    @Terminal nvarchar(40),
    @Location nvarchar(40),
    @Cargo nvarchar(40),
    @SampleQty int,
    @DateInLab nvarchar(25),
    @DateCompleted nvarchar(25),
    @Reports nvarchar(15),
    @Splits smallint,
    @Dist1 nvarchar(250),
    @Dist2 nvarchar(250),
    @Subs tinyint,
    @LD  nvarchar(9)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE [dbo].[jobs]
    SET [CustomerID] = @CustomerID
      ,[OrderDateTime] = @OrderDateTime
      ,[TakenBy] = @TakenBy
      ,[JobType] = @JobType
      ,[OrderBy] = @OrderBy
      ,[DateSampled] = @DateSampled
      ,[SubmissionID] = @SubmissionId
      ,[Terminal] = @Terminal
      ,[Location] = @Location
      ,[Cargo] = @Cargo
      ,[SampleQty] = @SampleQty
      ,[DateinLab] = @DateInLab
      ,[DateCompleted] = @DateCompleted
      ,[Reports] = @Reports
      ,[Splits] = @Splits
      ,[Dist1] = @Dist1
      ,[Dist2] = @Dist2
      ,[Subs] = @Subs
      ,[LD] = @LD

	  WHERE [JobNbr] = @JobNbr
END
GO
/****** Object:  StoredProcedure [dbo].[Update_LabFeeInfoById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_LabFeeInfoById]
	@TestID int,
	@TestDesc nvarchar(max),
	@Fee decimal,
	@ASTM char(16)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [dbo].[labfees]
    SET TestDesc = @TestDesc, Fee = @Fee, ASTM = @ASTM
	WHERE TestID = @TestID
END
GO
/****** Object:  StoredProcedure [dbo].[Update_LabSpec]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_LabSpec] 
	-- Add the parameters for the stored procedure here
	@Product	nvarchar(80),
	@CustomerId	int,
	@Specs		nvarchar(60),
	@TestId		int,
	@Astm		nvarchar(32),
	@Min		nvarchar(50),
	@Max		nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [dbo].[labspecs]
	SET [Product] = @Product, [Specs] = @Specs, [Astm] = @Astm, [Min] = @Min, [Max] = @Max
	WHERE	[CustomerId] = @CustomerId
		AND	[TestId] = @TestId
END
GO
/****** Object:  StoredProcedure [dbo].[Update_LabTemplateInfoById]    Script Date: 2/16/2020 9:36:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_LabTemplateInfoById]
	@TemplateID int,
	@TemplateName nvarchar(max),
    @Re char(3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE [dbo].[labtemplates]
    SET TemplateName = @TemplateName, Re = @Re
	WHERE TemplateID = @TemplateID
END
GO
USE [master]
GO
ALTER DATABASE [PCIMS] SET  READ_WRITE 
GO
