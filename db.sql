USE [Academy]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[AspNetRoles_Id] [nvarchar](128) NOT NULL,
	[AspNetUsers_Id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[AspNetRoles_Id] ASC,
	[AspNetUsers_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[C__MigrationHistory]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_C__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfigSystem]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigSystem](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Logo] [nvarchar](500) NULL,
	[Address] [nvarchar](500) NULL,
	[IdNo] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Hotline1] [nvarchar](50) NULL,
	[Hotline2] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[TitleDefault] [nvarchar](500) NULL,
	[Infomation] [nvarchar](2000) NULL,
 CONSTRAINT [PK_ConfigSystem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[TeacherId] [bigint] NULL,
	[CourseCategoryId] [bigint] NULL,
	[Image] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[CountLesson] [int] NULL,
	[Price] [money] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[LastEditDate] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseCategory]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[ParentId] [bigint] NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[Createdate] [datetime] NULL,
	[LastEditDate] [datetime] NULL,
 CONSTRAINT [PK_CourseCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employ]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employ](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
	[Address] [nvarchar](500) NULL,
	[Gender] [int] NULL,
	[DOB] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[LastEditDate] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Employ] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewCategory]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[Createdate] [datetime] NULL,
	[LastEditDate] [datetime] NULL,
 CONSTRAINT [PK_NewCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[NewCategoryId] [int] NULL,
	[Image] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[LastEditdate] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[LastEditBy] [nvarchar](50) NULL,
	[Type] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentOfCouse]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentOfCouse](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StudentId] [bigint] NULL,
	[Money] [money] NULL,
	[ContentPayment] [nvarchar](500) NULL,
	[CourseId] [bigint] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[StatusPayment] [int] NULL,
 CONSTRAINT [PK_PaymentOfCouse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentOfExpense]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentOfExpense](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeOfPaymentId] [bigint] NULL,
	[Money] [money] NULL,
	[Reason] [nvarchar](500) NULL,
	[Bill] [nvarchar](500) NULL,
	[Accreditative] [nvarchar](500) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_PaymentOfExpense] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Avatar] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
	[Address] [nvarchar](500) NULL,
	[Gender] [int] NULL,
	[DOB] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[LastEditDate] [datetime] NULL,
	[Status] [int] NULL,
	[CourseId] [bigint] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Avatar] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
	[Address] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[Gender] [int] NULL,
	[DOB] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[LastEditDate] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfPayment]    Script Date: 31/05/2022 01:58:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfPayment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_TypeOfPayment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'1', N'admin@gmail.com', 1, N'admin123', N'ko', N'095575755', 1, 1, NULL, 0, 1, N'ADMIN')
GO
SET IDENTITY_INSERT [dbo].[ConfigSystem] ON 

