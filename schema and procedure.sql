USE [project_flask]
GO
/****** Object:  Table [dbo].[educationbackground]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[educationbackground](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeDegree] [nvarchar](30) NULL,
	[filename] [nvarchar](100) NULL,
	[linkurl] [nvarchar](1000) NULL,
	[idinformationuser] [int] NULL,
 CONSTRAINT [pk_eb] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeRelative]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRelative](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Relationship] [varchar](50) NULL,
	[phone] [varchar](100) NULL,
	[email] [varchar](50) NULL,
	[contactaddress] [varchar](max) NULL,
	[career] [varchar](50) NULL,
	[idinformationuser] [int] NULL,
	[critizenIdentìicationNo] [varchar](50) NULL,
	[fullname] [varchar](50) NULL,
	[dateofbirth] [varchar](50) NULL,
	[placeofbirth] [varchar](50) NULL,
	[issuedon] [varchar](50) NULL,
	[address] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeerelative_informationuser]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeerelative_informationuser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idemployeerelative] [int] NOT NULL,
	[idinformationuser] [int] NOT NULL,
	[col_Privateinsurance] [bit] NULL,
	[col_Additionalprivateinsurance] [bit] NULL,
	[col_Dependant] [bit] NULL,
	[col_Emergencycontact] [bit] NULL,
	[col_Beneficiarycontact] [bit] NULL,
 CONSTRAINT [pk_employeerelative_informationuser] PRIMARY KEY CLUSTERED 
(
	[idemployeerelative] ASC,
	[idinformationuser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[forexSalary]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forexSalary](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[forextypeid] [int] NULL,
	[Annualsalary] [float] NULL,
	[Monthlysalary] [float] NULL,
	[Monthlysalaryincontract] [float] NULL,
	[Quaterlybonustarget] [float] NULL,
	[Annualbonustarget] [float] NULL,
	[idinformationUserJob] [int] NULL,
	[is_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[forextype]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forextype](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](20) NULL,
	[companysite] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[healthCheckCertificates]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[healthCheckCertificates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[documentno] [int] NULL,
	[documentname] [nvarchar](100) NULL,
	[isnoratized] [nvarchar](10) NULL,
	[linkurl] [nvarchar](1000) NULL,
	[idinformationuser] [int] NULL,
 CONSTRAINT [pk_hcc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[information_cccd]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[information_cccd](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[No] [int] NULL,
	[FullName] [nvarchar](50) NULL,
	[DateOfbirth] [datetime] NULL,
	[PlaceOfBirth] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[IssueOn] [datetime] NULL,
	[IdInformationUser] [int] NULL,
 CONSTRAINT [pk_IC] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[informationUser]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[informationUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [varchar](50) NULL,
	[Nickname] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Contactaddress] [varchar](50) NULL,
	[id_useraccount] [int] NULL,
	[phone] [varchar](20) NULL,
	[linkedln] [varchar](max) NULL,
	[years] [int] NULL,
	[location] [varchar](max) NULL,
	[Maritalstatus] [varchar](20) NULL,
	[Ethnicgroup] [varchar](20) NULL,
	[Religion] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[informationUserJob]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[informationUserJob](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[companysitecode] [varchar](20) NULL,
	[department] [varchar](50) NULL,
	[directmanager] [varchar](50) NULL,
	[workfortype] [varchar](50) NULL,
	[bankaccount] [varchar](100) NULL,
	[bankname] [varchar](100) NULL,
	[taxcode] [varchar](100) NULL,
	[Socialinsurancecode] [varchar](100) NULL,
	[Healthinsurancecardcode] [varchar](100) NULL,
	[Registeredhospitalname] [varchar](100) NULL,
	[Registeredhospitalcode] [varchar](100) NULL,
	[idinformationuser] [int] NULL,
	[is_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[laborContract]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[laborContract](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[LaborcontractNo] [varchar](100) NULL,
	[Laborcontracttype] [varchar](100) NULL,
	[Laborcontractterm] [varchar](50) NULL,
	[Commencementdate] [datetime] NULL,
	[Position] [varchar](100) NULL,
	[Employeelevel] [int] NULL,
	[idinformationUserJob] [int] NULL,
	[is_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[latestEmployment]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[latestEmployment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Employer] [varchar](255) NULL,
	[jobtitle] [varchar](255) NULL,
	[annualsalary] [int] NULL,
	[annualbonus] [int] NULL,
	[retentionbonus] [int] NULL,
	[retentionBonusExpiredDate] [datetime] NULL,
	[StockOption] [int] NULL,
	[startdate] [datetime] NULL,
	[enddate] [datetime] NULL,
	[idinformationuser] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qualification]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qualification](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeQualification] [nvarchar](100) NULL,
	[filename] [nvarchar](100) NULL,
	[linkurl] [nvarchar](1000) NULL,
	[idinformationuser] [int] NULL,
 CONSTRAINT [pk_q] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role_user]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_account]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_other_app] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[created_date] [varchar](100) NULL,
	[authenticated_by] [varchar](50) NULL,
	[secret_token] [varchar](100) NULL,
	[enabled_authentication] [bit] NULL,
	[infor_validate] [bit] NULL,
	[email_validate] [bit] NULL,
	[role_id] [int] NULL,
	[is_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_avatar]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_avatar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idinformationuser] [int] NULL,
	[pic_name] [nvarchar](100) NULL,
 CONSTRAINT [pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_cccd]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_cccd](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idinformationuser] [int] NULL,
	[front_pic_name] [nvarchar](100) NULL,
	[back_pic_name] [nvarchar](100) NULL,
 CONSTRAINT [pk_cccd] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_healthyInsurance]    Script Date: 31/01/2024 11:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_healthyInsurance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idinformationuser] [int] NULL,
	[front_pic_name] [nvarchar](100) NULL,
	[back_pic_name] [nvarchar](100) NULL,
 CONSTRAINT [pk_HI] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[employeeRelative] ON 

INSERT [dbo].[employeeRelative] ([id], [Relationship], [phone], [email], [contactaddress], [career], [idinformationuser], [critizenIdentìicationNo], [fullname], [dateofbirth], [placeofbirth], [issuedon], [address]) VALUES (18, N'1', N'1', N'1', N'1', N'1', 1, N'1', N'1', N'2002-01-01 00:00:00.0000000', N'1', N'2002-01-01 00:00:00.0000000', N'1')
INSERT [dbo].[employeeRelative] ([id], [Relationship], [phone], [email], [contactaddress], [career], [idinformationuser], [critizenIdentìicationNo], [fullname], [dateofbirth], [placeofbirth], [issuedon], [address]) VALUES (19, N'1', N'1', N'1', N'1', N'1', 2001, N'1', N'1', N'2002-01-01 00:00:00.0000000', N'1', N'2002-01-01 00:00:00.0000000', N'1')
SET IDENTITY_INSERT [dbo].[employeeRelative] OFF
GO
SET IDENTITY_INSERT [dbo].[employeerelative_informationuser] ON 

INSERT [dbo].[employeerelative_informationuser] ([id], [idemployeerelative], [idinformationuser], [col_Privateinsurance], [col_Additionalprivateinsurance], [col_Dependant], [col_Emergencycontact], [col_Beneficiarycontact]) VALUES (1, 18, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[employeerelative_informationuser] OFF
GO
SET IDENTITY_INSERT [dbo].[forexSalary] ON 

INSERT [dbo].[forexSalary] ([id], [forextypeid], [Annualsalary], [Monthlysalary], [Monthlysalaryincontract], [Quaterlybonustarget], [Annualbonustarget], [idinformationUserJob], [is_active]) VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[forexSalary] OFF
GO
SET IDENTITY_INSERT [dbo].[forextype] ON 

INSERT [dbo].[forextype] ([id], [type], [companysite]) VALUES (1, N'USD-VND', N'usa')
SET IDENTITY_INSERT [dbo].[forextype] OFF
GO
SET IDENTITY_INSERT [dbo].[informationUser] ON 

INSERT [dbo].[informationUser] ([id], [Fullname], [Nickname], [Email], [Contactaddress], [id_useraccount], [phone], [linkedln], [years], [location], [Maritalstatus], [Ethnicgroup], [Religion]) VALUES (1, N'hoang tuan', N'', N'pnhtuanhcmus@gmail.com', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[informationUser] ([id], [Fullname], [Nickname], [Email], [Contactaddress], [id_useraccount], [phone], [linkedln], [years], [location], [Maritalstatus], [Ethnicgroup], [Religion]) VALUES (1001, N'hoang tuan', N'', N'vhgtin@gmail', N'', 1002, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[informationUser] ([id], [Fullname], [Nickname], [Email], [Contactaddress], [id_useraccount], [phone], [linkedln], [years], [location], [Maritalstatus], [Ethnicgroup], [Religion]) VALUES (2001, N'pnhtuan20clc', N'1', N'pnhtuan20@clc.fitus.edu.vn', N'hcm', 2002, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[informationUser] OFF
GO
SET IDENTITY_INSERT [dbo].[informationUserJob] ON 

INSERT [dbo].[informationUserJob] ([id], [companysitecode], [department], [directmanager], [workfortype], [bankaccount], [bankname], [taxcode], [Socialinsurancecode], [Healthinsurancecardcode], [Registeredhospitalname], [Registeredhospitalcode], [idinformationuser], [is_active]) VALUES (1, N'1', N'1', N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[informationUserJob] OFF
GO
SET IDENTITY_INSERT [dbo].[laborContract] ON 

INSERT [dbo].[laborContract] ([id], [LaborcontractNo], [Laborcontracttype], [Laborcontractterm], [Commencementdate], [Position], [Employeelevel], [idinformationUserJob], [is_active]) VALUES (2, N'1', N'1', N'1', CAST(N'2024-01-25T21:17:20.063' AS DateTime), N'1', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[laborContract] OFF
GO
SET IDENTITY_INSERT [dbo].[latestEmployment] ON 

INSERT [dbo].[latestEmployment] ([id], [Employer], [jobtitle], [annualsalary], [annualbonus], [retentionbonus], [retentionBonusExpiredDate], [StockOption], [startdate], [enddate], [idinformationuser]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1001)
INSERT [dbo].[latestEmployment] ([id], [Employer], [jobtitle], [annualsalary], [annualbonus], [retentionbonus], [retentionBonusExpiredDate], [StockOption], [startdate], [enddate], [idinformationuser]) VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[latestEmployment] ([id], [Employer], [jobtitle], [annualsalary], [annualbonus], [retentionbonus], [retentionBonusExpiredDate], [StockOption], [startdate], [enddate], [idinformationuser]) VALUES (1002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2001)
SET IDENTITY_INSERT [dbo].[latestEmployment] OFF
GO
SET IDENTITY_INSERT [dbo].[role_user] ON 

INSERT [dbo].[role_user] ([id], [role_name]) VALUES (1, N'employee')
INSERT [dbo].[role_user] ([id], [role_name]) VALUES (2, N'employee_manager')
INSERT [dbo].[role_user] ([id], [role_name]) VALUES (3, N'client_manager')
INSERT [dbo].[role_user] ([id], [role_name]) VALUES (4, N'account_manager')
INSERT [dbo].[role_user] ([id], [role_name]) VALUES (5, N'admin')
INSERT [dbo].[role_user] ([id], [role_name]) VALUES (6, N'candidate')
SET IDENTITY_INSERT [dbo].[role_user] OFF
GO
SET IDENTITY_INSERT [dbo].[user_account] ON 

INSERT [dbo].[user_account] ([id], [id_other_app], [email], [password], [created_date], [authenticated_by], [secret_token], [enabled_authentication], [infor_validate], [email_validate], [role_id], [is_active]) VALUES (1, NULL, N'pnhtuanhcmus@gmail.com', N'Tuan123456#', N'2024-01-09 18:11:59.2029970', N'normal', N'SONDL4SVL6AKJURIWBBBITOJ6PU2DOLQ', 1, 1, 0, 1, 1)
INSERT [dbo].[user_account] ([id], [id_other_app], [email], [password], [created_date], [authenticated_by], [secret_token], [enabled_authentication], [infor_validate], [email_validate], [role_id], [is_active]) VALUES (1002, NULL, N'vhgtin@gmail', N'Tuan1234#', N'2024-01-26 19:21:00.6806700', N'normal', N'HD7CMZW6EMXQROQ6KBKTPDCQJ4UJ3HO2', 1, 0, 0, 6, 0)
INSERT [dbo].[user_account] ([id], [id_other_app], [email], [password], [created_date], [authenticated_by], [secret_token], [enabled_authentication], [infor_validate], [email_validate], [role_id], [is_active]) VALUES (2002, NULL, N'pnhtuan20@clc.fitus.edu.vn', N'Tuan123456#', N'2024-01-31 19:02:25.8384230', N'normal', N'LBR2Y3E7DAWPU6MSDKXVZSQBFPSEG2DJ', 1, 1, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[user_account] OFF
GO
ALTER TABLE [dbo].[employeerelative_informationuser] ADD  DEFAULT ((0)) FOR [col_Privateinsurance]
GO
ALTER TABLE [dbo].[employeerelative_informationuser] ADD  DEFAULT ((0)) FOR [col_Additionalprivateinsurance]
GO
ALTER TABLE [dbo].[employeerelative_informationuser] ADD  DEFAULT ((0)) FOR [col_Dependant]
GO
ALTER TABLE [dbo].[employeerelative_informationuser] ADD  DEFAULT ((0)) FOR [col_Emergencycontact]
GO
ALTER TABLE [dbo].[employeerelative_informationuser] ADD  DEFAULT ((0)) FOR [col_Beneficiarycontact]
GO
ALTER TABLE [dbo].[forexSalary] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[informationUserJob] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[laborContract] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[user_account] ADD  DEFAULT ((0)) FOR [enabled_authentication]
GO
ALTER TABLE [dbo].[user_account] ADD  DEFAULT ((0)) FOR [infor_validate]
GO
ALTER TABLE [dbo].[user_account] ADD  DEFAULT ((0)) FOR [email_validate]
GO
ALTER TABLE [dbo].[user_account] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[educationbackground]  WITH CHECK ADD  CONSTRAINT [fk_informationUser_eb] FOREIGN KEY([idinformationuser])
REFERENCES [dbo].[informationUser] ([id])
GO
ALTER TABLE [dbo].[educationbackground] CHECK CONSTRAINT [fk_informationUser_eb]
GO
ALTER TABLE [dbo].[employeeRelative]  WITH CHECK ADD  CONSTRAINT [fk_employeerelative_informationuser] FOREIGN KEY([idinformationuser])
REFERENCES [dbo].[informationUser] ([id])
GO
ALTER TABLE [dbo].[employeeRelative] CHECK CONSTRAINT [fk_employeerelative_informationuser]
GO
ALTER TABLE [dbo].[employeerelative_informationuser]  WITH CHECK ADD  CONSTRAINT [fk_employeerelativeinformationuser_employeerelative] FOREIGN KEY([idemployeerelative])
REFERENCES [dbo].[employeeRelative] ([id])
GO
ALTER TABLE [dbo].[employeerelative_informationuser] CHECK CONSTRAINT [fk_employeerelativeinformationuser_employeerelative]
GO
ALTER TABLE [dbo].[employeerelative_informationuser]  WITH CHECK ADD  CONSTRAINT [fk_employeerelativeinformationuser_informationUser] FOREIGN KEY([idinformationuser])
REFERENCES [dbo].[informationUser] ([id])
GO
ALTER TABLE [dbo].[employeerelative_informationuser] CHECK CONSTRAINT [fk_employeerelativeinformationuser_informationUser]
GO
ALTER TABLE [dbo].[forexSalary]  WITH CHECK ADD  CONSTRAINT [fk_forexsalary_forextype] FOREIGN KEY([forextypeid])
REFERENCES [dbo].[forextype] ([id])
GO
ALTER TABLE [dbo].[forexSalary] CHECK CONSTRAINT [fk_forexsalary_forextype]
GO
ALTER TABLE [dbo].[forexSalary]  WITH CHECK ADD  CONSTRAINT [fk_forexsalary_informationUserJob] FOREIGN KEY([idinformationUserJob])
REFERENCES [dbo].[informationUserJob] ([id])
GO
ALTER TABLE [dbo].[forexSalary] CHECK CONSTRAINT [fk_forexsalary_informationUserJob]
GO
ALTER TABLE [dbo].[healthCheckCertificates]  WITH CHECK ADD  CONSTRAINT [fk_informationUser_hcc] FOREIGN KEY([idinformationuser])
REFERENCES [dbo].[informationUser] ([id])
GO
ALTER TABLE [dbo].[healthCheckCertificates] CHECK CONSTRAINT [fk_informationUser_hcc]
GO
ALTER TABLE [dbo].[information_cccd]  WITH CHECK ADD  CONSTRAINT [fk_informationUser_information_cccd] FOREIGN KEY([IdInformationUser])
REFERENCES [dbo].[informationUser] ([id])
GO
ALTER TABLE [dbo].[information_cccd] CHECK CONSTRAINT [fk_informationUser_information_cccd]
GO
ALTER TABLE [dbo].[informationUser]  WITH CHECK ADD  CONSTRAINT [fk_informationuser_useraccount] FOREIGN KEY([id_useraccount])
REFERENCES [dbo].[user_account] ([id])
GO
ALTER TABLE [dbo].[informationUser] CHECK CONSTRAINT [fk_informationuser_useraccount]
GO
ALTER TABLE [dbo].[informationUserJob]  WITH CHECK ADD  CONSTRAINT [fk_informationuserjob_informationuser] FOREIGN KEY([idinformationuser])
REFERENCES [dbo].[informationUser] ([id])
GO
ALTER TABLE [dbo].[informationUserJob] CHECK CONSTRAINT [fk_informationuserjob_informationuser]
GO
ALTER TABLE [dbo].[laborContract]  WITH CHECK ADD  CONSTRAINT [fk_laborcontract_informationuserjob] FOREIGN KEY([idinformationUserJob])
REFERENCES [dbo].[informationUserJob] ([id])
GO
ALTER TABLE [dbo].[laborContract] CHECK CONSTRAINT [fk_laborcontract_informationuserjob]
GO
ALTER TABLE [dbo].[latestEmployment]  WITH CHECK ADD  CONSTRAINT [fk_latestemployment_informationuser] FOREIGN KEY([idinformationuser])
REFERENCES [dbo].[informationUser] ([id])
GO
ALTER TABLE [dbo].[latestEmployment] CHECK CONSTRAINT [fk_latestemployment_informationuser]
GO
ALTER TABLE [dbo].[qualification]  WITH CHECK ADD  CONSTRAINT [fk_informationUser_q] FOREIGN KEY([idinformationuser])
REFERENCES [dbo].[informationUser] ([id])
GO
ALTER TABLE [dbo].[qualification] CHECK CONSTRAINT [fk_informationUser_q]
GO
ALTER TABLE [dbo].[user_account]  WITH CHECK ADD  CONSTRAINT [fk_useraccount_roleuser] FOREIGN KEY([role_id])
REFERENCES [dbo].[role_user] ([id])
GO
ALTER TABLE [dbo].[user_account] CHECK CONSTRAINT [fk_useraccount_roleuser]
GO
/****** Object:  StoredProcedure [dbo].[CountEducationBackground]    Script Date: 31/01/2024 11:51:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CountEducationBackground]
		@IdInformationUser INT,
		@Count INT OUTPUT
	AS
	BEGIN
		SELECT @Count = COUNT(*)
		FROM educationbackground
		WHERE idinformationuser = @IdInformationUser;
	END
GO
/****** Object:  StoredProcedure [dbo].[CountHealthCheckCertificates]    Script Date: 31/01/2024 11:51:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CountHealthCheckCertificates]
		@IdInformationUser INT,
		@Count INT OUTPUT
	AS
	BEGIN
		SELECT @Count = COUNT(*)
		FROM healthCheckCertificates
		WHERE idinformationuser = @IdInformationUser;
	END
GO
/****** Object:  StoredProcedure [dbo].[CountQualification]    Script Date: 31/01/2024 11:51:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CountQualification]
		@IdInformationUser INT,
		@Count INT OUTPUT
	AS
	BEGIN
		SELECT @Count = COUNT(*)
		FROM qualification
		WHERE idinformationuser = @IdInformationUser;
	END
GO
/****** Object:  StoredProcedure [dbo].[deleteRole]    Script Date: 31/01/2024 11:51:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[deleteRole] @role_id int 
as
begin
update user_account set role_id=NULL where role_id=@role_id
delete role_user where id=@role_id
end
GO
/****** Object:  StoredProcedure [dbo].[login_user]    Script Date: 31/01/2024 11:51:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[login_user] @email varchar(50),@password varchar(50),@id int output
as
begin
if not exists(select * from user_account where email=@email and password=@password)
begin
set @id=0
end
else
begin
select @id=id from user_account where email=@email and password=@password
end
end
GO
/****** Object:  StoredProcedure [dbo].[pr_employeerelative_informationuser]    Script Date: 31/01/2024 11:51:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pr_employeerelative_informationuser] @idinformationuser int,@idemployeerelative int, @type varchar(50),@result int out
as
begin
	if not exists(select * from employeerelative_informationuser where idemployeerelative=@idemployeerelative and idinformationuser=@idinformationuser) 
	begin
		insert into employeerelative_informationuser(idemployeerelative,idinformationuser) values(@idemployeerelative,@idinformationuser)
	end
	if @type='Privateinsurance' 
		begin
			UPDATE employeerelative_informationuser SET col_Privateinsurance=1 where idemployeerelative=@idemployeerelative and idinformationuser=@idinformationuser
		end
	else if @type='Additionalprivateinsurance'
	begin
		UPDATE employeerelative_informationuser SET col_Additionalprivateinsurance=1 where idemployeerelative=@idemployeerelative and idinformationuser=@idinformationuser
	end
	else if @type='Dependant'
	begin
		UPDATE employeerelative_informationuser SET col_Dependant=1 where idemployeerelative=@idemployeerelative and idinformationuser=@idinformationuser
	end
	else if @type='Emergencycontact'
	begin
		UPDATE employeerelative_informationuser SET col_Emergencycontact=1 where idemployeerelative=@idemployeerelative and idinformationuser=@idinformationuser
	end
	else
	begin
		UPDATE employeerelative_informationuser SET col_Beneficiarycontact=1 where idemployeerelative=@idemployeerelative and idinformationuser=@idinformationuser
	end
end
GO
/****** Object:  StoredProcedure [dbo].[register_user]    Script Date: 31/01/2024 11:51:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[register_user] @email varchar(50),@password varchar(50),@created_date varchar(50),@authenticated_by varchar(50),@secret_token varchar(100),@id int output          
as          
begin          
if exists(select * from user_account where email=@email)          
begin          
set @id=0          
end          
else          
begin          
insert into user_account values(null,@email,@password,@created_date,@authenticated_by,@secret_token,0,0,0,6,1)          
SET @id = SCOPE_IDENTITY();          
end          
end
GO
