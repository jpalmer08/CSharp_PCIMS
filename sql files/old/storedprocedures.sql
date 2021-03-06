USE [PCIMS]
GO
/****** Object:  StoredProcedure [dbo].[Delete_AllLabTemplateFeeDataById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Delete_CustomerInfoById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Delete_JobInfoById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Delete_LabFeeInfoById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Delete_LabTemplateFeeData]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Delete_LabTemplateInfoById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_AllCompanyNames]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_AllCustomerInfo]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_AllJobInfo]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_AllJobSelectInfo]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_AllLabSpecs]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_AllLabTemplateFeeInfo]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_AllLabTemplateFeeInfoById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_AllLabTemplateInfo]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_CompanyNameById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_CustomerInfoById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_JobInfoById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_JobTypeById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_JobTypes]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_LabFeeInfoById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Get_LabReportHeaderById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Insert_AllLabTemplateFeeInfo]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Insert_CustomerInfo]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Insert_JobInfo]    Script Date: 4/5/2019 5:24:51 PM ******/
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
    @OrderBy nvarchar(25),
    @TakenBy nvarchar(25),
    @Vessel nvarchar(40),
    @VesselType nvarchar(10),
    @Cargo nvarchar(40),
    @Terminal nvarchar(40),
    @Location nvarchar(40),
    @InspectionDate nvarchar(25),
    @JobType nvarchar(20),
    @Eta nvarchar(25),
    @CargoQty int,
    @Inspector nvarchar(50),
    @Splits smallint,
    @Reports nvarchar(15),
    @Completed nvarchar(15),
    @Dist1 nvarchar(250),
    @Dist2 nvarchar(250),
    @Subs tinyint,
    @LD  nvarchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO [dbo].[jobs]([CustomerID],[OrderDateTime],[OrderBy],[TakenBy],[Vessel],[VesselType],[Cargo],[Terminal],[Location]
           ,[InspectionDate],[JobType],[Eta],[CargoQty],[Inspector],[Splits],[Reports],[Completed],[Dist1],[Dist2],[Subs],[LD])
     VALUES(@CustomerID,@OrderDateTime,@OrderBy,@TakenBy,@Vessel,@VesselType,@Cargo,@Terminal,@Location,@InspectionDate,@JobType,@Eta,
			@CargoQty,@Inspector,@Splits,@Reports,@Completed,@Dist1,@Dist2,@Subs,@LD)

	SELECT SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_LabFeeInfo]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Insert_LabReportHeader]    Script Date: 4/5/2019 5:24:51 PM ******/
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

    INSERT INTO [dbo].[labrpthdr] 
		   (JobNbr, LabNbr, ReportDate, Sample1, Sample2, IdMarks1, IdMarks2, IdMarks3, IdMarks4, 
			Submitted1, Submitted2, Client1, Client2, Client3, Client4)
	VALUES (@JobNbr, @LabNbr, @ReportDate, @Sample1, @Sample2, @IdMarks1, @IdMarks2, @IdMarks3, @IdMarks4, 
			@Submitted1, @Submitted2, @Client1, @Client2, @Client3, @Client4)
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_LabTemplateFeeData]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Insert_LabTemplateInfo]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Update_CustomerInfoById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Update_JobInfoById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
    @OrderBy nvarchar(25),
    @TakenBy nvarchar(25),
    @Vessel nvarchar(40),
    @VesselType nvarchar(10),
    @Cargo nvarchar(40),
    @Terminal nvarchar(40),
    @Location nvarchar(40),
    @InspectionDate nvarchar(25),
    @JobType nvarchar(20),
    @Eta nvarchar(25),
    @CargoQty int,
    @Inspector nvarchar(50),
    @Splits smallint,
    @Reports nvarchar(15),
    @Completed nvarchar(15),
    @Dist1 nvarchar(250),
    @Dist2 nvarchar(250),
    @Subs tinyint,
    @LD  nvarchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE [dbo].[jobs]
    SET CustomerID = @CustomerID, OrderDateTime = @OrderDateTime, OrderBy = @OrderBy, TakenBy = @TakenBy, Vessel = @Vessel, VesselType = @VesselType,
	Cargo  = @Cargo, Terminal = @Terminal, Location = @Location, InspectionDate = @InspectionDate, JobType = @JobType, Eta = @Eta, CargoQty = @CargoQty,
	Inspector = @Inspector, Splits = @Splits, Reports = @Reports, Completed = @Completed, Dist1 = @Dist1, Dist2 = @Dist2, Subs = @Subs, LD = @LD
	WHERE JobNbr = @JobNbr
END
GO
/****** Object:  StoredProcedure [dbo].[Update_LabFeeInfoById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
/****** Object:  StoredProcedure [dbo].[Update_LabTemplateInfoById]    Script Date: 4/5/2019 5:24:51 PM ******/
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