INSERT [dbo].[ConfigSystem] ([Id], [Logo], [Address], [IdNo], [Phone], [Hotline1], [Hotline2], [Description], [TitleDefault], [Infomation]) VALUES (1, N'/UploadFiles/logo/logo_1215950926.png', N'54 - 56 Lê Thanh Nghị, Bách Khoa, Q. Hai Bà Trưng, Hà Nội', N'12', N'0333749728', N'0988089999', N'0988085599', N'koko', N'koko', N'koko')
SET IDENTITY_INSERT [dbo].[ConfigSystem] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([Id], [Name], [TeacherId], [CourseCategoryId], [Image], [Description], [Note], [CountLesson], [Price], [StartDate], [EndDate], [CreateDate], [LastEditDate], [Status]) VALUES (1, N'Học Kỳ 1', 30003, 1, N'/UploadFiles/Courses/49b1ea32-68a2-4870-b0c2-b84fad358e23_0215312136.png', N'<table>
	<tbody>
		<tr>
			<td><strong>Module</strong></td>
			<td><strong>Topic</strong></td>
		</tr>
		<tr>
			<td rowspan="7"><strong>Semester 1</strong></td>
			<td>Logic Building and Elementary Programming</td>
		</tr>
		<tr>
			<td>Building Next Generation Websites</td>
		</tr>
		<tr>
			<td>BootStrap and Jquery</td>
		</tr>
		<tr>
			<td>Database Management (SQL Server)</td>
		</tr>
		<tr>
			<td>Database Design and Development (NCC Module)</td>
		</tr>
		<tr>
			<td>Web Application Development using PHP</td>
		</tr>
		<tr>
			<td>eProject(Website Development)</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<p>Ho&agrave;n th&agrave;nh kh&oacute;a học, sinh vi&ecirc;n c&oacute; khả năng thiết kế, x&acirc;y dựng website v&agrave; một số dạng ứng dụng tr&ecirc;n thiết bị di động</p>
', N'<h3><strong>MỤC TI&Ecirc;U HỌC KỲ 1 (SEMESTER 1)</strong></h3>

<ul>
	<li><strong>&Aacute;p dụng tư duy để viết chương tr&igrave;nh trong ng&ocirc;n ngữ lập tr&igrave;nh C</strong></li>
	<li><strong>D&ugrave;ng HTML5/CSS3/ JavaScript để lập tr&igrave;nh c&aacute;c cấu tr&uacute;c web v&agrave; ứng dụng</strong></li>
	<li><strong>Nghi&ecirc;n cứu Framework Boostrap v&agrave; Jquery để thiết kế ứng dụng website v&agrave; mobile web</strong></li>
	<li><strong>Chuẩn h&oacute;a, quản trị cơ sở dữ liệu</strong></li>
	<li><strong>Hiểu c&aacute;c nguy&ecirc;n l&yacute; thiết kế, lập tr&igrave;nh quản l&yacute; cơ sở dữ liệu</strong></li>
	<li><strong>X&acirc;y dựng ứng dụng web bằng PHP</strong></li>
	<li><strong>Sử dụng Adobe Dreamweaver ph&aacute;t triển c&aacute;c trang web tương t&aacute;c</strong></li>
</ul>
', 10, 50000.0000, CAST(N'2021-04-10T21:11:00.000' AS DateTime), CAST(N'2021-04-10T21:11:00.000' AS DateTime), CAST(N'2021-04-06T21:11:22.750' AS DateTime), CAST(N'2022-05-30T22:34:34.927' AS DateTime), 1)
INSERT [dbo].[Course] ([Id], [Name], [TeacherId], [CourseCategoryId], [Image], [Description], [Note], [CountLesson], [Price], [StartDate], [EndDate], [CreateDate], [LastEditDate], [Status]) VALUES (2, N'Học Kỳ 2', 40004, 1, N'/UploadFiles/Courses/1_37215329731.png', N'<table>
	<tbody>
		<tr>
			<td><strong>Module</strong></td>
			<td><strong>Topic</strong></td>
		</tr>
		<tr>
			<td>Sử dụng XML v&agrave; JSON để lưu trữ, trao đổi Dữ liệu.</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Thiết kế v&agrave; ph&aacute;t triển ứng dụng desktop bằng Java</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Lập tr&igrave;nh hướng đối tượng sử dụng Java</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Hiểu được đặc điểm của hệ thống th&ocirc;ng tin c&ugrave;ng với c&aacute;c quy tr&igrave;nh v&agrave; c&ocirc;ng cụ được sử dụng trong việc ph&aacute;t triển c&aacute;c hệ thống ứng dụng m&aacute;y t&iacute;nh.</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>X&acirc;y dựng ứng dụng thực tế bằng Java</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Lập tr&igrave;nh hướng đối tượng với C#</td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>
', N'<h3><strong>MỤC TI&Ecirc;U HỌC KỲ 2 (SEMESTER 2)</strong></h3>

<ul>
	<li><strong>Use XML and JSON to store and exchange data</strong></li>
	<li><strong>Application Development Fundamentals-I</strong></li>
	<li><strong>Application Development Fundamentals-II</strong></li>
	<li><strong>Information Systems Analysis (NCC Module)</strong></li>
	<li><strong>Project (Java)</strong></li>
	<li><strong>Application Progamming C#</strong></li>
</ul>
', 10, 5000.0000, CAST(N'2021-04-01T21:56:00.000' AS DateTime), CAST(N'2021-04-08T21:56:00.000' AS DateTime), CAST(N'2021-04-06T21:57:19.780' AS DateTime), CAST(N'2022-05-30T22:34:42.720' AS DateTime), 1)
INSERT [dbo].[Course] ([Id], [Name], [TeacherId], [CourseCategoryId], [Image], [Description], [Note], [CountLesson], [Price], [StartDate], [EndDate], [CreateDate], [LastEditDate], [Status]) VALUES (3, N'Học kỳ 3', 40003, 1, N'/UploadFiles/Courses/49b1ea32-68a2-4870-b0c2-b84fad358e23_0215420723.png', N'<table>
	<tbody>
		<tr>
			<td><strong>Module</strong></td>
			<td><strong>Topic</strong></td>
		</tr>
		<tr>
			<td rowspan="7"><strong>Semester 3</strong></td>
			<td>Windows Forms Programming</td>
		</tr>
		<tr>
			<td>Web Application Development</td>
		</tr>
		<tr>
			<td>Analysis, Design, and Implementation</td>
		</tr>
		<tr>
			<td>Enterprise Application Programming</td>
		</tr>
		<tr>
			<td>eProject-.NET</td>
		</tr>
		<tr>
			<td>Agile Development</td>
		</tr>
		<tr>
			<td>Professional Issues in IT</td>
		</tr>
	</tbody>
</table>

<table>
	<tbody>
		<tr>
			<td>Kết th&uacute;c học kỳ, sinh vi&ecirc;n được trang bị những nền tảng c&ocirc;ng nghệ mới nhất của Microsoft, khả năng ph&aacute;t triển ứng dụng, phần mềm tr&ecirc;n c&aacute;c nền tảng từ PC đến web, khả năng ph&aacute;t triển c&aacute;c ứng dụng tr&ecirc;n Web Azure, Cloud Computing</td>
		</tr>
	</tbody>
</table>
', N'<h3><strong>MỤC TI&Ecirc;U HỌC KỲ 3 (SEMESTER 3)</strong></h3>

<ul>
	<li><strong>Ph&aacute;t triển c&aacute;c ứng dụng Window Form, Window Store bằng c&ocirc;ng nghệ .Net Microsoft</strong></li>
	<li><strong>X&acirc;y dựng website ASP.NET/MVC.NET sử dụng .NET Framework</strong></li>
	<li><strong>C&aacute;c phương ph&aacute;p ph&acirc;n t&iacute;ch,thiết kế hướng đối tượng</strong></li>
	<li><strong>Thiết kế v&agrave; lập tr&igrave;nh c&aacute;c ứng dụng doanh nghiệp c&oacute; khả năng tương t&aacute;c, kết hợp nhiều dịch vụ bao gồm m&aacute;y chủ tại chỗ v&agrave; Windows Azure</strong></li>
	<li><strong>Thực hiện dự &aacute;n ph&aacute;t triển phầm mềm, website bằng c&ocirc;ng nghệ .Net</strong></li>
	<li><strong>&Aacute;p dụng quy tr&igrave;nh ph&aacute;t triển phần mềm Agile</strong></li>
	<li><strong>C&aacute;c giải ph&aacute;p CNTT</strong></li>
</ul>
', 10, 5000.0000, CAST(N'2021-04-24T22:25:00.000' AS DateTime), CAST(N'2021-04-29T22:25:00.000' AS DateTime), CAST(N'2021-04-06T22:26:00.653' AS DateTime), CAST(N'2022-05-30T22:34:51.517' AS DateTime), 1)
INSERT [dbo].[Course] ([Id], [Name], [TeacherId], [CourseCategoryId], [Image], [Description], [Note], [CountLesson], [Price], [StartDate], [EndDate], [CreateDate], [LastEditDate], [Status]) VALUES (4, N'Học Kỳ 4', 30002, 1, N'/UploadFiles/Courses/1600x640_10215435364.png', N'<table>
	<tbody>
		<tr>
			<td><strong>Module</strong></td>
			<td><strong>Topic</strong></td>
		</tr>
		<tr>
			<td rowspan="8"><strong>Semester 4</strong></td>
			<td>Ph&aacute;t triển v&agrave; triển khai c&aacute;c ứng dụng Web Enterprise trong J2EE sử dụng JSP v&agrave; Servlet</td>
		</tr>
		<tr>
			<td>Ph&aacute;t triển website doanh nghiệp bằng Java EE</td>
		</tr>
		<tr>
			<td>Ph&aacute;t triển ứng dụng web chuẩn MVC với Strut JSF</td>
		</tr>
		<tr>
			<td>Ph&aacute;t triển ứng dụng giao diện cao cấp với EJB</td>
		</tr>
		<tr>
			<td>Ph&aacute;t triển ứng dụng dịch vụ Web (Web Service)</td>
		</tr>
		<tr>
			<td>Ph&aacute;t triển c&aacute;c ứng dụng Android chạy tr&ecirc;n thiết bị di động v&agrave; thiết bị kh&ocirc;ng d&acirc;y</td>
		</tr>
		<tr>
			<td>Bảo mật th&ocirc;ng tin trong m&ocirc;i trường kh&ocirc;ng d&acirc;y</td>
		</tr>
		<tr>
			<td>T&igrave;m hiểu kỹ thuật ph&acirc;n t&iacute;ch, thiết kế chi tiết kỹ thuật, kịch bản thử nghiệm để ph&aacute;t triển một dự &aacute;n</td>
		</tr>
	</tbody>
</table>

<table>
	<tbody>
		<tr>
			<td>Ho&agrave;n th&agrave;nh kh&oacute;a học, sinh vi&ecirc;n được cấp bằng ADSE (Advance Diploma in Software Engineering) của tập đo&agrave;n Aptech. Hết năm thứ hai, sinh vi&ecirc;n c&oacute; khả năng ph&aacute;t triển tr&ecirc;n c&aacute;c ứng dụng lớn, t&iacute;nh chất đa nền tảng to&agrave;n cầu cho doanh nghiệp, đặc biệt l&agrave; c&aacute;c hệ thống Ng&acirc;n h&agrave;ng, hệ thống bảo hiểm, hệ thống si&ecirc;u thị, Internet of Things&hellip; Khả năng ph&aacute;t triển chuy&ecirc;n s&acirc;u c&aacute;c ứng dụng nền tảng Android v&agrave; c&aacute;c nền tảng di động kh&aacute;c</td>
		</tr>
	</tbody>
</table>
', N'<h3><strong>MỤC TI&Ecirc;U HỌC KỲ 4 (SEMESTER 4)</strong></h3>

<ul>
	<li><strong>Web Component Development</strong></li>
	<li><strong>Project-Java EE</strong></li>
	<li><strong>Architecting Applications for the Web</strong></li>
	<li><strong>Enterprise Application Development</strong></li>
	<li><strong>Creating Services for the Web</strong></li>
	<li><strong>Developing Applications for Wireless Devices</strong></li>
	<li><strong>Network Security and Cryptography (NCC Module)</strong></li>
	<li><strong>Computing Project (NCC Module)</strong></li>
</ul>
', 10, 5000.0000, CAST(N'2021-04-03T22:31:00.000' AS DateTime), CAST(N'2021-04-09T22:31:00.000' AS DateTime), CAST(N'2021-04-06T22:31:58.913' AS DateTime), CAST(N'2022-05-30T22:35:00.307' AS DateTime), 1)
INSERT [dbo].[Course] ([Id], [Name], [TeacherId], [CourseCategoryId], [Image], [Description], [Note], [CountLesson], [Price], [StartDate], [EndDate], [CreateDate], [LastEditDate], [Status]) VALUES (10002, N'Front end HTML, CSS, Javascript', 40005, 1, N'/UploadFiles/Courses/banner-pc_2_2215450009.png', N'<h2><strong>Tại Sao N&ecirc;n Đăng K&yacute; Kh&oacute;a Học Lập Tr&igrave;nh Java?</strong></h2>

<p>Học lập tr&igrave;nh Java c&oacute; kh&oacute; kh&ocirc;ng c&ograve;n phụ thuộc rất nhiều y&ecirc;u tố. Đối với người đam m&ecirc; v&agrave; muốn chinh phục n&oacute; l&agrave; điều v&ocirc; c&ugrave;ng dễ d&agrave;ng. Lập tr&igrave;nh</p>

<p>Java được đ&aacute;nh gi&aacute; l&agrave; ng&ocirc;n ngữ lập tr&igrave;nh dễ học v&agrave; dễ t&igrave;m hiểu. Tuy nhi&ecirc;n, n&oacute;i l&agrave; dễ học nhưng bạn cũng cần c&oacute; một lượng kiến thức cơ bản về Java mới c&oacute; thể học học n&oacute; một c&aacute;ch dễ d&agrave;ng.</p>

<p>Đối với người chưa c&oacute; bất kỳ kiến thức n&agrave;o về lập tr&igrave;nh Java th&igrave; việc tự học lập tr&igrave;nh Java sẽ v&ocirc; c&ugrave;ng kh&oacute; khăn v&agrave; kh&ocirc;ng biết&nbsp;<strong>học lập tr&igrave;nh java bắt đầu từ đ&acirc;u</strong>. Từ việc học chỗ n&agrave;y một t&iacute;, học chỗ kia một t&iacute; sẽ dẫn đến việc học s&oacute;t kiến thức đến khi &aacute;p dụng v&agrave;o thực tế sẽ kh&ocirc;ng th&agrave;nh c&ocirc;ng dẫn đến ch&aacute;n nản v&agrave; bỏ cuộc.</p>

<p>Ch&iacute;nh v&igrave; vậy nếu bạn muốn tự học lập tr&igrave;nh Java đ&ograve;i hỏi bạn cần phải c&oacute; những kiến thức cơ bản mới c&oacute; thể tự học được. Ngược lại khi bạn chưa c&oacute; bất kỳ ch&uacute;t kiến thức n&agrave;o về Java th&igrave;&nbsp;<strong>lời khuy&ecirc;n học lập tr&igrave;nh java cho người mới bắt đầu</strong>&nbsp;l&agrave; kh&ocirc;ng n&ecirc;n tự học lập tr&igrave;nh</p>

<p>Java l&agrave; ng&ocirc;n ngữ lập tr&igrave;nh bậc cao, muốn học n&oacute; phải học một c&aacute;ch b&agrave;i bản. Học Java l&agrave; học từng bước một. Đầu ti&ecirc;n bạn cần nắm vững c&aacute;c kh&aacute;i niệm cơ bản về Java (kh&aacute;i niệm, đối tượng, thuộc t&iacute;nh, h&agrave;nh vi&hellip;.) . Sau đ&oacute; l&agrave; khai b&aacute;o, sử dụng c&uacute; ph&aacute;p, nắm kiến thức từ cơ bản đến n&acirc;ng cao.</p>

<p>Bạn n&ecirc;n học lập tr&igrave;nh Java ở c&aacute;c trung t&acirc;m dạy lập tr&igrave;nh, tại c&aacute;c trường đ&agrave;o tạo chuy&ecirc;n ng&agrave;nh để được học kiến thức một c&aacute;ch b&agrave;i bản nhất, bạn sẽ hiểu được&nbsp;<strong>học lập tr&igrave;nh java cần những g&igrave;</strong>. Việc học tại những nơi đ&agrave;o tạo ch&iacute;nh quy, chuy&ecirc;n nghiệp sẽ mang đến rất nhiều lợi &iacute;ch khi bạn đi s&acirc;u v&agrave; xa hơn tr&ecirc;n con đường lập tr&igrave;nh.</p>

<p>Từ những kiến thức được giảng dạy bạn c&oacute; thể kết hợp với phương thức từ học sẽ đem đến những hiệu quả cao. Việc<strong>&nbsp;tự học lập tr&igrave;nh Java&nbsp;</strong>bạn c&oacute; thể học tr&ecirc;n c&aacute;c gi&aacute;o tr&igrave;nh, tại liệu, c&aacute;c kh&oacute;a học tr&ecirc;n internet&hellip;. Mỗi một k&ecirc;nh l&agrave; một lượng th&ocirc;ng tin lớn. Nếu bạn biết chắt lọc v&agrave; c&oacute; kỹ năng tự học th&igrave; lượng kiến thức bạn học được sẽ v&ocirc; c&ugrave;ng khổng lồ.</p>

<p>Nền tảng kiến thức tốt kết hợp với phương thức thực h&agrave;nh thường xuy&ecirc;n sẽ gi&uacute;p bạn c&oacute; được những kỹ năng tốt khi&nbsp;<strong>học lập tr&igrave;nh Java.</strong></p>

<p>Từ những vấn đề tr&ecirc;n bạn đ&atilde; t&igrave;m ra c&acirc;u trả lời cho c&acirc;u hỏi<strong>&nbsp;c&oacute; n&ecirc;n tự học lập tr&igrave;nh Java kh&ocirc;ng</strong>&nbsp;? cũng l&agrave; lời giải đ&aacute;p tại sao n&ecirc;n đăng k&iacute; kh&oacute;a học lập tr&igrave;nh java. Bạn n&ecirc;n nhớ Lập tr&igrave;nh l&agrave; m&ocirc;n học trừu tượng, s&aacute;ng tạo ch&iacute;nh v&igrave; vậy khi học bạn cần c&oacute; một t&acirc;m thế ki&ecirc;n định, ki&ecirc;n nhẫn khi học.</p>

<p>Kh&ocirc;ng n&ecirc;n n&oacute;ng vội, muốn học thật nhanh. Việc giải quyết code trong lập tr&igrave;nh l&agrave; điều v&ocirc; c&ugrave;ng kh&oacute; khăn. Tuy nhi&ecirc;n khi đ&atilde; l&agrave;m được rồi th&igrave; kh&ocirc;ng c&ograve;n trở ngại g&igrave; đối với bạn khi lập tr&igrave;nh nữa.</p>

<p>Th&aacute;i độ học tập&nbsp; nghi&ecirc;m t&uacute;c, b&agrave;i bản, đầu tư c&ugrave;ng với đam m&ecirc; muốn chinh phục l&agrave; những ch&igrave;a kh&oacute;a v&agrave;ng đưa bạn đến th&agrave;nh c&ocirc;ng trong tương lai.&nbsp;C&aacute;c lớp học lập tr&igrave;nh java hiện nay kh&aacute; nhiều bạn cũng n&ecirc;n c&acirc;n nhắc c&aacute;c địa chỉ dạy lập tr&igrave;nh java uy t&iacute;n, chất lượng</p>

<h2><strong>Lộ Tr&igrave;nh Kh&oacute;a Học Lập Tr&igrave;nh Java</strong></h2>

<p>Lộ tr&igrave;nh kh&oacute;a học lập tr&igrave;nh Java</p>

<p>Dưới đ&acirc;y l&agrave; nội dung một chương tr&igrave;nh kh&oacute;a học lập tr&igrave;nh Java. Nội dung kh&oacute;a học chia th&agrave;nh 2 phần kh&oacute;a học lập tr&igrave;nh java cơ bản v&agrave; kh&oacute;a học lập tr&igrave;nh java n&acirc;ng cao:</p>

<p><strong>Kh&oacute;a học lập tr&igrave;nh java cơ bản</strong></p>

<ul>
	<li>kiểu cơ sở dữ liệu, mảng</li>
	<li>giao diện ứng dụng swing</li>
	<li>Class, object, package</li>
	<li>Inheritance, Abstract, interface</li>
	<li>Collections( list, map, set), generics</li>
	<li>innerClass</li>
	<li>I/O Stream, File I/O</li>
</ul>

<p>Kh&oacute;a học lập tr&igrave;nh java n&acirc;ng cao</p>

<p><strong>+ Kỹ thuật lập tr&igrave;nh v&agrave; c&ocirc;ng nghệ lưu trữ</strong></p>

<ul>
	<li>Lambda, Stream AIP</li>
	<li>L&agrave;m việc với dữ liệu JSON, XML DOM</li>
	<li>MySQL, JDBC, triển khai ứng dụng CRUD</li>
	<li>Biểu thức ch&iacute;nh quy, quốc tế h&oacute;a, địa phương h&oacute;a</li>
	<li>Một số Design pattern th&ocirc;ng dụng</li>
	<li>Đa luồng &ndash; Multithread</li>
</ul>

<p><strong>+ Ph&aacute;t triển ứng dụng web với Java server Page &ndash; JSP, servlet, Hibernate</strong></p>

<ul>
	<li>tổng quan J2EE servlet</li>
	<li>JSP, EL v&agrave; JSTL</li>
	<li>m&ocirc; h&igrave;nh MVC với JSP/ servlet</li>
	<li>Session, cookie, Filter</li>
	<li>Hibernate FrameWork, cấu h&igrave;nh, truy vấn dữ liệu, v&agrave; quản l&yacute; Session trong Hibernate</li>
	<li>Custom Tag</li>
	<li>Ajax</li>
</ul>

<p><strong>+ Ph&aacute;t triển ứng dụng web với Spring FrameWork</strong></p>

<ul>
	<li>&nbsp;Spring MVC,&nbsp; Spring Form</li>
	<li>&nbsp;Spring &amp; JDBC</li>
	<li>&nbsp;Spring &amp; Hibernate</li>
	<li>Spring&nbsp; Dependency Injection</li>
	<li>Spring validation, Spring Upload files</li>
	<li>Spring &amp; Tiles</li>
	<li>Spring security</li>
	<li>Spring Interceptor</li>
	<li>Spring REST API</li>
</ul>

<p>Triển khai Web l&ecirc;n server Tomcat EJB/ Glassfish</p>

<p><strong>Mục ti&ecirc;u kh&oacute;a học lập tr&igrave;nh Java&nbsp;</strong></p>

<ul>
	<li>&Aacute;p dụng tốt quy tr&igrave;nh ph&aacute;t triển ứng dụng khi triển khai c&aacute;c loại ứng dụng kh&aacute;c</li>
	<li>Nắm vững được c&aacute;c kiến thức v&agrave; vận dụng ch&uacute;ng trong lập tr&igrave;nh hướng đối tượng như Object, Class, Inheritance, Abstrack,&nbsp; interface, innerClass &hellip; trong việc x&acirc;y dựng v&agrave; triển khai c&aacute;c ứng dụng trong lập tr&igrave;nh Java.</li>
	<li>&Aacute;p dụng Design pattern khi thiết kế cấu tr&uacute;c ứng dụng</li>
	<li>Sử dụng c&aacute;c c&ocirc;ng nghệ lưu trữ kh&aacute;c nhau như tập text, JSON, XML, CSDL, MySQL</li>
	<li>Ph&aacute;t triển ứng dụng web với&nbsp; Spring FrameWork: Spring MVC,&nbsp; Form, JDBC, Hibernate, Dependency Injection, validation, Spring Upload files, Spring &amp; Tiles, Spring security, Spring Interceptor, Spring REST API.</li>
	<li>Ph&aacute;t triển ứng dụng web với J2EE, JSP, EL v&agrave; JSTL, Session, cookie, Filter&hellip;. trong m&ocirc; h&igrave;nh MVC</li>
	<li>Sử dụng tốt server Tomcat/ Glassfish</li>
	<li>gi&uacute;p bạn lập tr&igrave;nh tốt hơn, c&oacute; tư duy v&agrave; phong c&aacute;ch.</li>
</ul>

<h2><strong>Kh&oacute;a Học Lập Tr&igrave;nh Java Mất Bao L&acirc;u</strong></h2>

<p>Một kh&oacute;a học lập tr&igrave;nh Java mất bao l&acirc;u thời gian l&agrave; quan t&acirc;m của nhiều học vi&ecirc;n khi tham gia c&aacute;c kh&oacute;a học. Thời gian tham gia kh&oacute;a học lập tr&igrave;nh Java l&agrave;&nbsp;<strong>3 th&aacute;ng</strong>. Bạn được cung cấp đầy đủ nền tảng kiến thức về ng&ocirc;n ngữ lập tr&igrave;nh Java.</p>

<p>Đầu ti&ecirc;n khi bạn bắt đầu một kh&oacute;a học lập tr&igrave;nh java căn bản bạn sẽ học v&agrave; nắm được những kh&aacute;i niệm cơ bản về lập tr&igrave;nh Java. Bạn cần nắm vững c&aacute;c kh&aacute;i niệm cơ bản về Java (kh&aacute;i niệm, đối tượng, thuộc t&iacute;nh, h&agrave;nh vi&hellip;.) . Sau đ&oacute; l&agrave; khai b&aacute;o, sử dụng c&uacute; ph&aacute;p&hellip;. Học những c&aacute;i cơ bản nhất để c&oacute; thể nắm bắt những thứ n&acirc;ng cao hơn trong lập tr&igrave;nh Java.</p>

<p>Để nhanh ch&oacute;ng th&agrave;nh thạo ng&ocirc;n ngữ&nbsp;<strong>lập tr&igrave;nh Java&nbsp;</strong>đ&ograve;i hỏi người học cần c&oacute; một th&aacute;i độ nghi&ecirc;m t&uacute;c v&agrave; d&agrave;nh thời gian cho kh&oacute;a học.</p>

<p><strong>Tr&ecirc;n thực tế th&igrave; bạn phải mất &iacute;t nhất l&agrave; 3 th&aacute;ng để học được một kh&oacute;a học cơ bản về lập tr&igrave;nh Java.</strong></p>

<h2><strong>Học Ph&iacute; Kh&oacute;a Học Lập Tr&igrave;nh Java L&agrave; Bao Nhi&ecirc;u</strong></h2>

<p>Để tham gia một kh&oacute;a học lập tr&igrave;nh Java mất bao nhi&ecirc;u chi ph&iacute;? C&acirc;u hỏi nhận được sự quan t&acirc;m của rất nhiều người. Bất kỳ một kh&oacute;a học n&agrave;o khi t&igrave;m hiểu về nội dung đ&agrave;o tạo th&igrave; điều c&aacute;c học vi&ecirc;n lu&ocirc;n quan t&acirc;m l&agrave; chi ph&iacute; cần bỏ ra bao nhi&ecirc;u. Để c&oacute; c&acirc;u trả lời ch&iacute;nh x&aacute;c th&igrave; vấn đề n&agrave;y phụ thuộc v&agrave;o rất nhiều yếu tố.</p>

<p>Sự lớn mạnh của lập tr&igrave;nh Java l&agrave; những yếu tố gi&uacute;p c&aacute;c trung t&acirc;m dạy lập tr&igrave;nh ng&agrave;y một ph&aacute;t triển v&agrave; nhận được sự quan t&acirc;m của người học. Trung t&acirc;m lập tr&igrave;nh nhiều th&igrave; đi k&egrave;m đ&oacute; l&agrave; gi&aacute; cả cho mỗi kh&oacute;a học lập tr&igrave;nh cũng rất kh&aacute;c nhau. Mỗi một trung t&acirc;m sẽ c&oacute; một mức gi&aacute; cụ thể cho c&aacute;c kh&oacute;a học m&agrave;&nbsp; trung t&acirc;m đ&agrave;o tạo với những chương tr&igrave;nh kh&aacute;c nhau.</p>

<p><strong>Học ph&iacute; cho một kh&oacute;a học lập tr&igrave;nh Java</strong>&nbsp;được đ&aacute;nh gi&aacute; dựa tr&ecirc;n một v&agrave;i yếu tố sau: chương tr&igrave;nh dạy, đội ngũ giảng vi&ecirc;n, cơ sở hạ tầng v&agrave; cơ sở vật chất của trung t&acirc;m.</p>

<p>C&oacute; rất nhiều trung t&acirc;m dạy lập tr&igrave;nh th&igrave; kh&ocirc;ng phải trung t&acirc;m n&agrave;o cũng đ&agrave;o tạo chất lượng uy t&iacute;n. B&ecirc;n cạnh trung t&acirc;m đủ ti&ecirc;u chuẩn dạy học th&igrave; c&oacute; kh&ocirc;ng &iacute;t c&aacute;c trung t&acirc;m chưa đạt đủ c&aacute;c ti&ecirc;u ch&iacute;.</p>

<p>Ch&iacute;nh v&igrave; vậy để cạnh tranh với c&aacute;c trung t&acirc;m kh&aacute;c, bắt buộc học ph&iacute; cho mỗi kh&oacute;a học Java tại c&aacute;c trung t&acirc;m n&agrave;y sẽ vẫn phải rẻ hơn rất nhiều so với c&aacute;c trung t&acirc;m dạy lập tr&igrave;nh uy t&iacute;n kh&aacute;c để thu h&uacute;t học vi&ecirc;n.</p>

<p>Ch&iacute;nh điều n&agrave;y đ&ograve;i hỏi người học cần phải c&oacute; những t&igrave;m hiểu kỹ c&agrave;ng trước khi tham gia một kh&oacute;a học tại bất kỳ trung t&acirc;m dạy lập tr&igrave;nh n&agrave;o đ&oacute;. Kh&ocirc;ng phải c&aacute;i g&igrave; rẻ l&agrave; cũng tốt đặc biệt l&agrave; trong lĩnh vực lập tr&igrave;nh. Điều quan trọng l&agrave; bạn sẽ nhận lại được bao nhi&ecirc;u kiến thức về lập tr&igrave;nh Java từ kh&oacute;a học đ&oacute;.</p>

<p>Hiện nay,&nbsp;<strong>học ph&iacute; cho một kh&oacute;a học lập tr&igrave;nh Java dao động từ 5 &ndash; 7 triệu đồng/ kh&oacute;a học</strong>&nbsp;Bạn h&atilde;y c&acirc;n nhắc v&agrave; lựa chọn cho m&igrave;nh một trung t&acirc;m dạy học uy t&iacute;n khi c&oacute; nhu cầu tham gia kh&oacute;a học.</p>

<p>Một trung t&acirc;m dạy học uy t&iacute;n chất lượng, học ph&iacute; hợp l&yacute; th&igrave; đ&oacute; l&agrave; điều bất kỳ học vi&ecirc;n n&agrave;o cũng mong muốn. Khi đ&atilde; quyết định tham gia một kh&oacute;a học lập tr&igrave;nh th&igrave; học ph&iacute; bạn kh&ocirc;ng n&ecirc;n đặt l&ecirc;n h&agrave;ng đầu m&agrave; điều bạn cần quan t&acirc;m đ&oacute; ch&iacute;nh l&agrave; bạn sẽ nhận lại được lượng kiến thức khổng lồ như thế n&agrave;o khi theo học c&aacute;c trung t&acirc;m dạy lập tr&igrave;nh uy t&iacute;n.</p>

<p>Với sự hướng dẫn của người thầy sẽ mang lại cho bạn những kiến thức, kỹ năng lập tr&igrave;nh khi tham gia v&agrave;o c&aacute;c dự &aacute;n thực tế.</p>

<p>Việc lựa chọn trung t&acirc;m lập tr&igrave;nh l&agrave; một quyết định đ&ograve;i hỏi bạn phải lựa chọn ch&iacute;nh x&aacute;c bởi đ&acirc;y l&agrave; nơi sẽ dạy cho bạn những kiến thức cơ bản đầu ti&ecirc;n về lập tr&igrave;nh Java, l&agrave; bước đi đầu ti&ecirc;n tr&ecirc;n con đường lập tr&igrave;nh chuy&ecirc;n nghiệp tương lai.</p>

<p>Ch&iacute;nh v&igrave; thế, trước khi đăng k&iacute; kh&oacute;a học lập tr&igrave;nh bạn n&ecirc;n t&igrave;m hiểu kĩ c&aacute;c kh&oacute;a học lập tr&igrave;nh java ở h&agrave; nội, kh&oacute;a học lập tr&igrave;nh java tphcm. Tứ đ&oacute; c&oacute; sự lựa chọn của ri&ecirc;ng m&igrave;nh</p>

<p>Ch&uacute;c bạn c&oacute; những quyết định đ&uacute;ng đắn v&agrave; th&agrave;nh c&ocirc;ng với những g&igrave; m&agrave; m&igrave;nh lựa chọn trong lập tr&igrave;nh Java.</p>

<h2><strong>C&aacute;c Kh&aacute;i Niệm Cơ Bản Về Lập Tr&igrave;nh Java</strong></h2>

<p>Dưới đ&acirc;y l&agrave; một số kh&aacute;i niệm về ng&ocirc;n ngữ java cũng như một số ứng dụng của ng&ocirc;n ngữ Java.</p>

<h3>1, Lập tr&igrave;nh Java l&agrave; g&igrave;?</h3>

<p>Java l&agrave; một ng&ocirc;n ngữ lập tr&igrave;nh hướng đối tượng, đa mục đ&iacute;ch c&oacute; khả năng l&agrave;m việc trong bất kỳ nền tảng n&agrave;o m&agrave; kh&ocirc;ng cần phải phi&ecirc;n dịch lại.</p>

<p>Đặc trưng của ng&ocirc;n ngữ Java được thể hiện ở c&acirc;u n&oacute;i: Viết một lần chạy mọi nơi.</p>

<p><strong>Java l&agrave; một ng&ocirc;n ngữ lập tr&igrave;nh v&agrave; l&agrave; một Platform.</strong></p>

<p>Ở kh&iacute;a cạnh lập tr&igrave;nh Java l&agrave; một ng&ocirc;n ngữ lập tr&igrave;nh bậc cao, hướng đối tượng, bảo mật v&agrave; mạnh mẽ.</p>

<p>Ở kh&iacute;a cạnh Platform: Bất kỳ m&ocirc;i trường phần cứng, phần mềm n&agrave;o m&agrave; trong đ&oacute; c&oacute; một chương tr&igrave;nh chạy th&igrave; được gọi l&agrave;&nbsp; Platform. Với m&ocirc;i trường Runtime (JRE) API th&igrave; Java được gọi l&agrave; một Platform.</p>

<p><strong>Lịch sử h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển</strong>&nbsp;<strong>của lập tr&igrave;nh Java</strong></p>

<p>Ng&ocirc;n ngữ lập tr&igrave;nh Java ra đời v&agrave;o năm 1995 do James Gosling khởi xướng v&agrave; ph&aacute;t triển. Bằng sự ph&aacute;t triển với những phi&ecirc;n bản kh&aacute;c nhau. Bản Java mới nhất c&oacute; t&ecirc;n Java SE8 . Java được sử dụng rộng r&atilde;i v&agrave; phổ biến tr&ecirc;n to&agrave;n thế giới nhờ những ưu điểm tuyệt vời của n&oacute;. Với nhiều nền tảng sử dụng n&ecirc;n n&oacute; được x&acirc;y dựng bởi c&aacute;c cấu h&igrave;nh kh&aacute;c nhau để tạo sự ph&ugrave; hợp.</p>
', N'<p>ko</p>
', 10, 5000.0000, CAST(N'2021-03-31T20:56:00.000' AS DateTime), CAST(N'2021-04-16T20:56:00.000' AS DateTime), CAST(N'2021-04-23T20:56:08.667' AS DateTime), CAST(N'2022-05-30T22:15:15.603' AS DateTime), 1)
INSERT [dbo].[Course] ([Id], [Name], [TeacherId], [CourseCategoryId], [Image], [Description], [Note], [CountLesson], [Price], [StartDate], [EndDate], [CreateDate], [LastEditDate], [Status]) VALUES (10003, N'MVC từ cơ bản tới nâng cao', 40003, 2, N'/UploadFiles/Courses/banner-pc_2_6_1215504568.png', N'<p>ko</p>
', N'<p>ko</p>
', 10, 5000.0000, CAST(N'2021-04-02T20:57:00.000' AS DateTime), CAST(N'2021-04-18T20:57:00.000' AS DateTime), CAST(N'2021-04-23T20:57:28.013' AS DateTime), CAST(N'2021-05-14T01:55:04.570' AS DateTime), 1)
INSERT [dbo].[Course] ([Id], [Name], [TeacherId], [CourseCategoryId], [Image], [Description], [Note], [CountLesson], [Price], [StartDate], [EndDate], [CreateDate], [LastEditDate], [Status]) VALUES (10004, N'Php Laravel cơ bản', 40003, 30002, N'/UploadFiles/Courses/banner-pc_56215518807.png', N'<p>ko</p>
', N'<p>ko</p>
', 10, 5000.0000, CAST(N'2021-04-04T20:58:00.000' AS DateTime), CAST(N'2021-04-06T20:58:00.000' AS DateTime), CAST(N'2021-04-23T20:58:46.050' AS DateTime), CAST(N'2021-05-14T01:55:18.810' AS DateTime), 1)
INSERT [dbo].[Course] ([Id], [Name], [TeacherId], [CourseCategoryId], [Image], [Description], [Note], [CountLesson], [Price], [StartDate], [EndDate], [CreateDate], [LastEditDate], [Status]) VALUES (10005, N'Angular cơ bản', 40004, 10002, N'/UploadFiles/Courses/java-developer215536878.jpg', N'<p><img alt="" src="/Uploadfiles/images/400x400_ktv.png" style="height:400px; width:400px" />ko</p>
', N'<p>k</p>
', 10, 5000.0000, CAST(N'2021-04-07T20:59:00.000' AS DateTime), CAST(N'2021-04-03T20:58:00.000' AS DateTime), CAST(N'2021-04-23T20:59:05.943' AS DateTime), CAST(N'2021-05-14T01:55:36.880' AS DateTime), 1)
INSERT [dbo].[Course] ([Id], [Name], [TeacherId], [CourseCategoryId], [Image], [Description], [Note], [CountLesson], [Price], [StartDate], [EndDate], [CreateDate], [LastEditDate], [Status]) VALUES (10006, N'React nâng cao', 40005, 10003, N'/UploadFiles/Courses/banner-pc-2_2215556620.png', N'<p>k</p>
', N'<p>k</p>
', 1, 5000.0000, CAST(N'2021-04-17T20:59:00.000' AS DateTime), CAST(N'2021-04-11T20:59:00.000' AS DateTime), CAST(N'2021-04-23T20:59:25.863' AS DateTime), CAST(N'2021-05-14T01:55:56.623' AS DateTime), 1)
INSERT [dbo].[Course] ([Id], [Name], [TeacherId], [CourseCategoryId], [Image], [Description], [Note], [CountLesson], [Price], [StartDate], [EndDate], [CreateDate], [LastEditDate], [Status]) VALUES (30002, N'Lập trình căn bản', 40003, 1, N'/UploadFiles/Courses/0001_0_2214329800.png', N'<p><img alt="" src="/Uploadfiles/images/1_66.jpg" /></p>

<p>ko</p>
', N'<p><img alt="" src="/Uploadfiles/images/1600x640_4.png" /></p>

<p>ko</p>
', 7, 444.0000, CAST(N'2021-05-14T19:48:00.000' AS DateTime), CAST(N'2021-05-08T19:48:00.000' AS DateTime), CAST(N'2021-05-13T19:48:40.060' AS DateTime), CAST(N'2021-05-14T01:43:29.807' AS DateTime), 1)
INSERT [dbo].[Course] ([Id], [Name], [TeacherId], [CourseCategoryId], [Image], [Description], [Note], [CountLesson], [Price], [StartDate], [EndDate], [CreateDate], [LastEditDate], [Status]) VALUES (30003, N'Lập trình Front-end cơ bản 5', 40003, 2, N'/UploadFiles/Courses/1_67214932900.jpg', N'<p><img alt="" src="/Uploadfiles/images/1600x640_4.png" style="height:640px; width:1600px" /></p>
', N'<p><img alt="" src="/Uploadfiles/images/400x400_ktv.png" style="height:400px; width:400px" /></p>
', 11, 22.0000, CAST(N'2021-05-16T01:49:00.000' AS DateTime), CAST(N'2021-05-30T01:49:00.000' AS DateTime), CAST(N'2021-05-14T01:49:32.903' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseCategory] ON 

INSERT [dbo].[CourseCategory] ([Id], [Name], [ParentId], [Description], [Status], [CreateBy], [Createdate], [LastEditDate]) VALUES (1, N'Khóa học dài hạn', NULL, N'ko', 1, NULL, CAST(N'2021-04-04T18:50:41.610' AS DateTime), CAST(N'2022-05-30T22:34:05.740' AS DateTime))
INSERT [dbo].[CourseCategory] ([Id], [Name], [ParentId], [Description], [Status], [CreateBy], [Createdate], [LastEditDate]) VALUES (2, N'Lập trình Back-end', NULL, N'ko', 1, NULL, CAST(N'2021-04-04T18:51:26.887' AS DateTime), CAST(N'2021-05-10T16:14:36.587' AS DateTime))
INSERT [dbo].[CourseCategory] ([Id], [Name], [ParentId], [Description], [Status], [CreateBy], [Createdate], [LastEditDate]) VALUES (10002, N'Lập trình Front-end cơ bản', 1, N'ko', 1, NULL, CAST(N'2021-04-04T19:04:51.203' AS DateTime), CAST(N'2021-05-10T16:15:06.350' AS DateTime))
INSERT [dbo].[CourseCategory] ([Id], [Name], [ParentId], [Description], [Status], [CreateBy], [Createdate], [LastEditDate]) VALUES (10003, N'Lập trình Front-end chuyên sâu', 1, N'hhh', 1, NULL, CAST(N'2021-04-04T19:05:32.550' AS DateTime), CAST(N'2021-05-10T16:15:32.727' AS DateTime))
INSERT [dbo].[CourseCategory] ([Id], [Name], [ParentId], [Description], [Status], [CreateBy], [Createdate], [LastEditDate]) VALUES (30002, N'Lập trình Back-end cơ bản', 2, N'ko', 1, NULL, CAST(N'2021-04-06T21:20:39.137' AS DateTime), CAST(N'2021-05-10T16:16:01.957' AS DateTime))
INSERT [dbo].[CourseCategory] ([Id], [Name], [ParentId], [Description], [Status], [CreateBy], [Createdate], [LastEditDate]) VALUES (40002, N'Lập trình Back-end chuyên sâu', 2, N'ko', 1, NULL, CAST(N'2021-05-10T16:16:17.817' AS DateTime), NULL)
INSERT [dbo].[CourseCategory] ([Id], [Name], [ParentId], [Description], [Status], [CreateBy], [Createdate], [LastEditDate]) VALUES (50002, N'Khóa học lập trình front end', NULL, N'Khóa học dài hạn', 1, NULL, CAST(N'2022-05-30T22:32:40.447' AS DateTime), CAST(N'2022-05-30T22:34:21.343' AS DateTime))
SET IDENTITY_INSERT [dbo].[CourseCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Employ] ON 

INSERT [dbo].[Employ] ([Id], [Name], [Phone], [Email], [Address], [Gender], [DOB], [CreateDate], [LastEditDate], [Status]) VALUES (1, N'Do Van Nghia', N'0333749728', N'nghiadv1006@gmail.com', N'Yen My,Hung yen', 0, CAST(N'2021-04-14T01:04:00.000' AS DateTime), CAST(N'2021-04-02T01:04:58.730' AS DateTime), CAST(N'2021-04-02T01:06:38.017' AS DateTime), 1)
INSERT [dbo].[Employ] ([Id], [Name], [Phone], [Email], [Address], [Gender], [DOB], [CreateDate], [LastEditDate], [Status]) VALUES (2, N'Do Van Nghia', N'0333749728', N'nghiadv1006@gmail.com', N'Yen My,Hung yen', 1, CAST(N'2021-04-07T22:54:00.000' AS DateTime), CAST(N'2021-04-02T22:54:39.880' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Employ] OFF
GO
SET IDENTITY_INSERT [dbo].[NewCategory] ON 

INSERT [dbo].[NewCategory] ([Id], [Name], [Description], [Status], [CreateBy], [Createdate], [LastEditDate]) VALUES (1, N'Danh mục 1', N'có', 1, NULL, CAST(N'2021-05-01T16:29:45.257' AS DateTime), CAST(N'2021-05-01T16:29:58.760' AS DateTime))
INSERT [dbo].[NewCategory] ([Id], [Name], [Description], [Status], [CreateBy], [Createdate], [LastEditDate]) VALUES (2, N'Danh mục 2', N'ko', 0, NULL, CAST(N'2021-05-01T16:31:46.837' AS DateTime), CAST(N'2022-05-10T20:34:28.380' AS DateTime))
SET IDENTITY_INSERT [dbo].[NewCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [Image], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (1002, N'Đón chào sự quay trở lại của chuỗi ngày hội Open Day năm 2022 – Ngày hội tư vấn chọn ngành CNTT', N'Đón chào sự quay trở lại của chuỗi ngày hội Open Day năm 2022 – Ngày hội tư vấn chọn ngành CNTT', N'<p><strong>V&agrave;o ng&agrave;y 24/04/2022 vừa qua, ng&agrave;y hội Open Day #1 thuộc chuỗi c&aacute;c ng&agrave;y hội Open Day đ&atilde; được tổ chức tại Aptech D5 B&igrave;nh Thạnh (Aptech Nguyễn Đ&igrave;nh Chiểu). Đ&acirc;y ch&iacute;nh l&agrave; chuỗi ng&agrave;y hội tư vấn chọn ng&agrave;nh CNTT được tổ chức thường ni&ecirc;n d&agrave;nh cho c&aacute;c bạn học sinh cuối cấp THPT.</strong></p>

<p>Trải qua một năm tạm ngưng v&agrave; chuyển sang h&igrave;nh thức Online do t&igrave;nh h&igrave;nh dịch bệnh, chuỗi ng&agrave;y hội Open Day 2022 đ&atilde; trở lại c&ugrave;ng một diện mạo ho&agrave;n to&agrave;n mới với chủ đề APTECH HOME &ndash; IT CAMPUS. Ng&agrave;y hội được tổ chức tại cơ sở mới của Aptech tại địa chỉ 35/6 đường D5, Quận B&igrave;nh Thạnh, mang đến cho c&aacute;c bạn học sinh một trải nghiệm mới mẻ về kh&ocirc;ng gian học tập ng&agrave;nh CNTT.</p>

<p><img alt="" src="https://aptechvietnam.com.vn/sites/default/files/dscf2067_1.png" style="height:667px; width:1000px" /></p>

<p><em>Chương tr&igrave;nh ch&agrave;o đ&oacute;n sự xuất hiện của c&aacute;c bạn học sinh THPT tr&ecirc;n địa b&agrave;n TP.HCM v&agrave; c&aacute;c tỉnh l&acirc;n cận</em></p>

<p>Ng&agrave;y hội Open Day lần n&agrave;y vinh dự được ch&agrave;o đ&oacute;n c&aacute;c đo&agrave;n học sinh đến từ c&aacute;c trường THPT tại c&aacute;c khu vực thuộc TP.HCM v&agrave; c&aacute;c tỉnh l&acirc;n cận đến tham quan v&agrave; trải nghiệm kh&ocirc;ng gian học tập IT Campus. B&ecirc;n cạnh đ&oacute;, c&aacute;c bạn c&ograve;n được trải nghiệm b&agrave;i Test tư duy logic ng&agrave;nh CNTT độc quyền tại Aptech ngay tại hệ thống c&aacute;c ph&ograve;ng m&aacute;y hiện tại của Aptech. B&agrave;i kiểm tra n&agrave;y ch&iacute;nh l&agrave; cơ sở khoa học gi&uacute;p x&aacute;c định khả năng ph&ugrave; hợp với ng&agrave;nh CNTT của c&aacute;c bạn. Kh&aacute;c với c&aacute;c ng&agrave;nh kh&aacute;c, đ&acirc;y l&agrave; l&yacute; do c&aacute;c bạn kh&ocirc;ng phải lo sợ vấn đề &ldquo;chọn sai ng&agrave;nh, đi sai đường&rdquo;.</p>

<p><img alt="" src="https://aptechvietnam.com.vn/sites/default/files/dscf1412_0.png" style="height:667px; width:1000px" /></p>

<p><em>Trải nghiệm b&agrave;i thi Tư duy logic ng&agrave;nh CNTT</em></p>

<p>Sau khi trải nghiệm b&agrave;i test, c&aacute;c bạn học sinh sẽ được c&aacute;c anh chị Aptech giới thiệu tham quan c&aacute;c ph&ograve;ng học, ph&ograve;ng chức năng cũng như cơ sở vật chất tại T&ograve;a nh&agrave; Aptech. Vừa được đưa v&agrave;o hoạt động c&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u, cơ sở Aptech Home &ndash; IT Campus D5 B&igrave;nh Thạnh được x&acirc;y dựng theo phương ch&acirc;m&nbsp;<strong>APTECH HOME &ndash; IT CAMPUS</strong>&nbsp;với mục ti&ecirc;u mang đến cho tất cả những người y&ecirc;u th&iacute;ch Lập tr&igrave;nh một kh&ocirc;ng gian ri&ecirc;ng biệt, ấm c&uacute;ng. Kh&ocirc;ng đơn giản l&agrave; một nơi đ&agrave;o tạo, đ&acirc;y sẽ c&ograve;n l&agrave; nơi m&agrave; bạn c&oacute; thể tự do học hỏi, giao lưu kết bạn với rất nhiều bạn trẻ c&oacute; c&ugrave;ng ch&iacute; hướng m&agrave; Aptech ch&iacute;nh l&agrave; chiếc &ldquo;cầu nối&rdquo; cho tất cả mọi người.</p>

<p><img alt="" src="https://aptechvietnam.com.vn/sites/default/files/dscf1480.png" style="height:667px; width:1000px" /></p>

<p><em>Lắng nghe c&aacute;c anh chị Aptech giới thiệu về những kh&ocirc;ng gian học tập, vui chơi trong khu&ocirc;n vi&ecirc;n Aptech Home</em></p>

<p>B&ecirc;n cạnh việc trải nghiệm b&agrave;i test v&agrave; tham quan kh&ocirc;ng gian học tập, ng&agrave;y hội Open Day lần n&agrave;y c&ograve;n mang đến cho c&aacute;c bạn trẻ tham dự c&aacute;c kh&aacute;ch mời l&agrave; những chuy&ecirc;n gia h&agrave;ng đầu trong ng&agrave;nh CNTT để chia sẻ, mang đến cho c&aacute;c bạn những th&ocirc;ng tin ch&iacute;nh x&aacute;c v&agrave; thực tế nhất. Đứng trước tuổi 18 với nhiều những m&ocirc;ng lung về tương lai, những lời khuy&ecirc;n từ những người đi trước chắc chắn sẽ gi&uacute;p &iacute;ch cho c&aacute;c bạn học sinh THPT của ch&uacute;ng ta rất nhiều.</p>

<p>Đến với chương tr&igrave;nh,&nbsp;<strong>&ocirc;ng Trần Anh Tuấn - Chuy&ecirc;n gia dự b&aacute;o nh&acirc;n lực / Ph&oacute; Chủ tịch,&nbsp;&nbsp;Hội gi&aacute;o dục Nghề nghiệp Tp.HCM</strong>&nbsp;đ&atilde; c&oacute; những chia sẻ thực tế v&ocirc; c&ugrave;ng bổ &iacute;ch d&agrave;nh cho c&aacute;c bạn học sinh. Với những c&acirc;u chuyện rất giản dị v&agrave; gần gũi với c&aacute;c bạn học sinh THPT nhưng vẫn rất &yacute; nghĩa tạo động lực cho c&aacute;c bạn quyết t&acirc;m lựa chọn ng&agrave;nh CNTT trong thời đại CMCN 4.0 cũng như &ldquo;hậu&rdquo; Covid.</p>

<p><img alt="" src="https://aptechvietnam.com.vn/sites/default/files/dscf1687.png" style="height:667px; width:1000px" /></p>

<p><em>&Ocirc;ng Trần Anh Tuấn -&nbsp;Chuy&ecirc;n gia dự b&aacute;o nh&acirc;n lực / Ph&oacute; Chủ tịch,&nbsp;&nbsp;Hội gi&aacute;o dục Nghề nghiệp Tp.HCM</em></p>

<p>Tiếp theo đ&oacute;,<strong>&nbsp;chị Trần Thị Thanh Tr&uacute;c - Senior Talent Acquisition</strong>, C&ocirc;ng ty Cổ phần dịch vụ Di động trực tuyến v&iacute; MoMo cũng mang đến cho tất cả c&aacute;c bạn trẻ tham dự một c&aacute;i nh&igrave;n tổng quan về t&igrave;nh h&igrave;nh nh&acirc;n lực IT thực tế tại c&aacute;c doanh nghiệm. Với kinh nghiệm nhiều năm trong việc tuyển dụng c&aacute;c nh&acirc;n t&agrave;i trong ng&agrave;nh CNTT, chị Tr&uacute;c đ&atilde; chia sẻ c&aacute;c yếu tố cần c&oacute; để c&oacute; thể ứng tuyển v&agrave;o những doanh nghiệp IT, từ đ&oacute;, c&aacute;c bạn học sinh c&oacute; thể h&igrave;nh dung ra được những g&igrave; bản th&acirc;n m&igrave;nh cần bổ sung v&agrave; cải thiện cho con đường sự nghiệp sắp tới.</p>

<p><img alt="" src="https://aptechvietnam.com.vn/sites/default/files/aptech_openday_240422.png" style="height:720px; width:1280px" /></p>

<p><em>Những tố chất nh&agrave; tuyển dụng mong đợi ở 1 ứng vi&ecirc;n IT</em></p>

<p><img alt="" src="https://aptechvietnam.com.vn/sites/default/files/dscf1708.png" style="height:667px; width:1000px" /></p>

<p><em>&nbsp;Chị Trần Thị Thanh Tr&uacute;c - Senior Talent Acquisition</em></p>

<p>Cũng đến tham dự ng&agrave;y hội với vai tr&ograve; l&agrave; một &ldquo;người đi trước&rdquo; &ndash;&nbsp;<strong>Anh Trần Tuấn Cường - Senior Developer,&nbsp;&nbsp;C&ocirc;ng ty Groove Technology Vietnam, đồng thời cũng l&agrave; cựu học vi&ecirc;n Aptech</strong>, đ&atilde; chia sẻ về c&acirc;u chuyện của ch&iacute;nh bản th&acirc;n m&igrave;nh để g&oacute;p phần truyền cảm hứng đến cho c&aacute;c bạn trẻ. Xuất ph&aacute;t điểm từ 1 sinh vi&ecirc;n Kế to&aacute;n với niềm đam m&ecirc; ng&agrave;nh CNTT đ&atilde; c&oacute; từ trước, anh đ&atilde; mạnh dạn chuyển ng&agrave;nh v&agrave; lựa chọn Aptech l&agrave; điểm đến học tập v&igrave; nơi đ&acirc;y chương tr&igrave;nh được đ&agrave;o tạo tinh gọn chỉ trong v&ograve;ng 2.5 năm, ch&uacute; trọng v&agrave;o thực h&agrave;nh n&ecirc;n v&ocirc; c&ugrave;ng ph&ugrave; hợp cho những ai muốn nhanh ch&oacute;ng đi l&agrave;m ngay. Với c&aacute;c bạn THPT, c&aacute;c bạn cũng c&oacute; thể lựa chọn con đường học nhanh gọn như thế để r&uacute;t ngắn khoảng thời gian ph&aacute;t triển con đường sự nghiệp của m&igrave;nh trong ng&agrave;nh CNTT.</p>

<p><img alt="" src="https://aptechvietnam.com.vn/sites/default/files/dscf1758.png" style="height:667px; width:1000px" /></p>

<p>V&agrave; cuối c&ugrave;ng,&nbsp;<strong>thầy L&ecirc; Thanh Sơn &ndash; Gi&aacute;m đốc Đ&agrave;o tạo Aptech</strong>&nbsp;đ&atilde; chia sẻ tại chương tr&igrave;nh chi tiết c&aacute;c chuy&ecirc;n ng&agrave;nh đ&agrave;o tạo cũng như lộ tr&igrave;nh học tập tại Aptech. Với 2 chuy&ecirc;n ng&agrave;nh ch&iacute;nh l&agrave; C&ocirc;ng nghệ phần mềm v&agrave; Khoa học dữ liệu &ndash; Tr&iacute; tuệ nh&acirc;n tạo, sẽ gi&uacute;p c&aacute;c bạn trẻ nắm vững rất nhiều kiến thức từ cơ bản đến n&acirc;ng cao về lập tr&igrave;nh. Sau khi tốt nghiệp, c&aacute;c bạn c&oacute; thể tự tin l&agrave;m việc tại nhiều vị tr&iacute; như: Kỹ sư Lập tr&igrave;nh Web - App - Game &ndash; Software, chuy&ecirc;n vi&ecirc;n Ph&acirc;n T&iacute;ch Dữ liệu (Data Analyst), chuy&ecirc;n gia Khoa học dữ liệu (Data Scientist),&hellip;</p>

<p><img alt="" src="https://aptechvietnam.com.vn/sites/default/files/dscf1816.png" style="height:667px; width:1000px" /></p>
', 1, N'/UploadFiles/News/1_7212637897.png', CAST(N'2021-05-01T21:13:06.813' AS DateTime), CAST(N'2022-05-30T21:47:53.880' AS DateTime), NULL, NULL, 1, 1)
INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [Image], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (2002, N'Thông tin tuyển sinh 2022', N'ko', N'<p><img alt="" src="/Uploadfiles/images/400x400_ktv.png" style="height:400px; width:400px" /></p>

<p>kkkkkk</p>
', 1, N'/UploadFiles/News/1_66214643381.jpg', CAST(N'2021-05-13T19:46:43.390' AS DateTime), CAST(N'2021-05-13T19:49:10.343' AS DateTime), NULL, NULL, 1, 1)
INSERT [dbo].[News] ([Id], [Title], [Description], [Detail], [NewCategoryId], [Image], [CreateDate], [LastEditdate], [CreateBy], [LastEditBy], [Type], [Status]) VALUES (3002, N'Thông tin tuyển sinh 2022', N'ko', N'<p><img alt="" src="/Uploadfiles/images/1_66.jpg" style="height:372px; width:672px" /><img alt="" src="/Uploadfiles/images/400x400_ktv.png" style="height:400px; width:400px" /></p>
', 1, N'/UploadFiles/News/0001_0_2211803977.png', CAST(N'2021-05-14T02:17:35.513' AS DateTime), CAST(N'2021-05-14T02:18:03.980' AS DateTime), NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentOfCouse] ON 

INSERT [dbo].[PaymentOfCouse] ([Id], [StudentId], [Money], [ContentPayment], [CourseId], [CreateBy], [CreateDate], [StatusPayment]) VALUES (1, 20002, 555.0000, N'ko', 3, NULL, NULL, NULL)
INSERT [dbo].[PaymentOfCouse] ([Id], [StudentId], [Money], [ContentPayment], [CourseId], [CreateBy], [CreateDate], [StatusPayment]) VALUES (2, 20002, 666.0000, N'ko', 4, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PaymentOfCouse] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [Name], [Avatar], [Phone], [Email], [Description], [Address], [Gender], [DOB], [CreateDate], [LastEditDate], [Status], [CourseId]) VALUES (30008, N'Huy', N'/UploadFiles/Students/steve-jobs210137983.png', N'5555555', N'ff@gg.vom', N'hh', N'hh', 1, CAST(N'2021-05-06T10:58:00.000' AS DateTime), CAST(N'2021-05-10T10:59:13.927' AS DateTime), CAST(N'2021-05-12T21:38:17.673' AS DateTime), 0, 3)
INSERT [dbo].[Student] ([Id], [Name], [Avatar], [Phone], [Email], [Description], [Address], [Gender], [DOB], [CreateDate], [LastEditDate], [Status], [CourseId]) VALUES (30014, N'Ngô Quang Dũng', NULL, N'1010111', N'dung@gmail.com', N'ko', NULL, NULL, NULL, CAST(N'2021-05-10T21:59:09.207' AS DateTime), NULL, 3, NULL)
INSERT [dbo].[Student] ([Id], [Name], [Avatar], [Phone], [Email], [Description], [Address], [Gender], [DOB], [CreateDate], [LastEditDate], [Status], [CourseId]) VALUES (40012, N'Ngô Quang Dũng', NULL, N'1010111', N'admin@gmail.com', N'ko', NULL, NULL, NULL, CAST(N'2021-05-13T21:05:24.307' AS DateTime), NULL, 3, NULL)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([Id], [Avatar], [Name], [Phone], [Email], [Address], [Description], [Gender], [DOB], [CreateDate], [LastEditDate], [Status]) VALUES (30002, N'/UploadFiles/Teachers/dao_manh_thang_-_update210628565.jpg', N'Đỗ Văn Dũng', N'0333749728', N'dung1006@gmail.com', N'Yen My,Hung yen', NULL, 1, CAST(N'2021-04-23T16:12:00.000' AS DateTime), CAST(N'2021-04-04T16:12:10.980' AS DateTime), CAST(N'2022-05-10T12:16:02.370' AS DateTime), 1)
INSERT [dbo].[Teacher] ([Id], [Avatar], [Name], [Phone], [Email], [Address], [Description], [Gender], [DOB], [CreateDate], [LastEditDate], [Status]) VALUES (30003, N'/UploadFiles/Teachers/b210600726.png', N'Nguyễn Mạnh Hùng', N'0977786755', N'nguyenhung@gmail.com', N'Hưng yên', NULL, 1, CAST(N'2021-05-05T22:24:00.000' AS DateTime), CAST(N'2021-05-01T22:24:47.840' AS DateTime), CAST(N'2021-05-10T16:09:42.540' AS DateTime), 1)
INSERT [dbo].[Teacher] ([Id], [Avatar], [Name], [Phone], [Email], [Address], [Description], [Gender], [DOB], [CreateDate], [LastEditDate], [Status]) VALUES (40003, N'/UploadFiles/Teachers/img_1769210715307.png', N'Trần Văn Thành', N'8888888', N'aahhah@gmal.com', N'kk', N'kk', 1, CAST(N'2021-05-06T17:05:00.000' AS DateTime), CAST(N'2021-05-04T17:05:16.970' AS DateTime), CAST(N'2021-05-10T16:11:46.777' AS DateTime), 1)
INSERT [dbo].[Teacher] ([Id], [Avatar], [Name], [Phone], [Email], [Address], [Description], [Gender], [DOB], [CreateDate], [LastEditDate], [Status]) VALUES (40004, N'/UploadFiles/Teachers/ths-dau-ngoc-ha-duong-trang_0210738553.png', N'Ngô Quang Dũng', N'888', N'aahhah@gmal.com', N'kkk', N'kk', 1, CAST(N'2021-05-05T17:05:00.000' AS DateTime), CAST(N'2021-05-04T17:06:03.047' AS DateTime), CAST(N'2021-05-10T16:12:03.840' AS DateTime), 1)
INSERT [dbo].[Teacher] ([Id], [Avatar], [Name], [Phone], [Email], [Address], [Description], [Gender], [DOB], [CreateDate], [LastEditDate], [Status]) VALUES (40005, N'/UploadFiles/Teachers/trangok210805523.png', N'Nguyễn Thị Hoa', N'88', N'aahhah@gmal.com', N'kk', N'k', 1, CAST(N'2021-05-13T17:06:00.000' AS DateTime), CAST(N'2021-05-04T17:07:19.040' AS DateTime), CAST(N'2021-05-10T16:12:47.450' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles] FOREIGN KEY([AspNetRoles_Id])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers] FOREIGN KEY([AspNetUsers_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_CourseCategory] FOREIGN KEY([CourseCategoryId])
REFERENCES [dbo].[CourseCategory] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_CourseCategory]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Teacher]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_NewCategory] FOREIGN KEY([NewCategoryId])
REFERENCES [dbo].[NewCategory] ([Id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_NewCategory]
GO
ALTER TABLE [dbo].[PaymentOfExpense]  WITH CHECK ADD  CONSTRAINT [FK_PaymentOfExpense_TypeOfPayment] FOREIGN KEY([TypeOfPaymentId])
REFERENCES [dbo].[TypeOfPayment] ([Id])
GO
ALTER TABLE [dbo].[PaymentOfExpense] CHECK CONSTRAINT [FK_PaymentOfExpense_TypeOfPayment]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Course]
GO
