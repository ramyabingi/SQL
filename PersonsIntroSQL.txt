CREATE DATABASE [PersonsInfo]
GO

USE [PersonsInfo]
GO
CREATE TABLE [dbo].[Companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](50) NULL,
	[Code] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[CompanyAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NULL,
	[FlotNo] [varchar](20) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[CompanyContacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyAddressId] [int] NULL,
	[MobileNumber] [bigint] NULL,
	[IsPrimary] [bit] NULL,
	[OrderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[CompanyEmails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyAddressId] [int] NULL,
	[Email] [varchar](max) NULL,
	[IsPrimary] [bit] NULL,
	[OrderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NULL,
	[Code] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[CoutryStates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Designations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DesignationName] [varchar](100) NULL,
	[Code] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[Family](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[FirstName] [varchar](20) NULL,
	[LastName] [varchar](20) NULL,
	[RelationTypeId] [int] NULL,
	[IsGuardian] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FamilyContacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FamilyId] [int] NULL,
	[MobileNumber] [bigint] NULL,
	[IsPrimary] [bit] NULL,
	[OrderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FamilyEducationDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FamilyId] [int] NULL,
	[QualificationtypeId] [int] NULL,
	[YearOfPassout] [int] NULL,
	[StartYear] [int] NULL,
	[EndYear] [int] NULL,
	[InstitutionId] [int] NULL,
	[Percentage] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FamilyEmails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InstitutionAddressId] [int] NULL,
	[Email] [bigint] NULL,
	[IsPrimary] [bit] NULL,
	[OrderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GenderName] [varchar](50) NULL,
	[Code] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[InstitutionAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InstitutionId] [int] NULL,
	[FlotNo] [varchar](20) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
	[MediumId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[InstitutionContacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InstitutionAddressId] [int] NULL,
	[MobileNumber] [bigint] NULL,
	[IsPrimary] [bit] NULL,
	[OrderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[InstitutionEmails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InstitutionAddressId] [int] NULL,
	[Email] [bigint] NULL,
	[IsPrimary] [bit] NULL,
	[OrderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Institutions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InstitutionName] [varchar](50) NULL,
	[QualificationtypeId] [int] NULL,
	[MediumId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[MarritalStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](50) NULL,
	[Code] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[Mediums](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Medium] [varchar](20) NULL,
	[Code] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Qualificationtypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QualificationName] [varchar](30) NULL,
	[Code] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[RelationTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RelationName] [varchar](40) NULL,
	[Code] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Skills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [varchar](100) NULL,
	[Code] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[States](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](50) NULL,
	[Code] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[UserAddressDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FlotNo] [varchar](20) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
	[UserId] [int] NULL,
	[IsPermanent] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[UserCompany](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[CompanyId] [int] NULL,
	[YearOfPassout] [int] NULL,
	[StartYear] [int] NULL,
	[EndYear] [int] NULL,
	[Salary] [int] NULL,
	[Percentage] [int] NULL,
	[DesignationId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[UserContacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[MobileNumber] [bigint] NULL,
	[IsPrimary] [bit] NULL,
	[OrderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[UserEducationDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[QualificationtypeId] [int] NULL,
	[YearOfPassout] [int] NULL,
	[StartYear] [int] NULL,
	[EndYear] [int] NULL,
	[InstitutionId] [int] NULL,
	[Percentage] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[UserEmails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Email] [varchar](max) NULL,
	[IsPrimary] [bit] NULL,
	[OrderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](60) NULL,
	[LastName] [varchar](60) NULL,
	[Dob] [date] NULL,
	[GenderId] [int] NULL,
	[MarritalStatusId] [int] NULL,
	[MobileNumber] [bigint] NULL,
	[AadharNumber] [bigint] NULL,
	[VoterId] [varchar](30) NULL,
	[PanCardNumber] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[UserSkills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SkillId] [int] NULL,
	[IsPrimary] [bit] NULL,
	[UserId] [int] NULL,
	[OrderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



ALTER TABLE [dbo].[CompanyAddress]  WITH CHECK ADD FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
GO

ALTER TABLE [dbo].[CompanyAddress]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO

ALTER TABLE [dbo].[CompanyAddress]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([Id])
GO

ALTER TABLE [dbo].[CompanyContacts]  WITH CHECK ADD FOREIGN KEY([CompanyAddressId])
REFERENCES [dbo].[CompanyAddress] ([Id])
GO

ALTER TABLE [dbo].[CompanyEmails]  WITH CHECK ADD FOREIGN KEY([CompanyAddressId])
REFERENCES [dbo].[CompanyAddress] ([Id])
GO


ALTER TABLE [dbo].[CoutryStates]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO

ALTER TABLE [dbo].[CoutryStates]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([Id])
GO

ALTER TABLE [dbo].[Family]  WITH CHECK ADD FOREIGN KEY([RelationTypeId])
REFERENCES [dbo].[RelationTypes] ([Id])
GO

ALTER TABLE [dbo].[Family]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO

ALTER TABLE [dbo].[FamilyContacts]  WITH CHECK ADD FOREIGN KEY([FamilyId])
REFERENCES [dbo].[Family] ([Id])
GO

ALTER TABLE [dbo].[FamilyEducationDetails]  WITH CHECK ADD FOREIGN KEY([FamilyId])
REFERENCES [dbo].[Family] ([Id])
GO

ALTER TABLE [dbo].[FamilyEducationDetails]  WITH CHECK ADD FOREIGN KEY([InstitutionId])
REFERENCES [dbo].[InstitutionAddress] ([Id])
GO

ALTER TABLE [dbo].[FamilyEducationDetails]  WITH CHECK ADD FOREIGN KEY([QualificationtypeId])
REFERENCES [dbo].[Qualificationtypes] ([Id])
GO
ALTER TABLE [dbo].[FamilyEmails]  WITH CHECK ADD FOREIGN KEY([InstitutionAddressId])
REFERENCES [dbo].[InstitutionAddress] ([Id])
GO
ALTER TABLE [dbo].[InstitutionAddress]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO

ALTER TABLE [dbo].[InstitutionAddress]  WITH CHECK ADD FOREIGN KEY([InstitutionId])
REFERENCES [dbo].[Institutions] ([Id])
GO

ALTER TABLE [dbo].[InstitutionAddress]  WITH CHECK ADD FOREIGN KEY([MediumId])
REFERENCES [dbo].[Mediums] ([Id])
GO

ALTER TABLE [dbo].[InstitutionAddress]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[Institutions] ([Id])
GO

ALTER TABLE [dbo].[InstitutionContacts]  WITH CHECK ADD FOREIGN KEY([InstitutionAddressId])
REFERENCES [dbo].[InstitutionAddress] ([Id])
GO
ALTER TABLE [dbo].[InstitutionEmails]  WITH CHECK ADD FOREIGN KEY([InstitutionAddressId])
REFERENCES [dbo].[InstitutionAddress] ([Id])
GO
ALTER TABLE [dbo].[Institutions]  WITH CHECK ADD FOREIGN KEY([MediumId])
REFERENCES [dbo].[Mediums] ([Id])
GO

ALTER TABLE [dbo].[Institutions]  WITH CHECK ADD FOREIGN KEY([QualificationtypeId])
REFERENCES [dbo].[Qualificationtypes] ([Id])
GO


ALTER TABLE [dbo].[UserAddressDetails]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO

ALTER TABLE [dbo].[UserAddressDetails]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([Id])
GO

ALTER TABLE [dbo].[UserAddressDetails]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO


ALTER TABLE [dbo].[UserCompany]  WITH CHECK ADD FOREIGN KEY([CompanyId])
REFERENCES [dbo].[CompanyAddress] ([Id])
GO

ALTER TABLE [dbo].[UserCompany]  WITH CHECK ADD FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designations] ([Id])
GO

ALTER TABLE [dbo].[UserCompany]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO


ALTER TABLE [dbo].[UserContacts]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserEducationDetails]  WITH CHECK ADD FOREIGN KEY([QualificationtypeId])
REFERENCES [dbo].[Qualificationtypes] ([Id])
GO

ALTER TABLE [dbo].[UserEducationDetails]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO

ALTER TABLE [dbo].[UserEmails]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO

ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO

ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([MarritalStatusId])
REFERENCES [dbo].[MarritalStatus] ([Id])
GO

ALTER TABLE [dbo].[UserSkills]  WITH CHECK ADD FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([Id])
GO

ALTER TABLE [dbo].[UserSkills]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO





