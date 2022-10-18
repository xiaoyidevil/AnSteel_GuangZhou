USE [AnSteel]
GO
/****** Object:  Table [dbo].[AccessControlRecord]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessControlRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[WeChatUserId] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Unit] [nvarchar](200) NULL,
	[IdNumber] [nvarchar](50) NOT NULL,
	[Telephone] [nvarchar](50) NULL,
	[AccessTime] [datetime] NOT NULL,
	[AccessType] [int] NOT NULL,
	[AccessGate] [int] NOT NULL,
	[DeviceId] [uniqueidentifier] NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_AccessControlRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdmissionTimePeriods]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdmissionTimePeriods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartTime] [time](0) NOT NULL,
	[EndTime] [time](0) NOT NULL,
	[MaxCarNumber] [int] NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_AdmissionTimePeriods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttendanceRecord]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[WorkNumber] [nvarchar](200) NOT NULL,
	[WeChatUserId] [int] NOT NULL,
	[AttendanceTime] [datetime] NOT NULL,
	[AttendanceType] [int] NOT NULL,
	[DeviceCode] [nvarchar](50) NOT NULL,
	[DeviceId] [uniqueidentifier] NOT NULL,
	[AccessRecordId] [int] NOT NULL,
	[DataSource] [int] NOT NULL,
	[PlateNo] [nvarchar](50) NULL,
	[IsSynced] [bit] NOT NULL,
	[SyncedTime] [datetime] NULL,
 CONSTRAINT [PK_AttendanceRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [nvarchar](36) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[ContactNumber] [nvarchar](50) NULL,
	[IsWhitelist] [bit] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[DeleteStatus] [int] NOT NULL,
 CONSTRAINT [PK_Companys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dict]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dict](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DictType] [varchar](50) NOT NULL,
	[DictText] [varchar](255) NOT NULL,
	[DictValue] [varchar](255) NOT NULL,
	[Remark] [varchar](255) NULL,
	[Status] [int] NOT NULL,
	[CreatedUserId] [bigint] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [bigint] NULL,
	[LastModifiedTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[IdCardNumber] [nvarchar](20) NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[Company] [int] NOT NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnterpriseWeChatDepartment]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnterpriseWeChatDepartment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[EnterpriseWeChatPermissionsId] [int] NOT NULL,
	[DepartmentId] [nvarchar](50) NULL,
 CONSTRAINT [PK_EnterpriseWeChatDepartment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnterpriseWeChatPermissions]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnterpriseWeChatPermissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[FaceLibraryId] [int] NOT NULL,
	[AdmissionReview] [int] NULL,
	[ReceiptConfirmation] [int] NULL,
	[DeliveryConfirmation] [int] NULL,
 CONSTRAINT [PK_EnterpriseWeChatPermissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntryApplication]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntryApplication](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[Company] [int] NOT NULL,
	[EntryGate] [int] NOT NULL,
	[EntryTime] [datetime] NOT NULL,
	[StartingAdmissionPeriod] [datetime] NOT NULL,
	[EndAdmissionPeriod] [datetime] NOT NULL,
	[AdmissionReasons] [nvarchar](200) NULL,
	[ReceivingUnit] [nvarchar](20) NOT NULL,
	[Applicant] [nvarchar](50) NOT NULL,
	[ApplicationTime] [datetime] NOT NULL,
	[ReviewStatus] [int] NOT NULL,
	[Reviewer] [int] NULL,
	[ReviewTime] [datetime] NULL,
	[ReviewReason] [nvarchar](200) NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[Type] [int] NOT NULL,
	[ReceivingUnitName] [nvarchar](50) NULL,
	[Source] [int] NULL,
	[Remark] [nvarchar](200) NULL,
	[MergedData] [bit] NOT NULL,
	[MergeItemIds] [nvarchar](max) NULL,
 CONSTRAINT [PK_EntryApplication] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntrySetUpDriver]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntrySetUpDriver](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[EntryId] [int] NOT NULL,
	[DriverId] [int] NULL,
	[Name] [nvarchar](20) NOT NULL,
	[IdCardNumber] [nvarchar](20) NULL,
	[OriginalEntryId] [int] NOT NULL,
 CONSTRAINT [PK_EntrySetUpDriver] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EntrySetUpPlate]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntrySetUpPlate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[EntryId] [int] NOT NULL,
	[PlateNo] [nvarchar](20) NOT NULL,
	[OriginalEntryId] [int] NOT NULL,
 CONSTRAINT [PK_EntrySetUpPlate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FaceEquipment]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaceEquipment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [int] NOT NULL,
	[BelongingGate] [int] NOT NULL,
	[EntranceAndExit] [int] NOT NULL,
	[Ip] [nvarchar](50) NOT NULL,
	[Port] [nvarchar](50) NOT NULL,
	[LaneId] [int] NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[DeviceCode] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FaceEquipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FaceLibrary]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaceLibrary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[WeChatUserId] [int] NOT NULL,
	[FacePicture] [nvarchar](200) NULL,
	[VerificationStatus] [int] NOT NULL,
	[Verifier] [int] NULL,
	[VerificationTime] [datetime] NULL,
	[VerificationReason] [nvarchar](500) NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[IdCardFrontPicture] [nvarchar](200) NULL,
	[IdCardBackPicture] [nvarchar](200) NULL,
 CONSTRAINT [PK_FaceLibrary] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FaceSendResults]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FaceSendResults](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeviceId] [uniqueidentifier] NOT NULL,
	[FaceLibraryId] [int] NOT NULL,
	[FaceSendStatus] [int] NOT NULL,
	[OperateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_FaceSendResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Functions]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Functions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FunctionName] [nvarchar](100) NULL,
	[FunctionPath] [nvarchar](255) NULL,
	[ModuleName] [nvarchar](100) NULL,
	[ModulePath] [nvarchar](255) NULL,
	[Status] [int] NOT NULL,
	[ShowInMenu] [bit] NULL,
	[Remark] [nvarchar](500) NULL,
	[Sequence] [bigint] NULL,
	[CreatedUserId] [bigint] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [bigint] NULL,
	[LastModifiedTime] [datetime] NULL,
	[Enabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lane]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lane](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BelongingGate] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Direction] [int] NOT NULL,
	[EquipmentCode] [int] NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_Lane] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LaneBlackList]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LaneBlackList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[PlateNo] [nvarchar](50) NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
 CONSTRAINT [PK__LaneBlac__3214EC0760A45A2F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LaneEquipment]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LaneEquipment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[LaneId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [int] NOT NULL,
	[EntranceAndExit] [int] NOT NULL,
	[IP] [nvarchar](50) NULL,
	[Port] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[HostAddress] [int] NULL,
	[BaudRate] [int] NULL,
	[DataBit] [int] NULL,
	[Check] [nvarchar](50) NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[ConnectionType] [int] NULL,
	[SerialPort] [nvarchar](50) NULL,
	[DeviceCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_LaneEquipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LaneRecord]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LaneRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[EntryId] [int] NULL,
	[Type] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[EmployeeNo] [nvarchar](50) NULL,
	[Unit] [nvarchar](200) NULL,
	[IdNumber] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[PlateNo] [nvarchar](50) NOT NULL,
	[AccessTime] [datetime] NOT NULL,
	[FaceRecognitionTime] [datetime] NULL,
	[AccessType] [int] NOT NULL,
	[AccessGate] [int] NOT NULL,
	[LaneId] [int] NOT NULL,
	[CarNoRecognitionDeviceId] [uniqueidentifier] NOT NULL,
	[FaceRecognitionDeviceId] [uniqueidentifier] NULL,
	[PlateNoPicture] [nvarchar](200) NULL,
	[CameraPhoto] [nvarchar](200) NULL,
	[FacePicture] [nvarchar](200) NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_LaneRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LaneWhiteList]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LaneWhiteList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[PlateNo] [nvarchar](50) NOT NULL,
	[CompanyId] [int] NULL,
	[CreatedTime] [datetime] NOT NULL,
	[DriverName] [nvarchar](50) NULL,
	[WorkNumber] [nvarchar](200) NULL,
 CONSTRAINT [PK__LaneWhit__3214EC076EEA2DDF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Thread] [varchar](255) NOT NULL,
	[Level] [varchar](50) NOT NULL,
	[Logger] [varchar](255) NOT NULL,
	[Message] [varchar](max) NOT NULL,
	[Exception] [nvarchar](max) NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationLog]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationLog](
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OperatorId] [int] NOT NULL,
	[Operator] [nvarchar](500) NOT NULL,
	[OperationLogType] [int] NOT NULL,
	[OperationTime] [datetime] NOT NULL,
	[EntityName] [nvarchar](500) NOT NULL,
	[SerializedData] [nvarchar](max) NULL,
 CONSTRAINT [PK_OperationLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NULL,
	[DeleteStatus] [int] NULL,
	[CreatedUserId] [int] NULL,
	[CreatedTime] [datetime] NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plate]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[PlateNo] [nvarchar](20) NOT NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[Company] [int] NOT NULL,
 CONSTRAINT [PK_Plate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Powers]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Powers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[FunctionId] [int] NOT NULL,
 CONSTRAINT [PK_Powers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Printer]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Printer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](100) NULL,
	[Ip] [nvarchar](50) NULL,
	[Port] [nvarchar](10) NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_Printer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QueueOrder]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QueueOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[ShippingListId] [int] NOT NULL,
	[WeighbridgeId] [int] NOT NULL,
	[Order] [decimal](18, 0) NOT NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_QueueOrder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RadiationProduct]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RadiationProduct](
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_RadiationProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Company]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Company](
	[PowerId] [uniqueidentifier] NOT NULL,
	[RoleId] [int] NULL,
	[CompanyId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[PowerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NULL,
	[Enabled] [bit] NULL,
	[Remark] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedUserId] [bigint] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [bigint] NULL,
	[LastModifiedTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipPaper]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipPaper](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShipPaperNo] [nvarchar](50) NOT NULL,
	[ShippingListId] [int] NOT NULL,
	[SignaturePhoto] [nvarchar](200) NULL,
	[SignatureTime] [datetime] NULL,
	[CreatedTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ShipPaper] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingList]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[WeighingApplicationId] [int] NOT NULL,
	[CompletedStatus] [int] NOT NULL,
	[Company] [int] NOT NULL,
	[Code] [nvarchar](200) NOT NULL,
	[Driver] [nvarchar](50) NOT NULL,
	[PlateNo] [nvarchar](20) NULL,
	[WeighingType] [int] NOT NULL,
	[IsSideWeighing] [int] NULL,
	[AdmissionTime] [datetime] NULL,
	[FactoryTime] [datetime] NULL,
	[FirstTime] [datetime] NULL,
	[FirstWeight] [decimal](10, 3) NULL,
	[FirstWeighbridge] [int] NULL,
	[SecondTime] [datetime] NULL,
	[SecondWeight] [decimal](10, 3) NULL,
	[SecondWeighbridge] [int] NULL,
	[NetWeight] [decimal](10, 3) NULL,
	[RadiometerData] [decimal](10, 3) NULL,
	[PurchaseCaseNumber] [nvarchar](200) NULL,
	[CustomerCode] [nvarchar](200) NULL,
	[CustomerName] [nvarchar](200) NULL,
	[ProductCode] [nvarchar](200) NULL,
	[ProductName] [nvarchar](200) NULL,
	[CarDealership] [nvarchar](200) NULL,
	[Plant] [nvarchar](200) NULL,
	[DistinguishingCode] [nvarchar](200) NULL,
	[ContainerNoOne] [nvarchar](200) NULL,
	[ContainerNoTwo] [nvarchar](200) NULL,
	[ReceivingStaffId] [int] NULL,
	[ReceivingTime] [datetime] NULL,
	[ShipStaffId] [int] NULL,
	[ShipTime] [datetime] NULL,
	[SignatureTime] [datetime] NULL,
	[SignaturePhoto] [nvarchar](200) NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[WeChatUserId] [int] NULL,
	[EntryApplicationId] [int] NULL,
	[InvalidStatus] [int] NOT NULL,
	[ErpScaleNo] [nvarchar](50) NULL,
	[ErpMonitorNo] [nvarchar](50) NULL,
	[WaterWeight] [decimal](10, 3) NULL,
	[ImpuritiesWeight] [decimal](10, 3) NULL,
 CONSTRAINT [PK_ShippingList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemParameters]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemParameters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[DaysAdvance] [int] NOT NULL,
	[LaneAllowLate] [bit] NOT NULL,
	[LaneAllowLateThreshold] [int] NULL,
	[SidewalkAllowLate] [bit] NOT NULL,
	[SidewalkAllowLateThreshold] [int] NULL,
	[RadiometerThreshold] [float] NOT NULL,
	[WeighingThreshold] [float] NOT NULL,
	[WeighingQuantity] [int] NOT NULL,
	[WeighingSpeed] [int] NOT NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_SystemParameters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemParametersSupplyPeriod]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemParametersSupplyPeriod](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SystemParametersId] [int] NOT NULL,
	[StartTime] [time](0) NOT NULL,
	[EndTime] [time](0) NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
 CONSTRAINT [PK_SystemParametersSupplyPeriod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemUsers]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemUsers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LoginName] [nvarchar](50) NULL,
	[UserName] [nvarchar](20) NULL,
	[Telephone] [varchar](20) NULL,
	[Password] [varchar](200) NULL,
	[RoleId] [bigint] NULL,
	[LastIp] [varchar](20) NULL,
	[LastLoginTime] [datetime] NULL,
	[Enabled] [bit] NULL,
	[ErrorCount] [int] NULL,
	[Remark] [nvarchar](255) NULL,
	[AuthenticationToken] [varchar](1000) NULL,
	[UserInformationExpriedInSeconds] [bigint] NULL,
	[CreatedUserId] [bigint] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [bigint] NULL,
	[LastModifiedTime] [datetime] NULL,
	[WeixinOpenOpenId] [nvarchar](max) NULL,
	[WeixinOpenUnionId] [nvarchar](max) NULL,
	[WeixinWorkOpenId] [nvarchar](max) NULL,
	[WeixinWorkUnionId] [nvarchar](max) NULL,
	[IdCardNumber] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserWhitelist]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserWhitelist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](200) NOT NULL,
	[IdNumber] [nvarchar](50) NOT NULL,
	[Unit] [nvarchar](200) NULL,
	[ValidityStartTime] [datetime] NOT NULL,
	[ValidityEndTime] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_UserWhitelist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebAccountConfig]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebAccountConfig](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[LoginName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[CompanyId] [int] NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[DeleteStatus] [int] NOT NULL,
	[AuthenticationToken] [nvarchar](1000) NULL,
 CONSTRAINT [PK_WebAccountConfig] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeChatPermissions]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeChatPermissions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[WeChatUserId] [int] NOT NULL,
	[EntryApplication] [bit] NULL,
	[WeighingApplication] [bit] NULL,
	[CreatedUserId] [bigint] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [bigint] NULL,
	[LastModifiedTime] [datetime] NULL,
	[InternalApplication] [bit] NULL,
	[ExternalApplication] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeChatPermissionsCompany]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeChatPermissionsCompany](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[WeChatPermissionsId] [int] NULL,
	[CompanyId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeChatUser]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeChatUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[Type] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Unit] [nvarchar](200) NULL,
	[IdNumber] [nvarchar](50) NOT NULL,
	[Telephone] [nvarchar](50) NULL,
	[InBlackList] [bit] NOT NULL,
	[WeixinOpenOpenId] [nvarchar](200) NULL,
	[WeixinOpenUnionId] [nvarchar](200) NULL,
	[WeixinWorkOpenId] [nvarchar](200) NULL,
	[WeixinWorkUnionId] [nvarchar](200) NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_WeChatUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Weighbridge]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weighbridge](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Location] [int] NOT NULL,
	[HaveRadiometer] [bit] NOT NULL,
	[UsingStatus] [bit] NOT NULL,
	[RunningStatus] [int] NOT NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_Weighbridge] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeighbridgeEquipment]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeighbridgeEquipment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[WeighbridgeId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [int] NOT NULL,
	[Ip] [nvarchar](50) NULL,
	[Port] [nvarchar](10) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RadiometerFileDirectory] [nvarchar](100) NULL,
	[HostAddress] [int] NULL,
	[BaudRate] [int] NULL,
	[DataBit] [int] NULL,
	[Check] [nvarchar](50) NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[ConnectionType] [int] NULL,
	[SerialPort] [nvarchar](50) NULL,
 CONSTRAINT [PK_WeighbridgeEquipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeighingApplication]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeighingApplication](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[Company] [int] NOT NULL,
	[Driver] [nvarchar](20) NOT NULL,
	[PlateNo] [nvarchar](20) NULL,
	[WeighingType] [int] NOT NULL,
	[IsSideWeighing] [int] NULL,
	[PurchaseCaseNumber] [nvarchar](200) NULL,
	[CustomerCode] [nvarchar](200) NULL,
	[CustomerName] [nvarchar](200) NULL,
	[ProductCode] [nvarchar](200) NULL,
	[ProductName] [nvarchar](200) NULL,
	[CarDealership] [nvarchar](200) NULL,
	[Plant] [nvarchar](200) NULL,
	[DistinguishingCode] [nvarchar](200) NULL,
	[ContainerNoOne] [nvarchar](200) NULL,
	[ContainerNoTwo] [nvarchar](200) NULL,
	[ApplicationTime] [datetime] NOT NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[WeChatUserId] [int] NULL,
	[WeighingStatus] [int] NOT NULL,
	[InvalidStatus] [int] NOT NULL,
	[PendingBid] [int] NOT NULL,
 CONSTRAINT [PK_WeighingApplication] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeighingAuthorizeCar]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeighingAuthorizeCar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WeighbridgeType] [int] NOT NULL,
	[LicensePlate] [nvarchar](50) NOT NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_WeighingAuthorizeCar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeighingDataModifyRecord]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeighingDataModifyRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[ShippingListId] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[OperationType] [int] NOT NULL,
	[PurchaseCaseNumber] [nvarchar](200) NULL,
	[CustomerCode] [nvarchar](200) NULL,
	[CustomerName] [nvarchar](200) NULL,
	[ProductCode] [nvarchar](200) NULL,
	[ProductName] [nvarchar](200) NULL,
	[CarDealership] [nvarchar](200) NULL,
	[Plant] [nvarchar](200) NULL,
	[DistinguishingCode] [nvarchar](200) NULL,
	[ContainerNoOne] [nvarchar](200) NULL,
	[ContainerNoTwo] [nvarchar](200) NULL,
	[NewPurchaseCaseNumber] [nvarchar](200) NULL,
	[NewCustomerCode] [nvarchar](200) NULL,
	[NewCustomerName] [nvarchar](200) NULL,
	[NewProductCode] [nvarchar](200) NULL,
	[NewProductName] [nvarchar](200) NULL,
	[NewCarDealership] [nvarchar](200) NULL,
	[NewPlant] [nvarchar](200) NULL,
	[NewDistinguishingCode] [nvarchar](200) NULL,
	[NewContainerNoOne] [nvarchar](200) NULL,
	[NewContainerNoTwo] [nvarchar](200) NULL,
 CONSTRAINT [PK_WeighingDataModifyRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeighingRecord]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeighingRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[ShippingListId] [int] NOT NULL,
	[WeighingTime] [datetime] NOT NULL,
	[Weight] [decimal](10, 3) NOT NULL,
	[WeighbridgePosition] [nvarchar](50) NOT NULL,
	[RadiometerData] [decimal](10, 3) NULL,
	[IsUsing] [bit] NOT NULL,
	[BackgroundValue] [decimal](10, 3) NULL,
	[AlarmValue] [decimal](10, 3) NULL,
	[CarSpeed] [decimal](10, 3) NULL,
	[RadiationWarning] [int] NULL,
	[TakeValueTime] [datetime] NULL,
	[WeighingTimes] [int] NULL,
	[IsLastRecord] [bit] NULL,
	[PlcDateTime] [datetime] NOT NULL,
	[ConfirmDateTime] [datetime] NULL,
 CONSTRAINT [PK_WeighingRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeighingRelationType]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeighingRelationType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WeighbridgeType] [int] NOT NULL,
	[WeighbridgeId] [int] NOT NULL,
	[DeleteStatus] [int] NOT NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
	[PriorityLevel] [int] NOT NULL,
 CONSTRAINT [PK_WeighingRelationType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeighingSetting]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeighingSetting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WeighbridgeType] [int] NOT NULL,
	[PassRadiometer] [bit] NULL,
	[CreatedUserId] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastModifiedUserId] [int] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_WeighingSetting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeighingSnapPicture]    Script Date: 2022-7-6 15:32:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeighingSnapPicture](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AggregateRootId] [uniqueidentifier] NOT NULL,
	[ShippingListId] [int] NOT NULL,
	[SnapTime] [datetime] NOT NULL,
	[FileName] [nvarchar](200) NOT NULL,
	[WeighingTimes] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Driver] ADD  DEFAULT ((1)) FOR [Company]
GO
ALTER TABLE [dbo].[Plate] ADD  DEFAULT ((1)) FOR [Company]
GO
ALTER TABLE [dbo].[Role_Company] ADD  DEFAULT (newid()) FOR [PowerId]
GO
ALTER TABLE [dbo].[SystemUsers] ADD  DEFAULT (getdate()) FOR [LastLoginTime]
GO
ALTER TABLE [dbo].[SystemUsers] ADD  DEFAULT ((1)) FOR [Enabled]
GO
ALTER TABLE [dbo].[SystemUsers] ADD  DEFAULT ((0)) FOR [ErrorCount]
GO
ALTER TABLE [dbo].[EntrySetUpDriver]  WITH CHECK ADD  CONSTRAINT [FK_EntrySetUpDriver_EntryApplication] FOREIGN KEY([EntryId])
REFERENCES [dbo].[EntryApplication] ([Id])
GO
ALTER TABLE [dbo].[EntrySetUpDriver] CHECK CONSTRAINT [FK_EntrySetUpDriver_EntryApplication]
GO
ALTER TABLE [dbo].[EntrySetUpPlate]  WITH CHECK ADD  CONSTRAINT [FK_EntrySetUpPlate_EntryApplication] FOREIGN KEY([EntryId])
REFERENCES [dbo].[EntryApplication] ([Id])
GO
ALTER TABLE [dbo].[EntrySetUpPlate] CHECK CONSTRAINT [FK_EntrySetUpPlate_EntryApplication]
GO
ALTER TABLE [dbo].[FaceLibrary]  WITH CHECK ADD  CONSTRAINT [FK_FaceLibrary_WeChatUser] FOREIGN KEY([WeChatUserId])
REFERENCES [dbo].[WeChatUser] ([Id])
GO
ALTER TABLE [dbo].[FaceLibrary] CHECK CONSTRAINT [FK_FaceLibrary_WeChatUser]
GO
ALTER TABLE [dbo].[QueueOrder]  WITH CHECK ADD  CONSTRAINT [FK_QueueOrder_ShippingList] FOREIGN KEY([ShippingListId])
REFERENCES [dbo].[ShippingList] ([Id])
GO
ALTER TABLE [dbo].[QueueOrder] CHECK CONSTRAINT [FK_QueueOrder_ShippingList]
GO
ALTER TABLE [dbo].[QueueOrder]  WITH CHECK ADD  CONSTRAINT [FK_QueueOrder_Weighbridge] FOREIGN KEY([WeighbridgeId])
REFERENCES [dbo].[Weighbridge] ([Id])
GO
ALTER TABLE [dbo].[QueueOrder] CHECK CONSTRAINT [FK_QueueOrder_Weighbridge]
GO
ALTER TABLE [dbo].[SystemParametersSupplyPeriod]  WITH CHECK ADD  CONSTRAINT [FK_SystemParametersSupplyPeriod_SystemParameters] FOREIGN KEY([SystemParametersId])
REFERENCES [dbo].[SystemParameters] ([Id])
GO
ALTER TABLE [dbo].[SystemParametersSupplyPeriod] CHECK CONSTRAINT [FK_SystemParametersSupplyPeriod_SystemParameters]
GO
ALTER TABLE [dbo].[WeighbridgeEquipment]  WITH CHECK ADD  CONSTRAINT [FK_WeighbridgeEquipment_Weighbridge] FOREIGN KEY([WeighbridgeId])
REFERENCES [dbo].[Weighbridge] ([Id])
GO
ALTER TABLE [dbo].[WeighbridgeEquipment] CHECK CONSTRAINT [FK_WeighbridgeEquipment_Weighbridge]
GO
ALTER TABLE [dbo].[WeighingRecord]  WITH CHECK ADD  CONSTRAINT [FK_WeighingRecord_ShippingList] FOREIGN KEY([ShippingListId])
REFERENCES [dbo].[ShippingList] ([Id])
GO
ALTER TABLE [dbo].[WeighingRecord] CHECK CONSTRAINT [FK_WeighingRecord_ShippingList]
GO
ALTER TABLE [dbo].[WeighingRelationType]  WITH CHECK ADD  CONSTRAINT [FK_WeighingRelationType_Weighbridge] FOREIGN KEY([WeighbridgeId])
REFERENCES [dbo].[Weighbridge] ([Id])
GO
ALTER TABLE [dbo].[WeighingRelationType] CHECK CONSTRAINT [FK_WeighingRelationType_Weighbridge]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信用户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'WeChatUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内部用户工号/外部用户身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'IdNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'Telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'AccessTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出入类型（进厂/出厂）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'AccessType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出入大门（东大门/南大门/光亮大门）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'AccessGate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联识别设备' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'DeviceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抓拍照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'门禁记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccessControlRecord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmissionTimePeriods', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmissionTimePeriods', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmissionTimePeriods', @level2type=N'COLUMN',@level2name=N'EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmissionTimePeriods', @level2type=N'COLUMN',@level2name=N'MaxCarNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmissionTimePeriods', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmissionTimePeriods', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmissionTimePeriods', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmissionTimePeriods', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdmissionTimePeriods', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendanceRecord', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendanceRecord', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendanceRecord', @level2type=N'COLUMN',@level2name=N'WorkNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信用户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendanceRecord', @level2type=N'COLUMN',@level2name=N'WeChatUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考勤时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendanceRecord', @level2type=N'COLUMN',@level2name=N'AttendanceTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考勤类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendanceRecord', @level2type=N'COLUMN',@level2name=N'AttendanceType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendanceRecord', @level2type=N'COLUMN',@level2name=N'DeviceCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendanceRecord', @level2type=N'COLUMN',@level2name=N'DeviceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出入记录Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendanceRecord', @level2type=N'COLUMN',@level2name=N'AccessRecordId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendanceRecord', @level2type=N'COLUMN',@level2name=N'DataSource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendanceRecord', @level2type=N'COLUMN',@level2name=N'PlateNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已经同步' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendanceRecord', @level2type=N'COLUMN',@level2name=N'IsSynced'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'同步时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendanceRecord', @level2type=N'COLUMN',@level2name=N'SyncedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'考勤记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AttendanceRecord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全局唯一标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'ContactPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'ContactNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否白名单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'IsWhitelist'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次修改人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Company', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Driver', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Driver', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Driver', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Driver', @level2type=N'COLUMN',@level2name=N'IdCardNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Driver', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Driver', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Driver', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Driver', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Driver', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Driver'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnterpriseWeChatDepartment', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnterpriseWeChatDepartment', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联企业微信权限Id（EnterpriseWeChatPermissions表主键）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnterpriseWeChatDepartment', @level2type=N'COLUMN',@level2name=N'EnterpriseWeChatPermissionsId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnterpriseWeChatDepartment', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnterpriseWeChatPermissions', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnterpriseWeChatPermissions', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业微信用户（WeChatUser表主键）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnterpriseWeChatPermissions', @level2type=N'COLUMN',@level2name=N'FaceLibraryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入场审核权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnterpriseWeChatPermissions', @level2type=N'COLUMN',@level2name=N'AdmissionReview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货确认权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnterpriseWeChatPermissions', @level2type=N'COLUMN',@level2name=N'ReceiptConfirmation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货确认权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EnterpriseWeChatPermissions', @level2type=N'COLUMN',@level2name=N'DeliveryConfirmation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入厂大门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'EntryGate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入厂时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'EntryTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入厂时段开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'StartingAdmissionPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入厂时段结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'EndAdmissionPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入厂事由' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'AdmissionReasons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'受理单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'ReceivingUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'Applicant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'ApplicationTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'ReviewStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'Reviewer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'ReviewTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'ReviewReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入厂类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'Source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为合并的数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication', @level2type=N'COLUMN',@level2name=N'MergedData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入厂申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntryApplication'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntrySetUpDriver', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntrySetUpDriver', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入厂申请Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntrySetUpDriver', @level2type=N'COLUMN',@level2name=N'EntryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'司机Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntrySetUpDriver', @level2type=N'COLUMN',@level2name=N'DriverId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntrySetUpDriver', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntrySetUpDriver', @level2type=N'COLUMN',@level2name=N'IdCardNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原始入厂申请Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntrySetUpDriver', @level2type=N'COLUMN',@level2name=N'OriginalEntryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入厂申请司机表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntrySetUpDriver'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntrySetUpPlate', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntrySetUpPlate', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入厂申请Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntrySetUpPlate', @level2type=N'COLUMN',@level2name=N'EntryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntrySetUpPlate', @level2type=N'COLUMN',@level2name=N'PlateNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原始入厂申请Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntrySetUpPlate', @level2type=N'COLUMN',@level2name=N'OriginalEntryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入厂申请车牌表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EntrySetUpPlate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属大门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'BelongingGate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出入口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'EntranceAndExit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'Ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备端口号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'Port'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车道Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'LaneId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment', @level2type=N'COLUMN',@level2name=N'DeviceCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人脸设备' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceEquipment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联微信用户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'WeChatUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人脸图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'FacePicture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核验人脸图片状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'VerificationStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核验人脸图片人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'Verifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核验人脸图片时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'VerificationTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'核验人脸图片原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'VerificationReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证正面照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'IdCardFrontPicture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证反面照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary', @level2type=N'COLUMN',@level2name=N'IdCardBackPicture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人脸库表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceLibrary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceSendResults', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceSendResults', @level2type=N'COLUMN',@level2name=N'DeviceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人脸Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceSendResults', @level2type=N'COLUMN',@level2name=N'FaceLibraryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人脸下发状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceSendResults', @level2type=N'COLUMN',@level2name=N'FaceSendStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceSendResults', @level2type=N'COLUMN',@level2name=N'OperateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人脸下发结果表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FaceSendResults'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lane', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lane', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车道名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lane', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属大门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lane', @level2type=N'COLUMN',@level2name=N'BelongingGate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车道类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lane', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车道方向' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lane', @level2type=N'COLUMN',@level2name=N'Direction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lane', @level2type=N'COLUMN',@level2name=N'EquipmentCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lane', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lane', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lane', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Lane', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneBlackList', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全局唯一标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneBlackList', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneBlackList', @level2type=N'COLUMN',@level2name=N'PlateNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车道Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'LaneId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出入口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'EntranceAndExit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'端口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'Port'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主机地址(默认01，范围1-244）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'HostAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波特率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'BaudRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'DataBit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校验' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'Check'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneEquipment', @level2type=N'COLUMN',@level2name=N'DeviceCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入场申请Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'EntryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'EmployeeNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内部用户工号/外部用户身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'IdNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'Telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'PlateNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出入时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'AccessTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人脸识别时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'FaceRecognitionTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出入类型（进厂/出厂）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'AccessType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出入大门（东大门/南大门/光亮大门）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'AccessGate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出入车道' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'LaneId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联车牌识别设备' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'CarNoRecognitionDeviceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联人脸识别设备' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'FaceRecognitionDeviceId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抓拍车牌照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'PlateNoPicture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抓拍摄像头照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'CameraPhoto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'抓拍人脸照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'FacePicture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车道记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneRecord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneWhiteList', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全局唯一标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneWhiteList', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneWhiteList', @level2type=N'COLUMN',@level2name=N'PlateNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属公司Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneWhiteList', @level2type=N'COLUMN',@level2name=N'CompanyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'司机姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneWhiteList', @level2type=N'COLUMN',@level2name=N'DriverName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LaneWhiteList', @level2type=N'COLUMN',@level2name=N'WorkNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'OperatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'Operator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'OperationLogType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'OperationTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实体类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'EntityName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序列化数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog', @level2type=N'COLUMN',@level2name=N'SerializedData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作日志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OperationLog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id(WeChatUser表主键)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次修改人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上次修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Plate', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Plate', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Plate', @level2type=N'COLUMN',@level2name=N'PlateNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Plate', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Plate', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Plate', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Plate', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Plate', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Plate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Printer', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Printer', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打印机名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Printer', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打印机位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Printer', @level2type=N'COLUMN',@level2name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Printer', @level2type=N'COLUMN',@level2name=N'Ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'端口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Printer', @level2type=N'COLUMN',@level2name=N'Port'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Printer', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Printer', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Printer', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Printer', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Printer', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QueueOrder', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QueueOrder', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运输单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QueueOrder', @level2type=N'COLUMN',@level2name=N'ShippingListId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地磅id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QueueOrder', @level2type=N'COLUMN',@level2name=N'WeighbridgeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QueueOrder', @level2type=N'COLUMN',@level2name=N'Order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QueueOrder', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QueueOrder', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QueueOrder', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QueueOrder', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QueueOrder', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品名代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RadiationProduct', @level2type=N'COLUMN',@level2name=N'ProductCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RadiationProduct', @level2type=N'COLUMN',@level2name=N'ProductName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RadiationProduct', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RadiationProduct', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RadiationProduct', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RadiationProduct', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RadiationProduct', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'辐射仪产品' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RadiationProduct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipPaper', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出货单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipPaper', @level2type=N'COLUMN',@level2name=N'ShipPaperNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运输单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipPaper', @level2type=N'COLUMN',@level2name=N'ShippingListId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签字照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipPaper', @level2type=N'COLUMN',@level2name=N'SignaturePhoto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签字时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipPaper', @level2type=N'COLUMN',@level2name=N'SignatureTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipPaper', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出货单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShipPaper'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过磅申请Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'WeighingApplicationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否完成' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'CompletedStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运输单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'司机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'Driver'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'PlateNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过磅类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'WeighingType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否侧边过磅' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'IsSideWeighing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入场时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'AdmissionTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出厂时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'FactoryTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第一次过磅时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'FirstTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第一次过磅重量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'FirstWeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第一次过磅地磅' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'FirstWeighbridge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第二次过磅时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'SecondTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第二次过磅重量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'SecondWeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第二次地磅' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'SecondWeighbridge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'净重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'NetWeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'辐射仪数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'RadiometerData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请购案号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'PurchaseCaseNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'CustomerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'CustomerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品名代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'ProductCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'ProductName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'CarDealership'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'Plant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区分码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'DistinguishingCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货柜号1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'ContainerNoOne'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货柜号2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'ContainerNoTwo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'ReceivingStaffId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'ReceivingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'ShipStaffId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'ShipTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签字确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'SignatureTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'签字确认照片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'SignaturePhoto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入场申请id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'EntryApplicationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否作废' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'InvalidStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ERP过磅单号 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'ErpScaleNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ERP监控单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'ErpMonitorNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'水重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'WaterWeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'杂质重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList', @level2type=N'COLUMN',@level2name=N'ImpuritiesWeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过磅申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入厂申请提前天数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'DaysAdvance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车道是否允许迟到入场' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'LaneAllowLate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车道允许迟到时间（分钟）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'LaneAllowLateThreshold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人道是否允许迟到入场' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'SidewalkAllowLate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人道允许迟到时间（分钟）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'SidewalkAllowLateThreshold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'辐射仪门限设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'RadiometerThreshold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'称重门限设置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'WeighingThreshold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过磅顺序数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'WeighingQuantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过磅速度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'WeighingSpeed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统参数表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParameters'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParametersSupplyPeriod', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统参数配置Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParametersSupplyPeriod', @level2type=N'COLUMN',@level2name=N'SystemParametersId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParametersSupplyPeriod', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParametersSupplyPeriod', @level2type=N'COLUMN',@level2name=N'EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParametersSupplyPeriod', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParametersSupplyPeriod', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统参数-供料时段表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemParametersSupplyPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信小程序的OpenId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemUsers', @level2type=N'COLUMN',@level2name=N'WeixinOpenOpenId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信小程序的UnionId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemUsers', @level2type=N'COLUMN',@level2name=N'WeixinOpenUnionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业微信的OpenId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemUsers', @level2type=N'COLUMN',@level2name=N'WeixinWorkOpenId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业微信的UnionId即UserId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemUsers', @level2type=N'COLUMN',@level2name=N'WeixinWorkUnionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemUsers', @level2type=N'COLUMN',@level2name=N'IdCardNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserWhitelist', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserWhitelist', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserWhitelist', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserWhitelist', @level2type=N'COLUMN',@level2name=N'IdNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserWhitelist', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效期起始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserWhitelist', @level2type=N'COLUMN',@level2name=N'ValidityStartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'有效期截至时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserWhitelist', @level2type=N'COLUMN',@level2name=N'ValidityEndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserWhitelist', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserWhitelist', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserWhitelist', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserWhitelist', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserWhitelist', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserWhitelist', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserWhitelist'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自增主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebAccountConfig', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全局唯一标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebAccountConfig', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebAccountConfig', @level2type=N'COLUMN',@level2name=N'LoginName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebAccountConfig', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebAccountConfig', @level2type=N'COLUMN',@level2name=N'CompanyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebAccountConfig', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebAccountConfig', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebAccountConfig', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebAccountConfig', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WebAccountConfig', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'人员类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内部用户工号/外部用户身份证号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'IdNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'Telephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信小程序OpenId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'WeixinOpenOpenId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信小程序UnionId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'WeixinOpenUnionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业微信OpenId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'WeixinWorkOpenId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业微信UnionId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'WeixinWorkUnionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeChatUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Weighbridge', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Weighbridge', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地磅名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Weighbridge', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地磅位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Weighbridge', @level2type=N'COLUMN',@level2name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否带辐射仪' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Weighbridge', @level2type=N'COLUMN',@level2name=N'HaveRadiometer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'启用状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Weighbridge', @level2type=N'COLUMN',@level2name=N'UsingStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运行状态 0-异常 1-正常' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Weighbridge', @level2type=N'COLUMN',@level2name=N'RunningStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Weighbridge', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Weighbridge', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Weighbridge', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Weighbridge', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Weighbridge', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地磅id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'WeighbridgeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备类型(WeighEquipmentType)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'Ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'端口' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'Port'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'辐射仪文件目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'RadiometerFileDirectory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主机地址(默认01，范围1-244)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'HostAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'波特率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'BaudRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'DataBit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'校验' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'Check'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighbridgeEquipment', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'司机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'Driver'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'PlateNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过磅类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'WeighingType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否侧边过磅' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'IsSideWeighing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请购案号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'PurchaseCaseNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'CustomerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'CustomerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品名代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'ProductCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'ProductName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'CarDealership'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'Plant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区分码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'DistinguishingCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货柜号1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'ContainerNoOne'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货柜号2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'ContainerNoTwo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'ApplicationTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联微信用户（申请人）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'WeChatUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过磅申请状态0：已提交，1：执行中，2：完成' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'WeighingStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否作废' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'InvalidStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否决标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication', @level2type=N'COLUMN',@level2name=N'PendingBid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过磅申请表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingApplication'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingAuthorizeCar', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地磅类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingAuthorizeCar', @level2type=N'COLUMN',@level2name=N'WeighbridgeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车牌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingAuthorizeCar', @level2type=N'COLUMN',@level2name=N'LicensePlate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingAuthorizeCar', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingAuthorizeCar', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingAuthorizeCar', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingAuthorizeCar', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingAuthorizeCar', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运输单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'ShippingListId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'OperationType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请购案号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'PurchaseCaseNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'CustomerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'CustomerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品名代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'ProductCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'ProductName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'车行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'CarDealership'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'Plant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区分码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'DistinguishingCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货柜号1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'ContainerNoOne'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货柜号2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'ContainerNoTwo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改后请购案号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'NewPurchaseCaseNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改后客户代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'NewCustomerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改后客户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'NewCustomerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改后品名代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'NewProductCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改后产品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'NewProductName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改后车行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'NewCarDealership'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改后厂别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'NewPlant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改后区分码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'NewDistinguishingCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改后货柜号1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'NewContainerNoOne'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改后货柜号2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingDataModifyRecord', @level2type=N'COLUMN',@level2name=N'NewContainerNoTwo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRecord', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'聚合根Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRecord', @level2type=N'COLUMN',@level2name=N'AggregateRootId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运输单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRecord', @level2type=N'COLUMN',@level2name=N'ShippingListId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'称重时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRecord', @level2type=N'COLUMN',@level2name=N'WeighingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRecord', @level2type=N'COLUMN',@level2name=N'Weight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'磅位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRecord', @level2type=N'COLUMN',@level2name=N'WeighbridgePosition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'辐射仪数据' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRecord', @level2type=N'COLUMN',@level2name=N'RadiometerData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'称重记录表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRecord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRelationType', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地磅类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRelationType', @level2type=N'COLUMN',@level2name=N'WeighbridgeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地磅id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRelationType', @level2type=N'COLUMN',@level2name=N'WeighbridgeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRelationType', @level2type=N'COLUMN',@level2name=N'DeleteStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRelationType', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRelationType', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRelationType', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingRelationType', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingSetting', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过磅类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingSetting', @level2type=N'COLUMN',@level2name=N'WeighbridgeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否过辐射仪' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingSetting', @level2type=N'COLUMN',@level2name=N'PassRadiometer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingSetting', @level2type=N'COLUMN',@level2name=N'CreatedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingSetting', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingSetting', @level2type=N'COLUMN',@level2name=N'LastModifiedUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后编辑时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WeighingSetting', @level2type=N'COLUMN',@level2name=N'LastModifiedTime'
GO
