USE [master]
GO
/****** Object:  Database [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF]    Script Date: 21.04.2017 18:56:40 ******/
CREATE DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HRDataBase', FILENAME = N'C:\intership\HRui\HrApp\App_Data\HRDataBase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HRDataBase_log', FILENAME = N'C:\intership\HRui\HrApp\App_Data\HRDataBase_log.ldf' , SIZE = 2304KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET  ENABLE_BROKER 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET DELAYED_DURABILITY = DISABLED 
GO
USE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Education](
	[EducationId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[SpecialityName] [varchar](100) NULL,
	[EducationalInstitutionName] [varchar](100) NULL,
	[StartDate] [date] NULL,
	[FinishDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[EducationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Interview]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Interview](
	[InterviewId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NULL,
	[InterviewDate] [date] NULL,
	[Point] [int] NULL,
	[Comment] [varchar](1000) NULL,
	[FileResume] [varchar](200) NULL,
	[FileTest] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[InterviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Job]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Job](
	[JobId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NULL,
	[JobName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Knowledge_of_language]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Knowledge_of_language](
	[LanguageId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[TypeLanguageId] [int] NOT NULL,
	[LanguageLevelId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Language_level]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Language_level](
	[LanguageLevelId] [int] IDENTITY(1,1) NOT NULL,
	[LanguageLevelName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[LanguageLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Birthday] [date] NULL,
	[City] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[Salary] [int] NULL,
	[WorkExpireance] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PersonTypeJob]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonTypeJob](
	[PersonTypeJobId] [int] IDENTITY(1,1) NOT NULL,
	[TypeJobId] [int] NULL,
	[PersonId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonTypeJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProfessionalSkill]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProfessionalSkill](
	[ProfessionalSkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [varchar](100) NULL,
	[PersonId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProfessionalSkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TypeJob]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TypeJob](
	[TypeJobId] [int] IDENTITY(1,1) NOT NULL,
	[TypeJobName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TypeLanguage]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TypeLanguage](
	[TypeLanguageId] [int] IDENTITY(1,1) NOT NULL,
	[LanguageName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Work_experience]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Work_experience](
	[WorkExperienceId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NOT NULL,
	[PositionName] [varchar](100) NULL,
	[CompanyName] [varchar](100) NULL,
	[StartDate] [date] NULL,
	[FinishDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Education] ON 

INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (1, 12, N'justo in hac habitasse platea', N'dui luctus', CAST(N'2017-03-02' AS Date), CAST(N'2016-11-15' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (97, 6, N'nunc proin at turpis a', N'cras non', CAST(N'2016-04-30' AS Date), CAST(N'2017-02-28' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (98, 7, N'lorem id ligula', N'ut erat id', CAST(N'2016-04-07' AS Date), CAST(N'2016-10-29' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (99, 2, N'sapien placerat ante', N'volutpat quam pede lobortis', CAST(N'2016-11-06' AS Date), CAST(N'2017-01-29' AS Date))
INSERT [dbo].[Education] ([EducationId], [PersonId], [SpecialityName], [EducationalInstitutionName], [StartDate], [FinishDate]) VALUES (100, 6, N'at vulputate vitae nisl', N'lorem id ligula suspendisse ornare', CAST(N'2016-11-21' AS Date), CAST(N'2016-08-09' AS Date))
SET IDENTITY_INSERT [dbo].[Education] OFF
SET IDENTITY_INSERT [dbo].[Interview] ON 

INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (1, 18, CAST(N'2016-04-16' AS Date), 41, N'amet erat nulla tempus', N'PedeAc.png', N'EtiamVel.txt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (3, 20, CAST(N'2017-03-23' AS Date), 98, N'praesent id massa id nisl venenatis lacinia aenean', N'Odio.avi', N'PedeMorbiPorttitor.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (4, 20, CAST(N'2016-10-31' AS Date), 26, N'tempor turpis nec euismod', N'UtVolutpat.xls', N'EgetRutrumAt.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (5, 9, CAST(N'2016-08-23' AS Date), 43, N'amet eros suspendisse accumsan tortor quis turpis', N'Pulvinar.xls', N'Diam.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (6, 13, CAST(N'2016-11-06' AS Date), 47, N'turpis a pede posuere', N'Suscipit.jpeg', N'PosuereCubilia.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (8, 9, CAST(N'2016-09-07' AS Date), 28, N'eu sapien cursus vestibulum proin eu', N'Ac.jpeg', N'SemDuisAliquam.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (9, 5, CAST(N'2016-10-28' AS Date), 31, N'ligula in lacus curabitur at ipsum ac', N'VelitEu.avi', N'Posuere.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (10, 8, CAST(N'2016-09-19' AS Date), 93, N'nulla eget eros elementum', N'EratVestibulumSed.xls', N'MaecenasUt.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (11, 11, CAST(N'2017-02-21' AS Date), 92, N'accumsan tortor quis turpis sed ante', N'ErosVestibulum.tiff', N'NibhIn.doc')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (12, 15, CAST(N'2016-10-06' AS Date), 11, N'integer non velit donec diam neque vestibulum', N'FaucibusOrciLuctus.avi', N'Quis.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (13, 13, CAST(N'2017-03-05' AS Date), 79, N'ante vestibulum ante ipsum primis', N'IntegerPede.ppt', N'Est.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (14, 6, CAST(N'2016-12-03' AS Date), 14, N'duis bibendum morbi non quam nec dui luctus', N'Aliquam.ppt', N'AcEnim.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (15, 10, CAST(N'2016-06-28' AS Date), 27, N'sit amet sapien dignissim vestibulum vestibulum', N'AugueLuctus.xls', N'SitAmet.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (16, 9, CAST(N'2016-04-23' AS Date), 49, N'convallis eget eleifend luctus ultricies eu nibh quisque', N'NequeVestibulum.pdf', N'MiIntegerAc.pdf')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (17, 10, CAST(N'2016-07-27' AS Date), 44, N'duis mattis egestas metus aenean fermentum donec ut', N'EnimLeo.ppt', N'Amet.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (18, 11, CAST(N'2016-06-07' AS Date), 5, N'fermentum justo nec condimentum neque sapien', N'VestibulumAnteIpsum.mp3', N'NonVelitDonec.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (19, 7, CAST(N'2016-07-26' AS Date), 71, N'ante vestibulum ante ipsum', N'Congue.avi', N'Sed.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (20, 9, CAST(N'2016-08-10' AS Date), 59, N'maecenas ut massa quis augue luctus tincidunt', N'EtiamPretium.ppt', N'Nulla.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (21, 6, CAST(N'2016-06-22' AS Date), 27, N'fusce posuere felis sed lacus', N'SedMagna.doc', N'AeneanLectus.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (22, 20, CAST(N'2016-07-14' AS Date), 86, N'mi integer ac neque duis bibendum morbi', N'IntegerANibh.mp3', N'Nisi.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (23, 16, CAST(N'2016-12-18' AS Date), 51, N'faucibus orci luctus et', N'SuscipitNulla.xls', N'CubiliaCuraeMauris.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (24, 18, CAST(N'2016-10-22' AS Date), 51, N'tristique in tempus sit amet', N'DapibusAugue.xls', N'PulvinarSed.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (25, 15, CAST(N'2016-11-01' AS Date), 99, N'vestibulum rutrum rutrum neque aenean auctor', N'UltricesPosuere.tiff', N'SitAmet.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (26, 4, CAST(N'2017-01-18' AS Date), 91, N'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', N'DisParturient.pdf', N'Faucibus.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (27, 15, CAST(N'2017-01-31' AS Date), 69, N'sociis natoque penatibus et magnis dis parturient montes', N'NullaMollis.mp3', N'Id.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (28, 5, CAST(N'2016-11-15' AS Date), 57, N'neque libero convallis eget', N'NonummyMaecenas.ppt', N'FeugiatEt.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (29, 12, CAST(N'2016-12-23' AS Date), 16, N'porta volutpat erat quisque erat eros viverra', N'ConvallisEget.xls', N'Velit.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (30, 15, CAST(N'2016-09-04' AS Date), 66, N'a feugiat et eros vestibulum ac', N'Rutrum.ppt', N'Est.gif')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (32, 6, CAST(N'2016-07-30' AS Date), 25, N'pede malesuada in imperdiet', N'Nibh.mpeg', N'AmetNunc.pdf')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (33, 2, CAST(N'2016-10-22' AS Date), 53, N'purus sit amet nulla quisque arcu libero rutrum', N'PlateaDictumst.mp3', N'LeoOdio.mpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (34, 6, CAST(N'2016-09-19' AS Date), 94, N'ut at dolor quis odio consequat varius integer', N'Justo.gif', N'DonecPharetra.pdf')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (35, 13, CAST(N'2016-04-20' AS Date), 23, N'magna ac consequat metus sapien ut nunc', N'HendreritAtVulputate.tiff', N'SuscipitA.mov')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (36, 4, CAST(N'2016-09-28' AS Date), 59, N'tincidunt in leo maecenas pulvinar lobortis est', N'MattisEgestas.png', N'SodalesSed.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (37, 13, CAST(N'2016-10-27' AS Date), 54, N'cum sociis natoque penatibus et magnis dis', N'IdConsequat.png', N'InFelis.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (38, 13, CAST(N'2016-12-26' AS Date), 94, N'tempus vel pede morbi porttitor', N'NisiVenenatis.ppt', N'SitAmetNulla.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (39, 16, CAST(N'2016-08-03' AS Date), 57, N'aliquet pulvinar sed nisl nunc', N'LobortisEstPhasellus.avi', N'Molestie.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (40, 9, CAST(N'2016-07-05' AS Date), 22, N'dui vel nisl duis ac nibh fusce lacus', N'Ornare.ppt', N'Nulla.mov')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (41, 2, CAST(N'2016-07-13' AS Date), 100, N'sollicitudin ut suscipit a feugiat et eros vestibulum', N'Id.avi', N'UtMassaQuis.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (42, 5, CAST(N'2016-10-20' AS Date), 53, N'nisi eu orci mauris lacinia sapien', N'OrnareConsequat.xls', N'VulputateUt.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (43, 5, CAST(N'2016-08-06' AS Date), 5, N'porttitor id consequat in consequat ut nulla sed', N'Libero.mp3', N'PosuereCubiliaCurae.mpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (44, 10, CAST(N'2016-08-30' AS Date), 33, N'dapibus dolor vel est', N'InterdumMaurisUllamcorper.mp3', N'VestibulumAliquetUltrices.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (45, 20, CAST(N'2016-10-16' AS Date), 96, N'in est risus auctor sed tristique in tempus', N'ViverraEgetCongue.xls', N'EuEst.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (46, 20, CAST(N'2016-06-10' AS Date), 34, N'vulputate luctus cum sociis natoque penatibus et magnis', N'FaucibusOrciLuctus.doc', N'ProinEuMi.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (47, 6, CAST(N'2016-12-26' AS Date), 43, N'eget eros elementum pellentesque', N'Ut.jpeg', N'Vitae.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (48, 18, CAST(N'2017-03-23' AS Date), 76, N'odio porttitor id consequat in', N'VestibulumAnteIpsum.png', N'BlanditUltrices.pdf')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (49, 6, CAST(N'2016-10-11' AS Date), 4, N'augue vestibulum rutrum rutrum', N'AugueVestibulum.avi', N'Lobortis.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (50, 5, CAST(N'2016-08-20' AS Date), 14, N'morbi vel lectus in', N'Vulputate.avi', N'ParturientMontesNascetur.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (51, 6, CAST(N'2017-01-18' AS Date), 26, N'in libero ut massa volutpat', N'CrasNon.mp3', N'EleifendLuctus.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (52, 8, CAST(N'2017-03-22' AS Date), 33, N'ac nibh fusce lacus', N'In.tiff', N'Sagittis.gif')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (53, 15, CAST(N'2016-11-28' AS Date), 73, N'ac leo pellentesque ultrices mattis', N'Odio.avi', N'UltricesAliquet.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (54, 4, CAST(N'2017-01-25' AS Date), 72, N'non ligula pellentesque ultrices phasellus id', N'RisusPraesent.ppt', N'UtMassa.pdf')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (55, 5, CAST(N'2016-12-04' AS Date), 89, N'in leo maecenas pulvinar lobortis est phasellus', N'OdioDonec.xls', N'Curae.txt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (56, 15, CAST(N'2016-09-21' AS Date), 42, N'nam dui proin leo odio porttitor', N'SitAmetTurpis.txt', N'SitAmet.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (57, 2, CAST(N'2017-03-28' AS Date), 6, N'donec posuere metus vitae ipsum aliquam non mauris', N'AtDiamNam.ppt', N'Aliquet.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (58, 19, CAST(N'2017-03-24' AS Date), 23, N'quis orci nullam molestie nibh', N'Vivamus.mpeg', N'Nascetur.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (59, 2, CAST(N'2016-08-19' AS Date), 51, N'nibh in quis justo maecenas rhoncus aliquam lacus', N'AmetSem.avi', N'Ligula.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (60, 16, CAST(N'2016-09-11' AS Date), 46, N'est donec odio justo', N'AliquamSitAmet.xls', N'IntegerAc.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (61, 10, CAST(N'2016-04-06' AS Date), 91, N'libero quis orci nullam molestie nibh in lectus', N'Dapibus.xls', N'Potenti.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (63, 12, CAST(N'2016-11-13' AS Date), 93, N'integer ac leo pellentesque ultrices mattis', N'PenatibusEt.xls', N'EgetTempusVel.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (64, 4, CAST(N'2017-02-07' AS Date), 36, N'id consequat in consequat ut nulla', N'Lorem.txt', N'At.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (65, 13, CAST(N'2016-09-25' AS Date), 71, N'est congue elementum in hac habitasse platea', N'DictumstMorbiVestibulum.pdf', N'NuncDonec.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (66, 2, CAST(N'2016-10-06' AS Date), 12, N'suspendisse potenti nullam porttitor lacus', N'CuraeMaurisViverra.pdf', N'DiamCras.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (67, 17, CAST(N'2016-08-14' AS Date), 71, N'et ultrices posuere cubilia curae mauris', N'Praesent.avi', N'Fusce.jpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (68, 13, CAST(N'2016-04-22' AS Date), 33, N'massa quis augue luctus tincidunt nulla mollis', N'CrasMiPede.ppt', N'Ultrices.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (69, 10, CAST(N'2016-08-07' AS Date), 46, N'tempor turpis nec euismod scelerisque quam turpis adipiscing', N'LeoOdio.avi', N'Curabitur.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (70, 16, CAST(N'2016-11-22' AS Date), 5, N'ut at dolor quis odio consequat varius integer', N'AcTellus.pdf', N'CommodoVulputateJusto.pdf')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (72, 4, CAST(N'2016-09-17' AS Date), 46, N'amet sapien dignissim vestibulum vestibulum ante', N'NullaTellus.ppt', N'AcEnimIn.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (73, 15, CAST(N'2016-05-16' AS Date), 46, N'iaculis diam erat fermentum justo nec condimentum neque', N'Morbi.mp3', N'AmetJusto.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (74, 6, CAST(N'2016-12-19' AS Date), 5, N'enim blandit mi in porttitor pede', N'DonecDiamNeque.avi', N'AuctorGravidaSem.jpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (75, 11, CAST(N'2017-01-21' AS Date), 50, N'in hac habitasse platea dictumst aliquam augue quam', N'NullaUt.mov', N'Pede.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (76, 20, CAST(N'2016-11-28' AS Date), 17, N'maecenas tristique est et tempus semper est quam', N'LacusAt.ppt', N'UltricesPosuere.jpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (77, 20, CAST(N'2016-04-12' AS Date), 54, N'adipiscing elit proin interdum mauris non', N'Risus.png', N'Convallis.txt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (78, 15, CAST(N'2016-04-29' AS Date), 4, N'pellentesque viverra pede ac diam', N'In.ppt', N'MagnaVulputateLuctus.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (79, 14, CAST(N'2016-07-22' AS Date), 81, N'rhoncus aliquam lacus morbi quis tortor', N'NonPretium.avi', N'Donec.jpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (80, 19, CAST(N'2016-12-03' AS Date), 7, N'sit amet eros suspendisse accumsan tortor quis turpis', N'PrimisInFaucibus.avi', N'ElementumNullamVarius.png')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (81, 2, CAST(N'2017-01-20' AS Date), 21, N'pede lobortis ligula sit amet', N'InTempus.mp3', N'Consequat.doc')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (82, 9, CAST(N'2016-10-19' AS Date), 12, N'fermentum donec ut mauris', N'PosuereCubiliaCurae.mp3', N'Ac.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (83, 5, CAST(N'2016-08-19' AS Date), 10, N'id lobortis convallis tortor risus dapibus augue', N'EstDonecOdio.xls', N'Elit.doc')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (84, 16, CAST(N'2016-07-01' AS Date), 4, N'libero convallis eget eleifend', N'Massa.png', N'NuncViverra.ppt')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (85, 15, CAST(N'2016-07-23' AS Date), 15, N'sed nisl nunc rhoncus dui', N'AIpsum.mp3', N'InHacHabitasse.gif')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (86, 13, CAST(N'2017-03-22' AS Date), 40, N'magna at nunc commodo placerat', N'Nulla.avi', N'Eget.gif')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (87, 18, CAST(N'2016-05-10' AS Date), 3, N'eros vestibulum ac est', N'Turpis.mp3', N'OdioDonecVitae.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (88, 12, CAST(N'2017-03-09' AS Date), 12, N'montes nascetur ridiculus mus etiam vel augue vestibulum', N'Vitae.avi', N'At.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (90, 16, CAST(N'2016-04-24' AS Date), 84, N'eu felis fusce posuere felis sed lacus morbi', N'PedeUllamcorper.txt', N'Rhoncus.mp3')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (91, 5, CAST(N'2017-02-02' AS Date), 23, N'curabitur gravida nisi at', N'NullamOrciPede.avi', N'PellentesqueQuisque.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (92, 16, CAST(N'2016-10-02' AS Date), 44, N'eu magna vulputate luctus', N'Id.ppt', N'NullaSed.mpeg')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (93, 15, CAST(N'2017-03-01' AS Date), 20, N'amet consectetuer adipiscing elit proin interdum mauris', N'MaurisEnimLeo.xls', N'VestibulumVestibulumAnte.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (94, 18, CAST(N'2016-06-11' AS Date), 81, N'tortor id nulla ultrices', N'Ante.mp3', N'InSapienIaculis.tiff')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (95, 9, CAST(N'2016-05-04' AS Date), 53, N'hac habitasse platea dictumst maecenas ut massa', N'Est.mp3', N'LacusCurabiturAt.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (96, 18, CAST(N'2016-12-21' AS Date), 46, N'sit amet lobortis sapien', N'EratNulla.jpeg', N'TinciduntLacusAt.xls')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (97, 10, CAST(N'2017-01-11' AS Date), 35, N'dui luctus rutrum nulla', N'Ultrices.jpeg', N'AugueQuam.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (98, 4, CAST(N'2016-06-14' AS Date), 5, N'mi nulla ac enim in tempor turpis nec', N'PellentesqueAtNulla.txt', N'MetusArcuAdipiscing.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (99, 15, CAST(N'2016-09-08' AS Date), 36, N'convallis tortor risus dapibus', N'HacHabitassePlatea.avi', N'MaurisVulputate.avi')
INSERT [dbo].[Interview] ([InterviewId], [PersonId], [InterviewDate], [Point], [Comment], [FileResume], [FileTest]) VALUES (100, 11, CAST(N'2017-02-21' AS Date), 6, N'velit vivamus vel nulla eget eros elementum pellentesque', N'Accumsan.mp3', N'JustoNecCondimentum.png')
SET IDENTITY_INSERT [dbo].[Interview] OFF
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (1, 10, N'in')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (2, 10, N'curae duis')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (3, 2, N'sodales scelerisque')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (4, 8, N'vitae mattis')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (5, 15, N'elit')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (6, 13, N'at diam')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (7, 15, N'donec')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (8, 17, N'semper')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (9, 20, N'sagittis nam')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (10, 13, N'justo maecenas')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (11, 6, N'nullam')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (12, 11, N'tincidunt')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (13, 4, N'ante nulla')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (14, 13, N'curae nulla')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (15, 9, N'eu')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (16, 19, N'eleifend pede')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (17, 15, N'ultrices libero')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (18, 7, N'maecenas')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (19, 2, N'enim sit')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (21, 6, N'id')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (22, 15, N'luctus rutrum')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (23, 20, N'sagittis dui')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (24, 14, N'scelerisque quam')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (25, 16, N'viverra')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (26, 12, N'tempus semper')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (27, 10, N'consectetuer')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (28, 15, N'etiam')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (29, 17, N'quam a')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (30, 8, N'non quam')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (31, 12, N'platea')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (32, 12, N'interdum mauris')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (33, 9, N'urna pretium')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (34, 6, N'nunc')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (35, 2, N'est donec')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (36, 14, N'augue')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (37, 8, N'porttitor')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (38, 17, N'nisi')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (39, 11, N'vel')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (41, 4, N'elementum')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (42, 19, N'maecenas tristique')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (43, 2, N'suspendisse potenti')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (44, 17, N'mattis pulvinar')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (45, 14, N'amet')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (46, 14, N'suspendisse')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (47, 6, N'tincidunt')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (48, 6, N'lorem integer')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (49, 18, N'ante vestibulum')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (50, 19, N'velit')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (51, 15, N'adipiscing')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (52, 2, N'lorem')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (53, 2, N'ipsum primis')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (54, 17, N'etiam')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (55, 18, N'vehicula condimentum')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (56, 20, N'at velit')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (58, 8, N'duis at')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (59, 10, N'in')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (60, 8, N'volutpat')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (61, 15, N'amet nulla')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (62, 7, N'dolor quis')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (63, 6, N'quisque')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (64, 4, N'amet turpis')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (65, 15, N'ultrices libero')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (66, 8, N'sed ante')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (67, 17, N'augue')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (68, 16, N'semper')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (69, 8, N'lacus at')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (70, 4, N'nec sem')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (71, 9, N'suscipit a')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (73, 19, N'ut erat')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (74, 10, N'dolor')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (75, 9, N'justo')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (76, 16, N'interdum')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (77, 4, N'quam sollicitudin')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (78, 17, N'pretium')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (79, 12, N'natoque penatibus')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (80, 15, N'erat vestibulum')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (81, 13, N'amet')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (82, 19, N'quisque erat')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (83, 8, N'in est')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (84, 4, N'id')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (85, 14, N'quis turpis')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (86, 20, N'mattis pulvinar')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (87, 12, N'aliquam')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (88, 20, N'hac')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (89, 10, N'vel')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (90, 12, N'dictumst')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (91, 11, N'neque')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (92, 2, N'vivamus tortor')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (93, 12, N'viverra')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (94, 4, N'enim')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (95, 2, N'nam dui')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (96, 19, N'faucibus')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (98, 8, N'mauris eget')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (99, 8, N'nonummy')
INSERT [dbo].[Job] ([JobId], [PersonId], [JobName]) VALUES (100, 15, N'metus')
SET IDENTITY_INSERT [dbo].[Job] OFF
SET IDENTITY_INSERT [dbo].[Knowledge_of_language] ON 

INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (1, 4, 3, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (2, 16, 2, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (3, 11, 2, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (4, 11, 4, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (5, 14, 1, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (6, 12, 2, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (7, 14, 4, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (8, 8, 1, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (9, 9, 4, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (10, 8, 1, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (11, 9, 4, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (12, 8, 3, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (13, 4, 1, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (14, 11, 3, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (16, 10, 3, 5)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (17, 7, 1, 4)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (18, 11, 4, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (19, 12, 2, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (20, 7, 3, 4)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (21, 13, 4, 5)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (23, 16, 2, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (24, 11, 1, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (25, 15, 2, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (27, 7, 2, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (28, 13, 1, 4)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (29, 20, 2, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (30, 9, 4, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (31, 16, 4, 5)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (32, 6, 2, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (33, 11, 2, 5)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (34, 18, 2, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (35, 16, 4, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (36, 4, 3, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (37, 14, 4, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (38, 20, 4, 4)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (39, 15, 1, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (40, 16, 3, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (41, 12, 2, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (43, 18, 1, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (44, 14, 1, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (45, 8, 1, 5)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (46, 2, 1, 4)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (47, 11, 1, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (48, 9, 2, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (49, 18, 2, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (50, 6, 4, 4)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (52, 11, 1, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (53, 15, 1, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (54, 16, 1, 4)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (56, 17, 3, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (57, 4, 4, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (58, 11, 2, 5)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (59, 19, 4, 5)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (60, 5, 1, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (61, 12, 2, 4)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (62, 13, 3, 5)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (63, 2, 2, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (64, 15, 4, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (65, 9, 1, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (67, 11, 2, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (68, 20, 3, 5)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (69, 9, 4, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (70, 16, 2, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (71, 4, 4, 5)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (72, 10, 1, 5)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (73, 16, 1, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (74, 18, 4, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (75, 16, 2, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (77, 10, 4, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (78, 19, 2, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (80, 18, 1, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (81, 17, 2, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (82, 17, 3, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (83, 19, 3, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (84, 7, 4, 4)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (85, 2, 2, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (86, 9, 2, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (87, 2, 4, 5)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (88, 20, 1, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (89, 18, 2, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (90, 4, 3, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (91, 8, 2, 6)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (92, 4, 3, 3)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (93, 7, 3, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (94, 7, 2, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (95, 8, 1, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (97, 11, 4, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (98, 19, 3, 1)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (99, 16, 3, 2)
INSERT [dbo].[Knowledge_of_language] ([LanguageId], [PersonId], [TypeLanguageId], [LanguageLevelId]) VALUES (100, 9, 3, 4)
SET IDENTITY_INSERT [dbo].[Knowledge_of_language] OFF
SET IDENTITY_INSERT [dbo].[Language_level] ON 

INSERT [dbo].[Language_level] ([LanguageLevelId], [LanguageLevelName]) VALUES (1, N'A1')
INSERT [dbo].[Language_level] ([LanguageLevelId], [LanguageLevelName]) VALUES (2, N'A2')
INSERT [dbo].[Language_level] ([LanguageLevelId], [LanguageLevelName]) VALUES (3, N'B1')
INSERT [dbo].[Language_level] ([LanguageLevelId], [LanguageLevelName]) VALUES (4, N'B2')
INSERT [dbo].[Language_level] ([LanguageLevelId], [LanguageLevelName]) VALUES (5, N'C1')
INSERT [dbo].[Language_level] ([LanguageLevelId], [LanguageLevelName]) VALUES (6, N'C2')
SET IDENTITY_INSERT [dbo].[Language_level] OFF
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (2, N'Susan', N'Lee', CAST(N'2017-02-16' AS Date), N'Montreuil', N'slee1@accuweather.com', N'33-(974)940-7685', 89, 10)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (4, N'Tammy', N'Campbell', CAST(N'2017-01-02' AS Date), N'Lozova', N'tcampbell3@163.com', N'380-(743)405-1510', 78, 13)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (5, N'Arthur', N'Henderson', CAST(N'2016-04-15' AS Date), N'Sankanan', N'ahenderson4@zimbio.com', N'63-(486)892-5131', 30, 13)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (6, N'Heather', N'Diaz', CAST(N'2016-12-28' AS Date), N'Banatsko Veliko Selo', N'hdiaz5@moonfruit.com', N'381-(132)424-8659', 33, 17)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (7, N'Sean', N'Chapman', CAST(N'2016-07-12' AS Date), N'Laau', N'schapman6@ehow.com', N'62-(961)337-8311', 25, 5)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (8, N'Christopher', N'Simmons', CAST(N'2016-10-23' AS Date), N'Cruzeiro do Sul', N'csimmons7@google.cn', N'55-(989)922-2950', 15, 2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (9, N'Roy', N'Fuller', CAST(N'2016-05-17' AS Date), N'Nalut', N'rfuller8@statcounter.com', N'218-(808)276-6571', 54, 3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (10, N'Louise', N'Freeman', CAST(N'2016-11-23' AS Date), N'Wangping', N'lfreeman9@gizmodo.com', N'86-(782)162-6240', 28, 6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (11, N'Kathryn', N'Austin', CAST(N'2017-01-15' AS Date), N'Datagon', N'kaustina@wisc.edu', N'63-(239)837-4968', 63, 9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (12, N'Howard', N'Hudson', CAST(N'2017-01-15' AS Date), N'San Antonio', N'hhudsonb@uiuc.edu', N'51-(482)545-9060', 54, 8)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (13, N'Mary', N'Kelly', CAST(N'2016-09-19' AS Date), N'Vila Fria', N'mkellyc@nytimes.com', N'351-(937)353-7070', 7, 7)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (14, N'Jane', N'Mccoy', CAST(N'2016-05-29' AS Date), N'Ampara', N'jmccoyd@eepurl.com', N'94-(637)855-2903', 89, 1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (15, N'Elizabeth', N'Chapman', CAST(N'2016-08-07' AS Date), N'San Isidro', N'echapmane@posterous.com', N'52-(687)200-7901', 93, 14)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (16, N'Annie', N'Baker', CAST(N'2016-08-05' AS Date), N'Taby', N'abakerf@gravatar.com', N'46-(869)201-5908', 83, 2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (17, N'Joseph', N'Harvey', CAST(N'2016-04-04' AS Date), N'Monrovia', N'jharveyg@rediff.com', N'231-(759)261-2513', 97, 6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (18, N'Ruby', N'Fox', CAST(N'2017-01-05' AS Date), N'Altagracia de Orituco', N'rfoxh@bluehost.com', N'58-(304)144-8429', 22, 8)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (19, N'Doris', N'Mitchell', CAST(N'2016-08-23' AS Date), N'Visnjevac', N'dmitchelli@macromedia.com', N'385-(706)210-6254', 48, 9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (20, N'Diane', N'James', CAST(N'2016-10-10' AS Date), N'Richmond', N'djamesj@msu.edu', N'27-(520)743-2759', 65, 6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (21, N'Ernest', N'Reed', CAST(N'2016-04-08' AS Date), N'Zhucun', N'ereedk@loc.gov', N'86-(579)195-4510', 25, 3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (22, N'Victor', N'Flores', CAST(N'2016-04-23' AS Date), N'Kabac', N'vfloresl@de.vu', N'63-(888)723-2074', 1, 6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (23, N'Laura', N'Brown', CAST(N'2016-10-16' AS Date), N'Ejidal', N'lbrownm@yolasite.com', N'52-(646)163-8794', 53, 5)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (24, N'Diana', N'Harris', CAST(N'2017-03-03' AS Date), N'Longtian', N'dharrisn@businessweek.com', N'86-(325)637-5706', 68, 9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (25, N'Angela', N'Kim', CAST(N'2016-11-08' AS Date), N'Vilhena', N'akimo@eventbrite.com', N'55-(548)582-4084', 64, 9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (26, N'Ruth', N'Martinez', CAST(N'2016-08-16' AS Date), N'Georgetown', N'rmartinezp@e-recht24.de', N'220-(704)637-9160', 48, 8)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (27, N'Amy', N'Jones', CAST(N'2016-06-14' AS Date), N'Pijao', N'ajonesq@noaa.gov', N'57-(903)175-6725', 50, 6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (28, N'Wanda', N'Dixon', CAST(N'2017-01-12' AS Date), N'Arvika', N'wdixonr@sun.com', N'46-(483)971-1497', 65, 14)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (29, N'Teresa', N'Sims', CAST(N'2016-06-02' AS Date), N'Biggar', N'tsimss@tamu.edu', N'1-(147)977-0462', 6, 15)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (30, N'Pamela', N'Phillips', CAST(N'2016-04-17' AS Date), N'Cachira', N'pphillipst@engadget.com', N'57-(745)432-3930', 68, 16)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (31, N'Robert', N'Ross', CAST(N'2016-09-18' AS Date), N'Heilongkou', N'rrossu@artisteer.com', N'86-(961)498-9145', 95, 21)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (32, N'Sean', N'West', CAST(N'2017-03-04' AS Date), N'Ciwidara', N'swestv@foxnews.com', N'62-(708)754-7791', 25, 20)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (33, N'Doris', N'Banks', CAST(N'2017-04-01' AS Date), N'Santa Elena de Uairen', N'dbanksw@wikimedia.org', N'58-(993)108-6279', 44, 50)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (34, N'Nicholas', N'Holmes', CAST(N'2016-08-18' AS Date), N'Zhengguo', N'nholmesx@flickr.com', N'86-(345)582-6786', 70, 12)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (35, N'Jason', N'Williams', CAST(N'2016-07-09' AS Date), N'Majie', N'jwilliamsy@digg.com', N'86-(906)598-7409', 5, 1)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (36, N'Laura', N'Arnold', CAST(N'2016-10-05' AS Date), N'Shaami-Yurt', N'larnoldz@imageshack.us', N'7-(297)512-0080', 72, 2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (37, N'Linda', N'Rodriguez', CAST(N'2017-02-18' AS Date), N'Mulhouse', N'lrodriguez10@eepurl.com', N'33-(402)676-9201', 16, 3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (38, N'Tina', N'Kennedy', CAST(N'2016-04-15' AS Date), N'Rumenka', N'tkennedy11@bloglines.com', N'381-(633)139-4052', 48, 6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (39, N'Howard', N'White', CAST(N'2016-11-02' AS Date), N'Florida', N'hwhite12@ihg.com', N'53-(769)795-4525', 52, 8)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (40, N'Billy', N'Andrews', CAST(N'2017-01-18' AS Date), N'Arkalyk', N'bandrews13@gov.uk', N'7-(653)627-8239', 44, 9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (41, N'Jeremy', N'Kim', CAST(N'2016-07-01' AS Date), N'Tres Lagoas', N'jkim14@unesco.org', N'55-(774)638-8162', 95, 7)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (42, N'Joyce', N'Jenkins', CAST(N'2016-12-02' AS Date), N'Pancalan', N'jjenkins15@reverbnation.com', N'62-(159)168-5547', 86, 9)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (43, N'Karen', N'Rose', CAST(N'2016-05-08' AS Date), N'Shobu', N'krose16@reddit.com', N'81-(658)922-7912', 3, 3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (44, N'Samuel', N'Little', CAST(N'2016-08-18' AS Date), N'Zilang', N'slittle17@furl.net', N'86-(760)613-7409', 53, 2)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (45, N'Virginia', N'Burton', CAST(N'2017-01-30' AS Date), N'Homa Bay', N'vburton18@facebook.com', N'254-(648)342-4805', 25, 3)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (46, N'Alice', N'Moore', CAST(N'2016-11-15' AS Date), N'Chitcani', N'amoore19@histats.com', N'373-(551)464-5407', 34, 6)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (47, N'Ann', N'Moore', CAST(N'2016-07-28' AS Date), N'Palpala', N'amoore1a@mayoclinic.com', N'54-(715)403-6027', 81, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (48, N'Denise', N'Mcdonald', CAST(N'2017-02-27' AS Date), N'Pahonjean', N'dmcdonald1b@themeforest.net', N'62-(395)375-1717', 80, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (49, N'Steve', N'Rivera', CAST(N'2016-12-17' AS Date), N'Say?ut', N'srivera1c@prlog.org', N'967-(903)142-6397', 33, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (50, N'Nicholas', N'Mills', CAST(N'2016-05-04' AS Date), N'Sumberrejo', N'nmills1d@wikia.com', N'62-(836)813-5171', 24, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (51, N'Ashley', N'Pierce', CAST(N'2016-07-14' AS Date), N'Adelaide Mail Centre', N'apierce1e@blogtalkradio.com', N'61-(535)725-9226', 34, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (52, N'Susan', N'Vasquez', CAST(N'2017-03-12' AS Date), N'Liudaogou', N'svasquez1f@dailymotion.com', N'86-(840)608-7991', 39, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (53, N'Rachel', N'King', CAST(N'2016-06-12' AS Date), N'Uddevalla', N'rking1g@alexa.com', N'46-(676)499-8151', 79, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (54, N'Patrick', N'Ford', CAST(N'2017-02-22' AS Date), N'Pamoyanan', N'pford1h@soundcloud.com', N'62-(137)971-0775', 63, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (55, N'Karen', N'Barnes', CAST(N'2017-01-07' AS Date), N'Sainte-Martine', N'kbarnes1i@amazon.co.uk', N'1-(365)856-6450', 90, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (56, N'Clarence', N'Nguyen', CAST(N'2017-01-21' AS Date), N'Wielbark', N'cnguyen1j@newsvine.com', N'48-(449)580-3082', 74, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (57, N'Donald', N'Andrews', CAST(N'2016-07-29' AS Date), N'Sines', N'dandrews1k@alexa.com', N'351-(539)267-9434', 21, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (58, N'Katherine', N'Garcia', CAST(N'2017-03-13' AS Date), N'Qila Abdullah', N'kgarcia1l@odnoklassniki.ru', N'92-(746)962-0575', 35, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (59, N'Teresa', N'Robertson', CAST(N'2016-10-19' AS Date), N'Tempeh Tengah', N'trobertson1m@live.com', N'62-(394)341-3656', 10, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (60, N'Jimmy', N'Wheeler', CAST(N'2017-01-15' AS Date), N'Abreus', N'jwheeler1n@upenn.edu', N'53-(973)123-8476', 77, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (61, N'Benjamin', N'Hall', CAST(N'2017-03-14' AS Date), N'Tha?nh Ho?a', N'bhall1o@google.de', N'84-(640)957-6349', 83, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (62, N'Ronald', N'Cox', CAST(N'2016-05-03' AS Date), N'Linpu', N'rcox1p@shareasale.com', N'86-(794)507-2590', 69, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (63, N'Aaron', N'Pierce', CAST(N'2016-08-08' AS Date), N'Jiuxian', N'apierce1q@oakley.com', N'86-(730)252-6611', 15, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (64, N'Phyllis', N'Hall', CAST(N'2016-11-04' AS Date), N'Dabrowa', N'phall1r@wsj.com', N'48-(406)994-5510', 81, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (65, N'Ashley', N'Lane', CAST(N'2016-04-04' AS Date), N'Rosso', N'alane1s@printfriendly.com', N'222-(644)712-7752', 16, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (66, N'Larry', N'Griffin', CAST(N'2016-09-02' AS Date), N'Parajara', N'lgriffin1t@smugmug.com', N'62-(434)926-3838', 38, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (67, N'Amy', N'Riley', CAST(N'2016-11-21' AS Date), N'Moshkovo', N'ariley1u@apple.com', N'7-(711)796-7329', 48, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (68, N'Martin', N'Reed', CAST(N'2016-05-03' AS Date), N'Jingxin', N'mreed1v@sina.com.cn', N'86-(675)129-8109', 44, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (69, N'Anthony', N'Butler', CAST(N'2016-10-16' AS Date), N'Ziyuan', N'abutler1w@pinterest.com', N'86-(648)698-3149', 27, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (70, N'Wanda', N'Taylor', CAST(N'2016-06-20' AS Date), N'Alepou', N'wtaylor1x@studiopress.com', N'30-(729)346-4187', 68, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (71, N'Melissa', N'Morales', CAST(N'2017-03-16' AS Date), N'Jadranovo', N'mmorales1y@mit.edu', N'385-(802)515-6401', 2, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (72, N'Steven', N'James', CAST(N'2017-01-06' AS Date), N'Predmerice nad Labem', N'sjames1z@etsy.com', N'420-(884)359-1751', 3, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (73, N'Thomas', N'Matthews', CAST(N'2016-06-16' AS Date), N'Sara Kunda', N'tmatthews20@cbslocal.com', N'220-(651)219-5736', 23, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (74, N'Jesse', N'Gutierrez', CAST(N'2016-04-16' AS Date), N'Dingbu', N'jgutierrez21@macromedia.com', N'86-(547)506-9823', 61, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (75, N'Clarence', N'Coleman', CAST(N'2016-04-23' AS Date), N'Villa Nueva', N'ccoleman22@paypal.com', N'54-(169)963-3291', 19, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (76, N'Michelle', N'Larson', CAST(N'2017-02-11' AS Date), N'Zamosc', N'mlarson23@quantcast.com', N'48-(264)842-6962', 4, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (77, N'Debra', N'Carter', CAST(N'2016-09-05' AS Date), N'Periyiali', N'dcarter24@patch.com', N'30-(667)543-6714', 77, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (78, N'Kelly', N'Flores', CAST(N'2016-05-16' AS Date), N'Uiasa', N'kflores25@wsj.com', N'62-(314)823-4999', 93, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (79, N'Steven', N'Wood', CAST(N'2016-09-10' AS Date), N'Finspang', N'swood26@ted.com', N'46-(367)545-3902', 86, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (80, N'Maria', N'Gray', CAST(N'2016-08-13' AS Date), N'Businovo', N'mgray27@eepurl.com', N'7-(378)283-9131', 15, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (81, N'Frank', N'Wagner', CAST(N'2017-01-22' AS Date), N'Shakhty', N'fwagner28@pinterest.com', N'7-(637)704-8035', 24, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (82, N'Willie', N'Austin', CAST(N'2016-07-24' AS Date), N'Nghia Hanh', N'waustin29@imdb.com', N'84-(789)597-7016', 65, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (83, N'Benjamin', N'James', CAST(N'2016-11-15' AS Date), N'Nagaracinta', N'bjames2a@samsung.com', N'62-(888)366-3938', 36, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (84, N'Melissa', N'Ramirez', CAST(N'2017-03-12' AS Date), N'Timurlorong', N'mramirez2b@gov.uk', N'62-(279)840-1325', 86, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (85, N'Joshua', N'Patterson', CAST(N'2016-05-29' AS Date), N'Loreto', N'jpatterson2c@desdev.cn', N'63-(977)495-0746', 71, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (86, N'Frances', N'Peterson', CAST(N'2017-03-17' AS Date), N'Merignac', N'fpeterson2d@miitbeian.gov.cn', N'33-(277)710-8475', 71, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (87, N'Ann', N'Harvey', CAST(N'2017-01-08' AS Date), N'Jijiazhuang', N'aharvey2e@cisco.com', N'86-(536)931-8000', 81, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (88, N'Wayne', N'Schmidt', CAST(N'2016-09-27' AS Date), N'Zverevo', N'wschmidt2f@tmall.com', N'7-(932)569-2785', 39, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (89, N'Nicholas', N'Kelly', CAST(N'2016-12-17' AS Date), N'Laveiras', N'nkelly2g@spotify.com', N'351-(574)211-0423', 28, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (90, N'Wayne', N'Hayes', CAST(N'2016-10-01' AS Date), N'Tandag', N'whayes2h@list-manage.com', N'63-(751)467-2233', 80, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (91, N'Kathryn', N'Palmer', CAST(N'2016-11-08' AS Date), N'Austin', N'kpalmer2i@bloomberg.com', N'1-(512)189-5546', 99, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (92, N'Linda', N'Bowman', CAST(N'2017-01-01' AS Date), N'Nanpu', N'lbowman2j@ucla.edu', N'86-(750)655-8731', 25, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (93, N'Gary', N'Jordan', CAST(N'2016-05-19' AS Date), N'Knyszyn', N'gjordan2k@domainmarket.com', N'48-(385)572-0790', 8, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (94, N'Larry', N'Andrews', CAST(N'2016-11-29' AS Date), N'Sarrat', N'landrews2l@soundcloud.com', N'63-(496)808-8286', 22, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (95, N'Larry', N'Williams', CAST(N'2017-03-03' AS Date), N'Shreveport', N'lwilliams2m@blog.com', N'1-(318)511-1533', 54, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (96, N'Russell', N'Simmons', CAST(N'2016-08-28' AS Date), N'Bobo-Dioulasso', N'rsimmons2n@1und1.de', N'226-(127)846-9013', 87, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (97, N'Phillip', N'James', CAST(N'2017-03-17' AS Date), N'Wairinding', N'pjames2o@amazon.com', N'62-(685)177-8479', 100, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (98, N'Annie', N'Graham', CAST(N'2016-11-20' AS Date), N'Tha Yang', N'agraham2p@pinterest.com', N'66-(620)640-7844', 59, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (99, N'Virginia', N'Simpson', CAST(N'2016-05-23' AS Date), N'Rongxing', N'vsimpson2q@ucoz.com', N'86-(731)639-5708', 66, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (101, N'Yura', N'Havrylko', CAST(N'2017-04-04' AS Date), N'Ivano-Frankivsk', N'yura_mail.97@ukr.net', N'680366785', 1000, NULL)
INSERT [dbo].[Person] ([PersonId], [FirstName], [LastName], [Birthday], [City], [Email], [Phone], [Salary], [WorkExpireance]) VALUES (102, N'Natalia', N'Yakymiv', CAST(N'2017-04-08' AS Date), N'IF', N'nknnb@gmail.com', N'87654323456', 54, 12)
GO
SET IDENTITY_INSERT [dbo].[Person] OFF
SET IDENTITY_INSERT [dbo].[PersonTypeJob] ON 

INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (1, 1, 13)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (2, 6, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (3, 6, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (4, 6, 16)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (5, 8, 12)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (6, 6, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (7, 9, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (8, 6, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (9, 2, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (10, 9, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (11, 1, 5)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (12, 6, 10)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (14, 6, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (15, 9, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (16, 8, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (17, 7, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (18, 9, 15)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (19, 1, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (22, 8, 11)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (23, 1, 4)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (25, 1, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (26, 3, 5)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (27, 4, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (28, 5, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (29, 9, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (30, 5, 15)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (31, 2, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (32, 4, 12)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (33, 2, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (34, 5, 11)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (35, 6, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (36, 2, 2)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (37, 1, 2)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (38, 7, 10)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (39, 9, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (40, 3, 5)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (41, 8, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (42, 5, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (43, 1, 2)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (44, 8, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (45, 2, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (46, 4, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (47, 8, 11)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (48, 7, 7)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (49, 6, 13)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (50, 8, 16)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (52, 2, 14)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (53, 4, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (54, 6, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (55, 2, 7)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (56, 3, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (57, 1, 7)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (58, 2, 15)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (59, 4, 19)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (60, 6, 10)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (62, 2, 13)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (64, 9, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (65, 5, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (66, 4, 19)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (67, 8, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (68, 8, 16)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (69, 3, 4)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (70, 3, 15)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (71, 9, 15)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (72, 6, 16)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (73, 4, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (74, 4, 6)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (75, 9, 13)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (76, 7, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (77, 6, 4)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (78, 8, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (79, 7, 8)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (80, 7, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (81, 9, 19)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (82, 5, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (83, 2, 5)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (84, 1, 2)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (85, 2, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (87, 1, 17)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (88, 4, 5)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (89, 7, 16)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (90, 4, 12)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (91, 3, 7)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (92, 4, 18)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (93, 3, 9)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (94, 7, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (95, 3, 11)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (96, 8, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (97, 4, 20)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (98, 4, 8)
INSERT [dbo].[PersonTypeJob] ([PersonTypeJobId], [TypeJobId], [PersonId]) VALUES (100, 1, 10)
SET IDENTITY_INSERT [dbo].[PersonTypeJob] OFF
SET IDENTITY_INSERT [dbo].[ProfessionalSkill] ON 

INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (1, N'facilisi', 10)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (2, N'vestibulum', 13)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (5, N'mattis', 5)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (6, N'curabitur', 19)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (7, N'aliquam sit', 10)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (8, N'convallis tortor', 2)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (9, N'posuere', 20)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (10, N'diam', 13)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (12, N'pellentesque volutpat', 15)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (13, N'eget eleifend', 15)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (14, N'sit', 15)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (15, N'convallis', 16)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (16, N'nulla', 17)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (17, N'ac', 18)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (18, N'amet consectetuer', 14)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (19, N'posuere felis', 20)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (20, N'in faucibus', 18)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (23, N'quis lectus', 20)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (24, N'malesuada in', 5)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (25, N'volutpat convallis', 17)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (27, N'metus', 8)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (28, N'non', 10)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (29, N'arcu adipiscing', 18)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (30, N'dui luctus', 5)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (32, N'metus', 19)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (34, N'nascetur', 2)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (35, N'odio', 7)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (36, N'duis', 17)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (37, N'morbi vestibulum', 18)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (38, N'sed nisl', 4)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (39, N'at nunc', 14)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (40, N'tempor convallis', 16)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (41, N'tortor quis', 8)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (42, N'ante ipsum', 15)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (43, N'erat id', 17)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (44, N'pulvinar lobortis', 10)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (45, N'consequat', 4)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (46, N'integer non', 6)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (47, N'placerat praesent', 12)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (48, N'id massa', 14)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (49, N'est', 10)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (50, N'ut erat', 8)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (53, N'sit amet', 8)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (54, N'condimentum neque', 10)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (56, N'diam nam', 15)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (57, N'mi', 7)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (58, N'lectus vestibulum', 14)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (60, N'tempus semper', 18)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (61, N'eget', 4)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (62, N'turpis elementum', 11)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (63, N'lacinia', 4)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (64, N'vel', 9)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (65, N'augue', 18)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (67, N'pede', 5)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (68, N'purus', 19)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (69, N'tellus nulla', 10)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (70, N'lectus vestibulum', 17)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (71, N'et magnis', 16)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (72, N'ultrices aliquet', 17)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (73, N'vestibulum', 9)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (74, N'aliquam', 17)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (75, N'maecenas', 6)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (76, N'nam nulla', 5)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (77, N'sagittis dui', 6)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (78, N'vestibulum', 12)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (79, N'at', 2)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (80, N'convallis', 14)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (81, N'massa', 12)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (82, N'cras pellentesque', 14)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (83, N'metus', 18)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (84, N'ipsum', 6)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (85, N'lorem', 19)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (86, N'commodo', 9)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (87, N'eget tincidunt', 18)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (88, N'sapien', 12)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (89, N'in', 20)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (90, N'at nulla', 16)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (91, N'amet', 10)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (92, N'in lectus', 6)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (93, N'morbi a', 15)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (94, N'ac diam', 15)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (95, N'nullam', 19)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (96, N'morbi odio', 20)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (97, N'ac enim', 18)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (98, N'pede', 20)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (99, N'felis', 14)
INSERT [dbo].[ProfessionalSkill] ([ProfessionalSkillId], [SkillName], [PersonId]) VALUES (100, N'rutrum at', 8)
SET IDENTITY_INSERT [dbo].[ProfessionalSkill] OFF
SET IDENTITY_INSERT [dbo].[TypeJob] ON 

INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (1, N'aliquam convallis nunc')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (2, N'luctus')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (3, N'in ante vestibulum')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (4, N'id sapien')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (5, N'sollicitudin ut')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (6, N'ipsum dolor')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (7, N'quam')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (8, N'ac')
INSERT [dbo].[TypeJob] ([TypeJobId], [TypeJobName]) VALUES (9, N'ut odio')
SET IDENTITY_INSERT [dbo].[TypeJob] OFF
SET IDENTITY_INSERT [dbo].[TypeLanguage] ON 

INSERT [dbo].[TypeLanguage] ([TypeLanguageId], [LanguageName]) VALUES (1, N'Ukrainian')
INSERT [dbo].[TypeLanguage] ([TypeLanguageId], [LanguageName]) VALUES (2, N'English')
INSERT [dbo].[TypeLanguage] ([TypeLanguageId], [LanguageName]) VALUES (3, N'Polish')
INSERT [dbo].[TypeLanguage] ([TypeLanguageId], [LanguageName]) VALUES (4, N'German')
SET IDENTITY_INSERT [dbo].[TypeLanguage] OFF
SET IDENTITY_INSERT [dbo].[Work_experience] ON 

INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (1, 13, N'tellus in', N'consequat varius integer ac', CAST(N'2001-06-30' AS Date), CAST(N'2016-09-12' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (2, 19, N'augue luctus', N'quam turpis adipiscing lorem', CAST(N'2004-01-23' AS Date), CAST(N'2013-01-25' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (3, 19, N'lobortis convallis', N'cursus id turpis integer', CAST(N'2005-09-23' AS Date), CAST(N'2012-11-01' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (4, 12, N'etiam faucibus', N'sed accumsan felis ut', CAST(N'2008-04-01' AS Date), CAST(N'2017-01-26' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (5, 6, N'consequat in', N'vel est donec odio', CAST(N'2004-02-28' AS Date), CAST(N'2011-05-10' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (6, 9, N'duis bibendum', N'proin risus praesent', CAST(N'2004-08-03' AS Date), CAST(N'2016-04-02' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (7, 9, N'pede posuere', N'quam pharetra', CAST(N'2000-08-20' AS Date), CAST(N'2015-01-18' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (8, 4, N'luctus nec', N'ipsum praesent blandit lacinia', CAST(N'2009-10-06' AS Date), CAST(N'2012-11-06' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (9, 18, N'vivamus metus', N'vel enim sit amet', CAST(N'2001-01-27' AS Date), CAST(N'2013-01-10' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (10, 13, N'fusce posuere', N'sem duis aliquam convallis', CAST(N'2010-01-12' AS Date), CAST(N'2012-09-11' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (11, 14, N'magna at', N'id massa id', CAST(N'2004-08-14' AS Date), CAST(N'2015-12-22' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (12, 16, N'molestie sed', N'nulla sed', CAST(N'2003-01-29' AS Date), CAST(N'2012-07-27' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (13, 13, N'sapien', N'vivamus vestibulum', CAST(N'2001-10-11' AS Date), CAST(N'2017-04-04' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (14, 5, N'sed', N'donec dapibus duis', CAST(N'2007-08-11' AS Date), CAST(N'2015-09-08' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (15, 6, N'volutpat sapien', N'platea dictumst maecenas ut', CAST(N'2009-12-11' AS Date), CAST(N'2015-06-30' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (16, 9, N'luctus ultricies', N'pulvinar lobortis est phasellus', CAST(N'2000-11-13' AS Date), CAST(N'2012-12-13' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (17, 6, N'ullamcorper', N'ipsum primis in', CAST(N'2006-11-03' AS Date), CAST(N'2016-04-17' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (18, 9, N'vehicula condimentum', N'viverra pede ac diam', CAST(N'2005-01-31' AS Date), CAST(N'2014-08-10' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (19, 4, N'semper', N'justo maecenas rhoncus aliquam', CAST(N'2009-10-07' AS Date), CAST(N'2016-04-29' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (20, 13, N'quis augue', N'suspendisse potenti in eleifend', CAST(N'2003-11-13' AS Date), CAST(N'2014-11-18' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (21, 17, N'maecenas tincidunt', N'quis odio consequat', CAST(N'2004-08-04' AS Date), CAST(N'2013-08-13' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (22, 11, N'volutpat sapien', N'libero non', CAST(N'2006-10-13' AS Date), CAST(N'2013-04-22' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (23, 7, N'hendrerit', N'curae duis', CAST(N'2005-12-07' AS Date), CAST(N'2010-10-10' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (24, 18, N'nam ultrices', N'tempus vel pede morbi', CAST(N'2006-01-10' AS Date), CAST(N'2016-07-09' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (25, 10, N'pellentesque', N'blandit nam nulla', CAST(N'2003-09-07' AS Date), CAST(N'2012-03-23' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (26, 8, N'nam congue', N'mi in porttitor pede', CAST(N'2008-02-15' AS Date), CAST(N'2013-06-12' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (27, 11, N'rhoncus aliquet', N'viverra pede ac diam', CAST(N'2002-09-26' AS Date), CAST(N'2015-07-13' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (28, 4, N'diam', N'mi integer ac neque', CAST(N'2002-12-27' AS Date), CAST(N'2016-06-06' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (29, 5, N'consequat morbi', N'cras in', CAST(N'2004-05-20' AS Date), CAST(N'2012-10-26' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (30, 14, N'erat', N'vel lectus in', CAST(N'2002-09-03' AS Date), CAST(N'2013-01-16' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (31, 10, N'congue', N'nec nisi volutpat', CAST(N'2007-06-12' AS Date), CAST(N'2011-03-01' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (32, 13, N'id', N'aliquam sit', CAST(N'2004-07-06' AS Date), CAST(N'2014-04-27' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (33, 18, N'pulvinar nulla', N'orci pede venenatis non', CAST(N'2006-09-06' AS Date), CAST(N'2010-12-04' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (34, 16, N'dapibus dolor', N'pede posuere', CAST(N'2001-01-30' AS Date), CAST(N'2010-07-23' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (35, 17, N'at nunc', N'est lacinia nisi venenatis', CAST(N'2001-03-16' AS Date), CAST(N'2013-07-09' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (36, 2, N'adipiscing elit', N'cubilia curae nulla', CAST(N'2005-09-18' AS Date), CAST(N'2015-12-01' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (37, 15, N'nibh in', N'nibh in', CAST(N'2005-04-03' AS Date), CAST(N'2015-09-18' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (39, 7, N'nisl duis', N'erat tortor sollicitudin', CAST(N'2003-04-06' AS Date), CAST(N'2010-11-22' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (40, 18, N'integer', N'nec nisi volutpat eleifend', CAST(N'2007-10-13' AS Date), CAST(N'2012-03-29' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (42, 17, N'volutpat', N'quis libero', CAST(N'2001-09-01' AS Date), CAST(N'2015-12-14' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (43, 6, N'eu massa', N'vitae nisl', CAST(N'2008-05-13' AS Date), CAST(N'2015-11-21' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (44, 4, N'eu est', N'nulla ut erat', CAST(N'2004-09-21' AS Date), CAST(N'2016-12-19' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (45, 11, N'in', N'turpis elementum ligula vehicula', CAST(N'2002-03-20' AS Date), CAST(N'2013-04-15' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (46, 8, N'nam', N'in felis', CAST(N'2006-10-13' AS Date), CAST(N'2012-03-15' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (47, 19, N'in', N'nunc commodo placerat praesent', CAST(N'2009-02-10' AS Date), CAST(N'2015-07-06' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (48, 16, N'lorem id', N'ut dolor', CAST(N'2002-09-16' AS Date), CAST(N'2016-09-07' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (49, 7, N'id lobortis', N'ut erat curabitur', CAST(N'2003-06-25' AS Date), CAST(N'2011-07-24' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (50, 12, N'vestibulum', N'aenean sit', CAST(N'2005-08-30' AS Date), CAST(N'2014-02-08' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (51, 6, N'vehicula condimentum', N'consequat dui nec nisi', CAST(N'2003-10-18' AS Date), CAST(N'2010-07-21' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (52, 20, N'ornare consequat', N'ipsum praesent blandit lacinia', CAST(N'2001-11-14' AS Date), CAST(N'2015-09-05' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (53, 15, N'sapien sapien', N'parturient montes', CAST(N'2004-10-31' AS Date), CAST(N'2015-06-14' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (54, 2, N'commodo', N'convallis nulla neque', CAST(N'2008-12-03' AS Date), CAST(N'2013-09-25' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (55, 20, N'sapien', N'ultrices vel', CAST(N'2008-03-22' AS Date), CAST(N'2016-04-30' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (56, 19, N'accumsan', N'sapien ut nunc', CAST(N'2006-04-10' AS Date), CAST(N'2014-09-12' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (57, 5, N'in felis', N'curabitur gravida nisi at', CAST(N'2000-04-12' AS Date), CAST(N'2015-08-29' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (58, 20, N'in', N'nisl aenean', CAST(N'2003-01-01' AS Date), CAST(N'2015-06-01' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (59, 17, N'mauris', N'sodales sed', CAST(N'2002-12-20' AS Date), CAST(N'2014-04-13' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (60, 15, N'mi integer', N'neque vestibulum eget vulputate', CAST(N'2009-04-25' AS Date), CAST(N'2010-05-15' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (61, 13, N'curae', N'nulla suscipit', CAST(N'2001-01-28' AS Date), CAST(N'2014-10-10' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (62, 18, N'metus', N'sit amet erat nulla', CAST(N'2003-11-17' AS Date), CAST(N'2014-03-08' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (63, 10, N'blandit', N'suspendisse accumsan', CAST(N'2000-09-08' AS Date), CAST(N'2010-09-29' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (64, 16, N'elit proin', N'morbi sem', CAST(N'2000-11-06' AS Date), CAST(N'2010-07-18' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (65, 15, N'nullam porttitor', N'donec posuere', CAST(N'2007-02-07' AS Date), CAST(N'2016-06-30' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (66, 20, N'nulla', N'rutrum ac lobortis', CAST(N'2004-06-05' AS Date), CAST(N'2011-01-26' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (67, 8, N'eu orci', N'tellus nisi eu orci', CAST(N'2001-10-05' AS Date), CAST(N'2011-03-06' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (68, 7, N'urna', N'interdum mauris non', CAST(N'2009-01-05' AS Date), CAST(N'2015-10-19' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (69, 20, N'quis', N'dis parturient montes', CAST(N'2006-05-01' AS Date), CAST(N'2017-02-16' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (70, 20, N'iaculis', N'est lacinia', CAST(N'2009-12-02' AS Date), CAST(N'2013-06-20' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (71, 9, N'cubilia', N'in faucibus', CAST(N'2004-03-14' AS Date), CAST(N'2013-11-03' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (72, 10, N'augue', N'a libero nam', CAST(N'2007-09-22' AS Date), CAST(N'2012-10-15' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (73, 20, N'condimentum curabitur', N'vel lectus', CAST(N'2002-01-31' AS Date), CAST(N'2017-01-07' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (74, 5, N'ut', N'in hac', CAST(N'2000-12-20' AS Date), CAST(N'2010-08-29' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (75, 18, N'natoque penatibus', N'erat fermentum justo nec', CAST(N'2001-01-26' AS Date), CAST(N'2016-01-09' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (78, 15, N'ridiculus', N'pellentesque quisque porta', CAST(N'2008-11-28' AS Date), CAST(N'2010-07-23' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (79, 4, N'pellentesque', N'velit vivamus', CAST(N'2007-10-16' AS Date), CAST(N'2016-05-19' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (80, 11, N'justo nec', N'ut erat curabitur gravida', CAST(N'2008-04-04' AS Date), CAST(N'2010-09-21' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (81, 18, N'orci pede', N'gravida sem praesent id', CAST(N'2005-02-16' AS Date), CAST(N'2016-06-05' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (82, 17, N'ac', N'ipsum primis in faucibus', CAST(N'2004-04-27' AS Date), CAST(N'2017-01-11' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (83, 16, N'lacus curabitur', N'congue risus semper', CAST(N'2002-05-07' AS Date), CAST(N'2011-11-05' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (84, 12, N'tincidunt', N'eget congue', CAST(N'2008-10-22' AS Date), CAST(N'2012-02-20' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (85, 10, N'nisl', N'id luctus', CAST(N'2001-10-27' AS Date), CAST(N'2013-03-18' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (86, 18, N'mauris', N'venenatis non', CAST(N'2001-06-19' AS Date), CAST(N'2013-12-08' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (87, 11, N'blandit', N'et ultrices', CAST(N'2002-09-30' AS Date), CAST(N'2015-04-18' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (88, 10, N'dolor', N'donec vitae', CAST(N'2005-10-26' AS Date), CAST(N'2011-05-15' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (89, 7, N'volutpat', N'sed interdum venenatis', CAST(N'2008-08-07' AS Date), CAST(N'2013-06-17' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (90, 12, N'ridiculus mus', N'tellus semper', CAST(N'2010-03-03' AS Date), CAST(N'2015-07-09' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (91, 2, N'est', N'ut volutpat sapien', CAST(N'2009-11-07' AS Date), CAST(N'2014-05-06' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (92, 7, N'justo', N'pulvinar sed nisl nunc', CAST(N'2001-07-11' AS Date), CAST(N'2012-10-26' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (93, 6, N'in sagittis', N'vestibulum sagittis sapien', CAST(N'2007-03-13' AS Date), CAST(N'2015-06-04' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (94, 5, N'id', N'consequat morbi', CAST(N'2009-06-19' AS Date), CAST(N'2013-10-15' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (95, 5, N'leo', N'leo odio porttitor', CAST(N'2002-03-30' AS Date), CAST(N'2016-12-19' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (96, 4, N'donec', N'justo nec condimentum neque', CAST(N'2002-01-18' AS Date), CAST(N'2012-08-01' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (98, 19, N'lobortis convallis', N'cras in purus eu', CAST(N'2006-06-01' AS Date), CAST(N'2011-04-08' AS Date))
INSERT [dbo].[Work_experience] ([WorkExperienceId], [PersonId], [PositionName], [CompanyName], [StartDate], [FinishDate]) VALUES (100, 9, N'justo', N'sed lacus morbi sem', CAST(N'2009-08-12' AS Date), CAST(N'2014-04-08' AS Date))
SET IDENTITY_INSERT [dbo].[Work_experience] OFF
ALTER TABLE [dbo].[Education]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Education]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Interview]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Interview]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Knowledge_of_language]  WITH CHECK ADD FOREIGN KEY([LanguageLevelId])
REFERENCES [dbo].[Language_level] ([LanguageLevelId])
GO
ALTER TABLE [dbo].[Knowledge_of_language]  WITH CHECK ADD FOREIGN KEY([LanguageLevelId])
REFERENCES [dbo].[Language_level] ([LanguageLevelId])
GO
ALTER TABLE [dbo].[Knowledge_of_language]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Knowledge_of_language]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Knowledge_of_language]  WITH CHECK ADD FOREIGN KEY([TypeLanguageId])
REFERENCES [dbo].[TypeLanguage] ([TypeLanguageId])
GO
ALTER TABLE [dbo].[Knowledge_of_language]  WITH CHECK ADD FOREIGN KEY([TypeLanguageId])
REFERENCES [dbo].[TypeLanguage] ([TypeLanguageId])
GO
ALTER TABLE [dbo].[PersonTypeJob]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[PersonTypeJob]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[PersonTypeJob]  WITH CHECK ADD FOREIGN KEY([TypeJobId])
REFERENCES [dbo].[TypeJob] ([TypeJobId])
GO
ALTER TABLE [dbo].[PersonTypeJob]  WITH CHECK ADD FOREIGN KEY([TypeJobId])
REFERENCES [dbo].[TypeJob] ([TypeJobId])
GO
ALTER TABLE [dbo].[ProfessionalSkill]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[ProfessionalSkill]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Work_experience]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[Work_experience]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
/****** Object:  StoredProcedure [dbo].[sp_AddEducation]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddEducation]
			@PersonId					int,
			@SpecialityName				varchar(100),
			@EducationalInstitutionName	varchar(100),
			@StartDate					date,
			@FinishDate					date
AS
BEGIN
	INSERT INTO Education
    ( 
			PersonId,
			SpecialityName,
			EducationalInstitutionName,
			StartDate,
			FinishDate          
     ) 
     VALUES 
     ( 
            @PersonId,
			@SpecialityName,
			@EducationalInstitutionName,
			@StartDate,
			@FinishDate
     ) 
END




GO
/****** Object:  StoredProcedure [dbo].[sp_AddInterview]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddInterview]
            @PersonId                   int = null,
            @InterviewDate              date = null,
            @Point						int = null,
            @Comment                    varchar(1000) = null,
            @FileResume                 varchar(200) = null,
			@FileTest                 varchar(200) = null
AS
BEGIN
    INSERT INTO Interview
    (
            PersonId,
            InterviewDate,
            Point,
            Comment,
            FileResume,
			FileTest          
     )
     VALUES
     (
            @PersonId,
            @InterviewDate,
            @Point,
            @Comment,
            @FileResume,
			@FileTest 
     )
END





GO
/****** Object:  StoredProcedure [dbo].[sp_AddJob]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddJob]
            @PersonId                   int = null,
			@JobName	                varchar(100) = null
AS
BEGIN
    INSERT INTO Job
    (
            PersonId,
            JobName     
     )
     VALUES
     (
            @PersonId,
            @JobName
     )
END





GO
/****** Object:  StoredProcedure [dbo].[sp_AddLanguage]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddLanguage]
            @PersonId                   int = null,
			@LanguageLevelName	        varchar(100) = null,
			@LanguageName				varchar(100) = null
AS
BEGIN
    

	 INSERT INTO Knowledge_of_language(
			PersonId,
			TypeLanguageId,
			LanguageLevelId
	 )
	  VALUES
     (
            @PersonId,
			(SELECT TypeLanguage.TypeLanguageId FROM TypeLanguage
			WHERE LanguageName = @LanguageName),
			(SELECT Language_level.LanguageLevelId FROM Language_level
			WHERE LanguageLevelName = @LanguageLevelName)
     )
END





GO
/****** Object:  StoredProcedure [dbo].[sp_AddLanguageLevel]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddLanguageLevel]
			@LanguageLevelName		varchar(100)
AS
BEGIN
	INSERT INTO Language_level
    ( 
			LanguageLevelName         
     ) 
     VALUES 
     ( 
            @LanguageLevelName
     ) 
END



GO
/****** Object:  StoredProcedure [dbo].[sp_AddPerson]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddPerson]
			@FirstName		varchar(100),
			@LastName		varchar(100),
			@Birthday		date,
			@City			varchar(100),
			@Email			varchar(100),
			@Phone			varchar(20),
			@Salary			int,
			@WorkExpireance float 
AS
BEGIN
	INSERT INTO Person
    ( 
			FirstName,
			LastName,
			Birthday,
			City,
			Email,
			Phone,
			Salary,
			WorkExpireance           
     ) 
     VALUES 
     ( 
            @FirstName,
			@LastName,
			@Birthday,
			@City,
			@Email,
			@Phone,
			@Salary,
			@WorkExpireance 
     ) 
END






GO
/****** Object:  StoredProcedure [dbo].[sp_AddProfessionalSkill]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddProfessionalSkill]
            @PersonId                   int = null,
			@SkillName					varchar(100) = null
AS
BEGIN
	 INSERT INTO ProfessionalSkill
	 (
			PersonId,
			SkillName
			
	 )
	  VALUES
     (
            @PersonId,
			@SkillName
	 )
END





GO
/****** Object:  StoredProcedure [dbo].[sp_AddTypeJob]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddTypeJob]
            @PersonId                   int = null,
			@TypeJobName				varchar(100) = null
AS
BEGIN
	 INSERT INTO PersonTypeJob
	 (
			PersonId,
			TypeJobId
	 )
	  VALUES
     (
            @PersonId,
			(SELECT TypeJob.TypeJobId FROM TypeJob
			WHERE TypeJobName = @TypeJobName)
	 )
END





GO
/****** Object:  StoredProcedure [dbo].[sp_AddTypeJobsName]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddTypeJobsName]
			@TypeJobName		varchar(100)
AS
BEGIN
	INSERT INTO TypeJob
    ( 
			TypeJobName	         
     ) 
     VALUES 
     ( 
            @TypeJobName
     ) 
END



GO
/****** Object:  StoredProcedure [dbo].[sp_AddTypeLanguage]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddTypeLanguage]
			@LanguageName		varchar(100)
AS
BEGIN
	INSERT INTO TypeLanguage
    ( 
			LanguageName         
     ) 
     VALUES 
     ( 
            @LanguageName
     ) 
END



GO
/****** Object:  StoredProcedure [dbo].[sp_AddWorkExperience]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddWorkExperience]
            @PersonId                   int = null,
			@PositionName				varchar(100) = null,
			@CompanyName				varchar(100) = null,
			@StartDate					date = null,
			@FinishDate					date = null
AS
BEGIN
	 INSERT INTO Work_experience
	 (
			PersonId,
			PositionName,
			CompanyName,
			StartDate,
			FinishDate
			
	 )
	  VALUES
     (
            @PersonId,
			@PositionName,
			@CompanyName,
			@StartDate,
			@FinishDate
	 )
END




GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteEducation]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteEducation]
	@EducationId	int
AS
BEGIN
	DELETE FROM Education
	WHERE EducationId=@EducationId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteInterview]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteInterview]
	@InterviewId			int
AS
BEGIN
	DELETE FROM Interview
	WHERE InterviewId=@InterviewId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteJob]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteJob]
	@JobId				int
AS
BEGIN
	DELETE FROM Job
	WHERE JobId=@JobId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteLanguage]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteLanguage]
	@LanguageId	int
AS
BEGIN
	DELETE FROM Knowledge_of_language
	WHERE LanguageId=@LanguageId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteLanguageLevel]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteLanguageLevel]
	@LanguageLevelId	int
AS
BEGIN
	DELETE FROM Language_level
	WHERE LanguageLevelId=@LanguageLevelId
END


GO
/****** Object:  StoredProcedure [dbo].[sp_DeletePerson]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeletePerson]
	@PersonId	int
AS
BEGIN

	DELETE FROM Education
	WHERE PersonId=@PersonId

	DELETE FROM Interview
	WHERE PersonId=@PersonId

	DELETE FROM Job
	WHERE PersonId=@PersonId

	DELETE FROM Knowledge_of_language
	WHERE PersonId=@PersonId

	DELETE FROM PersonTypeJob
	WHERE PersonId=@PersonId

	DELETE FROM ProfessionalSkill
	WHERE PersonId=@PersonId

	DELETE FROM Work_experience
	WHERE PersonId=@PersonId

	DELETE FROM Person
	WHERE PersonId=@PersonId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteProfessionalSkill]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteProfessionalSkill]
	@ProfessionalSkillId	int
AS
BEGIN
	DELETE FROM ProfessionalSkill
	WHERE ProfessionalSkillId=@ProfessionalSkillId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteTypeJob]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteTypeJob]
	@PersonTypeJobId				int
AS
BEGIN
	DELETE FROM PersonTypeJob
	WHERE PersonTypeJobId=@PersonTypeJobId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteTypeJobsName]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteTypeJobsName]
	@TypeJobsNameId	int
AS
BEGIN
	DELETE FROM TypeJob
	WHERE TypeJobId=@TypeJobsNameId
END


GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteTypeLanguage]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteTypeLanguage]
	@TypeLanguageId	int
AS
BEGIN
	DELETE FROM TypeLanguage
	WHERE TypeLanguageId=@TypeLanguageId
END


GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteWorkExperience]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteWorkExperience]
	@WorkExperienceId	int
AS
BEGIN
	DELETE FROM Work_experience
	WHERE WorkExperienceId=@WorkExperienceId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_EditEducation]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EditEducation]
			@EducationId				int,
			@SpecialityName				varchar(100)	= null,
			@EducationalInstitutionName	varchar(100)	= null,
			@StartDate					date			= null,
			@FinishDate					date			= null
AS
BEGIN
	UPDATE Education
    SET SpecialityName				=ISNULL(@SpecialityName,SpecialityName), 
        EducationalInstitutionName	=ISNULL(@EducationalInstitutionName, EducationalInstitutionName), 
		StartDate					=ISNULL(@StartDate, StartDate), 
		FinishDate					=ISNULL(@FinishDate, FinishDate)
    WHERE EducationId=@EducationId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_EditInterview]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EditInterview]
			@InterviewId				int,
			@InterviewDate				varchar(100)	= null,
			@Point						int				= null,
			@Comment					varchar(1000)	= null,
			@FileResume					varchar(1000)	= null,
			@FileTest					varchar(1000)	= null
AS
BEGIN
	UPDATE Interview
    SET InterviewDate				=ISNULL(@InterviewDate,InterviewDate), 
        Point						=ISNULL(@Point, Point), 
		Comment					=ISNULL(@Comment, Comment), 
		FileResume					=ISNULL(@FileResume, FileResume),
		FileTest					=ISNULL(@FileTest, FileTest)
    WHERE InterviewId=@InterviewId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_EditJob]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EditJob]
	@JobId				int,
	@JobName			varchar(100)	= null
AS
BEGIN
	UPDATE Job
    SET JobName				=ISNULL(@JobName, JobName)
    WHERE JobId=@JobId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_EditLanguage]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EditLanguage]
			@LanguageId                 int,
			@LanguageLevelName	        varchar(100) = null,
			@LanguageName				varchar(100) = null
AS
BEGIN
	UPDATE Knowledge_of_language
    SET TypeLanguageId				=ISNULL((SELECT TypeLanguage.TypeLanguageId FROM TypeLanguage
											 WHERE LanguageName = @LanguageName),TypeLanguageId), 
        LanguageLevelId				=ISNULL((SELECT Language_level.LanguageLevelId FROM Language_level
			WHERE LanguageLevelName = @LanguageLevelName), LanguageLevelId)
    WHERE LanguageId=@LanguageId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_EditLanguageLevel]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EditLanguageLevel]
			@LanguageLevelId				int,
			@LanguageLevelName				varchar(100)	= null
AS
BEGIN
	UPDATE Language_level
    SET LanguageLevelName				=ISNULL(@LanguageLevelName,LanguageLevelName)
    WHERE LanguageLevelId=@LanguageLevelId
END


GO
/****** Object:  StoredProcedure [dbo].[sp_EditPerson]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EditPerson]
			@PersonId		int,
			@FirstName		varchar(100)	= null,
			@LastName		varchar(100)	= null,
			@Birthday		date			= null,
			@City			varchar(100)	= null,
			@Email			varchar(100)	= null,
			@Phone			varchar(20)		= null,
			@Salary			int				= null,
			@WorkExpireance float			= null
AS
BEGIN
	UPDATE Person
    SET FirstName				=ISNULL(@FirstName,FirstName), 
        LastName				=ISNULL(@LastName, LastName), 
		Birthday				=ISNULL(@Birthday, Birthday), 
		City					=ISNULL(@City, City),
		Email					=ISNULL(@Email, Email),
		Phone					=ISNULL(@Phone, Phone),
		Salary					=ISNULL(@Salary, Salary),
		WorkExpireance			=ISNULL(@WorkExpireance, WorkExpireance)
    WHERE PersonId=@PersonId
END





GO
/****** Object:  StoredProcedure [dbo].[sp_EditProfessionalSkill]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EditProfessionalSkill]
			@ProfessionalSkillId		int,
			@SkillName					varchar(100)	= null
AS
BEGIN
	UPDATE ProfessionalSkill
    SET SkillName				=ISNULL(@SkillName,SkillName)
    WHERE ProfessionalSkillId=@ProfessionalSkillId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_EditTypeJob]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EditTypeJob]
	@PersonTypeJobId				int,
	@TypeJobName			varchar(100)	= null
AS
BEGIN
	UPDATE PersonTypeJob
    SET TypeJobId				=ISNULL((SELECT TypeJob.TypeJobId FROM TypeJob
			WHERE TypeJobName = @TypeJobName), PersonTypeJobId)
    WHERE @PersonTypeJobId=PersonTypeJobId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_EditTypeJobsName]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EditTypeJobsName]
			@TypeJobsNameId				int,
			@TypeJobName				varchar(100)	= null
AS
BEGIN
	UPDATE TypeJob
    SET TypeJobName				=ISNULL(@TypeJobName,TypeJobName)
    WHERE TypeJobId=@TypeJobsNameId
END


GO
/****** Object:  StoredProcedure [dbo].[sp_EditTypeLanguage]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EditTypeLanguage]
			@TypeLanguageId				int,
			@LanguageName				varchar(100)	= null
AS
BEGIN
	UPDATE TypeLanguage
    SET LanguageName				=ISNULL(@LanguageName,LanguageName)
    WHERE TypeLanguageId=@TypeLanguageId
END


GO
/****** Object:  StoredProcedure [dbo].[sp_EditWorkExperience]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EditWorkExperience]
			@WorkExperienceId			int,
			@PositionName				varchar(100)	= null,
			@CompanyName				varchar(100)	= null,
			@StartDate					date			= null,
			@FinishDate					date			= null
AS
BEGIN
	UPDATE Work_experience
    SET PositionName				=ISNULL(@PositionName,PositionName), 
        CompanyName					=ISNULL(@CompanyName, CompanyName), 
		StartDate					=ISNULL(@StartDate, StartDate), 
		FinishDate					=ISNULL(@FinishDate, FinishDate)
    WHERE WorkExperienceId=@WorkExperienceId
END



GO
/****** Object:  StoredProcedure [dbo].[sp_GetCountPersons]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetCountPersons]
AS
BEGIN
	SELECT	COUNT(*)
	FROM	Person
				
END







GO
/****** Object:  StoredProcedure [dbo].[sp_GetCountPersonsWhere]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetCountPersonsWhere]
  @Page					int = 1,
			@Count					int = 10,

			@PersonId				int = null,
			@FirstName				varchar(100) = null,
			@LastName				varchar(100) = null,
			@AgeStart				int = null,
			@AgeFinish				int = null,
			@City					varchar(100) = null,
			@Email					varchar(100) = null,
			@Phone					varchar(100) = null,
			@SalaryStart			int = null,
			@SalaryFinish			int = null,
			@WorkExpireanceStart	int = null,
			@WorkExpireanceFinish	int = null,

			@SpecialityName			varchar(100) = null,
			@EducationalInstitutionName	varchar(100) = null,
			@EducationStartDate		date = null,
			@EducationFinishDate	date = null,

			@InterviewStartDate		date = null,
			@InterviewFinishDate	date = null,

			@LanguageName			varchar(100) = null,
			@LanguageLevelName		varchar(100) = null,

			@JobName				varchar(100) = null,

			@TypeJobName			varchar(100) = null,

			@PositionName			varchar(100) = null,
			@CompanyName			varchar(100) = null,
			@ExperienceStartDate	date = null,
			@ExperienceFinishDate	date = null,

			@SkillName				varchar(100) = null
			
AS
BEGIN
	
	SELECT  Knowledge_of_language.LanguageId, TypeLanguage.LanguageName,
            Language_level.LanguageLevelName, Knowledge_of_language.PersonId
    INTO    #tempLanguage
    FROM    Knowledge_of_language
    INNER JOIN Language_level ON Language_level.LanguageLevelId=Knowledge_of_language.LanguageLevelId
    INNER JOIN TypeLanguage ON TypeLanguage.TypeLanguageId=Knowledge_of_language.TypeLanguageId

	SELECT  PersonTypeJob.PersonTypeJobId, PersonTypeJob.PersonId,
            TypeJob.TypeJobName
    INTO    #tempTypeJob
    FROM    PersonTypeJob
    INNER JOIN TypeJob ON PersonTypeJob.TypeJobId = TypeJob.TypeJobId

	SELECT DISTINCT	COUNT(*)
	FROM	(SELECT PersonTable.PersonId, PersonTable.Email, PersonTable.FirstName, 
						PersonTable.LastName, PersonTable.Phone, PersonTable.Salary, 
						PersonTable.Birthday, PersonTable.City,PersonTable.WorkExpireance
						FROM (	SELECT DISTINCT	Person.PersonId, Person.Email, Person.FirstName, 
						Person.LastName, Person.Phone, Person.Salary, 
						Person.Birthday, Person.City,Person.WorkExpireance
										 
				FROM	Person

				INNER JOIN ( SELECT Person.PersonId FROM Person
	LEFT JOIN Education ON Person.PersonId = Education.PersonId
		AND (@SpecialityName IS NULL OR (Education.SpecialityName LIKE '%' + @SpecialityName  + '%')) 
		AND (@EducationalInstitutionName IS NULL OR (Education.EducationalInstitutionName LIKE '%' + @EducationalInstitutionName  + '%')) 
		AND (@EducationStartDate IS NULL OR (Education.StartDate <= @EducationStartDate)) 
		AND	(@EducationFinishDate IS NULL OR (Education.FinishDate >= @EducationFinishDate))

	INNER JOIN Interview ON Person.PersonId = Interview.PersonId
		AND (@InterviewStartDate IS NULL OR (Interview.InterviewDate >= @InterviewStartDate)) 
		AND (@InterviewFinishDate IS NULL OR (Interview.InterviewDate <= @InterviewFinishDate)) 

	INNER JOIN #tempLanguage ON Person.PersonId = #tempLanguage.PersonId 
		AND	(@LanguageName IS NULL OR (#tempLanguage.LanguageName LIKE '%' + @LanguageName + '%')) 
		AND (@LanguageLevelName IS NULL OR (#tempLanguage.LanguageLevelName LIKE '%' + @LanguageLevelName + '%'))
	
	LEFT JOIN Job ON Person.PersonId = Job.PersonId
		AND (@JobName IS NULL OR (Job.JobName LIKE '%' + @JobName  + '%'))

	INNER JOIN #tempTypeJob ON Person.PersonId = #tempTypeJob.PersonId 
		AND (@TypeJobName IS NULL OR (#tempTypeJob.TypeJobName LIKE '%' + @TypeJobName  + '%'))
	
	INNER JOIN Work_experience ON Person.PersonId = Work_experience.PersonId
		AND (@CompanyName IS NULL OR (Work_experience.CompanyName LIKE '%' + @CompanyName + '%')) 
		AND (@PositionName IS NULL OR (Work_experience.PositionName LIKE '%' + @PositionName + '%')) 

	LEFT JOIN ProfessionalSkill ON Person.PersonId = ProfessionalSkill.PersonId
		AND (@SkillName IS NULL OR (ProfessionalSkill.SkillName LIKE '%' + @SkillName  + '%'))) JoinTable
	ON Person.PersonId = JoinTable.PersonId 
				WHERE	(@PersonId IS NULL OR (Person.PersonId = @PersonId)) AND
						(@FirstName IS NULL OR (Person.FirstName LIKE '%' + @FirstName + '%')) AND
						(@LastName IS NULL OR (Person.LastName LIKE '%' + @LastName + '%')) AND
						(@City IS NULL OR (Person.City LIKE '%' + @City + '%')) AND
						(@Email IS NULL OR (Person.Email LIKE '%' + @Email + '%')) AND
						(@Phone IS NULL OR (Person.Phone LIKE '%' + @Phone + '%')) AND
						(@SalaryStart IS NULL OR (Person.Salary >= @SalaryStart)) AND
						(@SalaryFinish IS NULL OR (Person.Salary <= @SalaryFinish)) AND
						(@WorkExpireanceStart IS NULL OR (Person.WorkExpireance >= @WorkExpireanceStart)) AND
						(@WorkExpireanceFinish IS NULL OR (Person.WorkExpireance <= @WorkExpireanceFinish))

	) PersonTable
	) TempPerson
END

GO
/****** Object:  StoredProcedure [dbo].[sp_GetEducationById]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetEducationById]
    @EducationId int 
AS   
BEGIN
      SELECT Education.EducationId, Education.PersonId, Education.SpecialityName, Education.EducationalInstitutionName,
			 Education.StartDate, Education.FinishDate

      FROM	 dbo.Education WHERE EducationId=@EducationId
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetEducations]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetEducations]
AS   
BEGIN
      SELECT Education.EducationId, Education.PersonId, Education.SpecialityName,
			 Education.EducationalInstitutionName, Education.StartDate, Education.FinishDate

      FROM	 dbo.Education
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetEducationsWhere]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetEducationsWhere]
	@PersonId int = null,
	@SpecialityName varchar(100) = null,
	@EducationalInstitutionName varchar(100) = null

AS
BEGIN
      SELECT Education.EducationId, Education.PersonId, Education.SpecialityName,
			 Education.EducationalInstitutionName, Education.StartDate, Education.FinishDate

      FROM	 dbo.Education

	  WHERE	 (@PersonId IS NULL OR (Education.PersonId = @PersonId)) AND
			 (@SpecialityName IS NULL OR (Education.SpecialityName LIKE '%' + @SpecialityName  + '%')) AND
			 (@EducationalInstitutionName IS NULL OR (Education.EducationalInstitutionName LIKE '%' + @EducationalInstitutionName  + '%'))
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetInterviewById]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetInterviewById]
			@InterviewId int
AS
BEGIN
	SELECT	Interview.InterviewId, Interview.PersonId, 
			Interview.InterviewDate, Interview.Point, 
			Interview.Comment, Interview.FileResume, Interview.FileTest

	FROM	Interview

	WHERE	Interview.InterviewId = @InterviewId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_GetInterviews]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetInterviews]
AS
BEGIN
	SELECT	Interview.InterviewId, Interview.PersonId, 
			Interview.InterviewDate, Interview.Point, 
			Interview.Comment, Interview.FileResume, Interview.FileTest

	FROM	Interview
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetInterviewsWhere]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetInterviewsWhere]
			@PersonId int = null,
			@Point int = null
AS
BEGIN
	SELECT	Interview.InterviewId, Interview.PersonId, 
			Interview.InterviewDate, Interview.Point, 
			Interview.Comment, Interview.FileResume, Interview.FileTest

	FROM	Interview

	WHERE	(@PersonId IS NULL OR (Interview.PersonId = @PersonId))
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetJobById]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetJobById]
    @JobId int 
AS   
BEGIN
      SELECT Job.JobId, Job.PersonId, Job.JobName

      FROM	 dbo.Job WHERE JobId=@JobId
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetJobs]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetJobs]
AS   
BEGIN
      SELECT Job.JobId, Job.PersonId, Job.JobName

      FROM	 dbo.Job
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetJobsWhere]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetJobsWhere]
	@PersonId int = null,
	@JobName varchar(100) = null

AS
BEGIN
      SELECT Job.JobId, Job.PersonId, Job.JobName

      FROM	 dbo.Job

	  WHERE	 (@PersonId IS NULL OR (Job.PersonId = @PersonId)) AND
			 (@JobName IS NULL OR (Job.JobName LIKE '%' + @JobName  + '%'))
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetLanguageById]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetLanguageById]
			@LanguageId int
AS
BEGIN
	SELECT	Knowledge_of_language.LanguageId, TypeLanguage.LanguageName, 
			Language_level.LanguageLevelName, Knowledge_of_language.PersonId

	FROM	Knowledge_of_language
	INNER JOIN Language_level ON Language_level.LanguageLevelId=Knowledge_of_language.LanguageLevelId
	INNER JOIN TypeLanguage ON TypeLanguage.TypeLanguageId=Knowledge_of_language.TypeLanguageId

	WHERE	Knowledge_of_language.LanguageId = @LanguageId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_GetLanguageLevel]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetLanguageLevel]
AS
BEGIN
	SELECT	Language_level.LanguageLevelId, Language_level.LanguageLevelName

	FROM	Language_level
END







GO
/****** Object:  StoredProcedure [dbo].[sp_GetLanguageLevelById]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetLanguageLevelById]
	@LanguageLevelId int
AS   
BEGIN
      SELECT Language_level.LanguageLevelId, Language_level.LanguageLevelName

      FROM	 dbo.Language_level

	  WHERE @LanguageLevelId=LanguageLevelId
END







GO
/****** Object:  StoredProcedure [dbo].[sp_GetLanguages]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetLanguages]
AS
BEGIN
	SELECT	Knowledge_of_language.LanguageId, TypeLanguage.LanguageName, 
			Language_level.LanguageLevelName, Knowledge_of_language.PersonId

	FROM	Knowledge_of_language
	INNER JOIN Language_level ON Language_level.LanguageLevelId=Knowledge_of_language.LanguageLevelId
	INNER JOIN TypeLanguage ON TypeLanguage.TypeLanguageId=Knowledge_of_language.TypeLanguageId
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetLanguagesWhere]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetLanguagesWhere]
			@PersonId int = null,
			@LanguageName varchar(100) = null,
			@LanguageLevelName varchar(100) = null
AS
BEGIN
	SELECT	Knowledge_of_language.LanguageId, TypeLanguage.LanguageName, 
			Language_level.LanguageLevelName, Knowledge_of_language.PersonId

	FROM	Knowledge_of_language
	INNER JOIN Language_level ON Language_level.LanguageLevelId=Knowledge_of_language.LanguageLevelId
	INNER JOIN TypeLanguage ON TypeLanguage.TypeLanguageId=Knowledge_of_language.TypeLanguageId

	WHERE	(@PersonId IS NULL OR (Knowledge_of_language.PersonId = @PersonId)) AND
			(@LanguageName IS NULL OR (TypeLanguage.LanguageName LIKE '%' + @LanguageName + '%')) AND
			(@LanguageLevelName IS NULL OR (Language_level.LanguageLevelName LIKE '%' + @LanguageLevelName + '%'))
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetPersonById]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetPersonById]
			@PersonId int
AS
BEGIN
	SELECT	* 
	INTO	#tempEducation 
	FROM	Education
	WHERE	PersonId = @PersonId

	SELECT	* 
	INTO	#tempInterview 
	FROM	Interview
	WHERE	PersonId = @PersonId

	SELECT	Knowledge_of_language.LanguageId, TypeLanguage.LanguageName, 
			Language_level.LanguageLevelName, Knowledge_of_language.PersonId
	INTO	#tempLanguage
	FROM	Knowledge_of_language
	INNER JOIN Language_level ON Language_level.LanguageLevelId=Knowledge_of_language.LanguageLevelId
	INNER JOIN TypeLanguage ON TypeLanguage.TypeLanguageId=Knowledge_of_language.TypeLanguageId
	WHERE	PersonId = @PersonId

	SELECT	*
	INTO	#tempJob
	FROM	Job
	WHERE	PersonId = @PersonId

	SELECT  PersonTypeJob.PersonTypeJobId, PersonTypeJob.PersonId,
		    TypeJob.TypeJobName
	INTO	#tempTypeJob
	FROM	PersonTypeJob 
	INNER JOIN TypeJob ON PersonTypeJob.TypeJobId = TypeJob.TypeJobId 
	WHERE	PersonId = @PersonId

	SELECT	*
	INTO	#tempWorkExpireance
	FROM	Work_experience
	WHERE	PersonId = @PersonId

	SELECT	*
	INTO	#tempProfessionalSkill
	FROM	ProfessionalSkill
	WHERE	PersonId = @PersonId

	SELECT	Person.PersonId, Person.Email, Person.FirstName, 
			Person.LastName, Person.Phone, Person.Salary, 
			Person.Birthday, Person.City,Person.WorkExpireance 
    INTO	#tempPersonTable
	FROM	Person
	WHERE	PersonId = @PersonId
	
	SELECT * FROM #tempPersonTable	
			

	SELECT * FROM #tempEducation
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM #tempInterview
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM #tempLanguage
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM #tempJob
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM #tempTypeJob
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM #tempWorkExpireance
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM #tempProfessionalSkill
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)
END







GO
/****** Object:  StoredProcedure [dbo].[sp_GetPersons]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetPersons]
			@Page					int = 1,
			@Count					int = 10
AS
BEGIN
	SELECT	* 
	INTO	#tempEducation 
	FROM	Education

	SELECT	* 
	INTO	#tempInterview 
	FROM	Interview

	SELECT	Knowledge_of_language.LanguageId, TypeLanguage.LanguageName, 
			Language_level.LanguageLevelName, Knowledge_of_language.PersonId
	INTO	#tempLanguage
	FROM	Knowledge_of_language
	INNER JOIN Language_level ON Language_level.LanguageLevelId=Knowledge_of_language.LanguageLevelId
	INNER JOIN TypeLanguage ON TypeLanguage.TypeLanguageId=Knowledge_of_language.TypeLanguageId

	SELECT	*
	INTO	#tempJob
	FROM	Job

	SELECT  PersonTypeJob.PersonTypeJobId, PersonTypeJob.PersonId,
		    TypeJob.TypeJobName
	INTO	#tempTypeJob
	FROM	PersonTypeJob 
	INNER JOIN TypeJob ON PersonTypeJob.TypeJobId = TypeJob.TypeJobId 

	SELECT	*
	INTO	#tempWorkExpireance
	FROM	Work_experience

	SELECT	*
	INTO	#tempProfessionalSkill
	FROM	ProfessionalSkill

	SELECT DISTINCT	TempPerson.PersonId, TempPerson.Email, TempPerson.FirstName, 
			TempPerson.LastName, TempPerson.Phone, TempPerson.Salary, 
			TempPerson.Birthday, TempPerson.City,TempPerson.WorkExpireance 
    INTO	#tempPersonTable
	FROM	(SELECT PersonTable.PersonId, PersonTable.Email, PersonTable.FirstName, 
						PersonTable.LastName, PersonTable.Phone, PersonTable.Salary, 
						PersonTable.Birthday, PersonTable.City,PersonTable.WorkExpireance, ROW_NUMBER() OVER (ORDER BY PersonTable.PersonId) as row
						FROM (	SELECT DISTINCT	Person.PersonId, Person.Email, Person.FirstName, 
						Person.LastName, Person.Phone, Person.Salary, 
						Person.Birthday, Person.City,Person.WorkExpireance
						 
				FROM	Person
				
	) PersonTable
	) TempPerson
	WHERE (row > ((@Page*@Count)-@Count) and row <= @Page*@Count)
	
	SELECT * FROM #tempPersonTable	
			

	SELECT * FROM #tempEducation
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM #tempInterview
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM #tempLanguage
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM #tempJob
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM #tempTypeJob
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM #tempWorkExpireance
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM #tempProfessionalSkill
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)
END







GO
/****** Object:  StoredProcedure [dbo].[sp_GetPersonsWhere]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetPersonsWhere]
         @Page					int = 1,
			@Count					int = 10,

			@PersonId				int = null,
			@FirstName				varchar(100) = null,
			@LastName				varchar(100) = null,
			@AgeStart				int = null,
			@AgeFinish				int = null,
			@City					varchar(100) = null,
			@Email					varchar(100) = null,
			@Phone					varchar(100) = null,
			@SalaryStart			int = null,
			@SalaryFinish			int = null,
			@WorkExpireanceStart	int = null,
			@WorkExpireanceFinish	int = null,

			@SpecialityName			varchar(100) = null,
			@EducationalInstitutionName	varchar(100) = null,
			@EducationStartDate		date = null,
			@EducationFinishDate	date = null,

			@InterviewStartDate		date = null,
			@InterviewFinishDate	date = null,

			@LanguageName			varchar(100) = null,
			@LanguageLevelName		varchar(100) = null,

			@JobName				varchar(100) = null,

			@TypeJobName			varchar(100) = null,

			@PositionName			varchar(100) = null,
			@CompanyName			varchar(100) = null,
			@ExperienceStartDate	date = null,
			@ExperienceFinishDate	date = null,

			@SkillName				varchar(100) = null
			
AS
BEGIN
	
	SELECT	Knowledge_of_language.LanguageId, TypeLanguage.LanguageName, 
			Language_level.LanguageLevelName, Knowledge_of_language.PersonId
	INTO	#tempLanguage
	FROM	Knowledge_of_language
	INNER JOIN Language_level ON Language_level.LanguageLevelId=Knowledge_of_language.LanguageLevelId
	INNER JOIN TypeLanguage ON TypeLanguage.TypeLanguageId=Knowledge_of_language.TypeLanguageId
	
	SELECT  PersonTypeJob.PersonTypeJobId, PersonTypeJob.PersonId,
		    TypeJob.TypeJobName
	INTO	#tempTypeJob
	FROM	PersonTypeJob 
	INNER JOIN TypeJob ON PersonTypeJob.TypeJobId = TypeJob.TypeJobId 

	SELECT DISTINCT	TempPerson.PersonId, TempPerson.Email, TempPerson.FirstName, 
			TempPerson.LastName, TempPerson.Phone, TempPerson.Salary, 
			TempPerson.Birthday, TempPerson.City,TempPerson.WorkExpireance 
    INTO	#tempPersonTable
	FROM	(SELECT PersonTable.PersonId, PersonTable.Email, PersonTable.FirstName, 
						PersonTable.LastName, PersonTable.Phone, PersonTable.Salary, 
						PersonTable.Birthday, PersonTable.City,PersonTable.WorkExpireance, ROW_NUMBER() OVER (ORDER BY PersonTable.PersonId) as row
						FROM (	SELECT DISTINCT	Person.PersonId, Person.Email, Person.FirstName, 
						Person.LastName, Person.Phone, Person.Salary, 
						Person.Birthday, Person.City,Person.WorkExpireance
						 
				FROM	Person

				INNER JOIN ( SELECT Person.PersonId FROM Person
	LEFT JOIN Education ON Person.PersonId = Education.PersonId
		AND (@SpecialityName IS NULL OR (Education.SpecialityName LIKE '%' + @SpecialityName  + '%')) 
		AND (@EducationalInstitutionName IS NULL OR (Education.EducationalInstitutionName LIKE '%' + @EducationalInstitutionName  + '%')) 
		AND (@EducationStartDate IS NULL OR (Education.StartDate <= @EducationStartDate)) 
		AND	(@EducationFinishDate IS NULL OR (Education.FinishDate >= @EducationFinishDate))

	INNER JOIN Interview ON Person.PersonId = Interview.PersonId
		AND (@InterviewStartDate IS NULL OR (Interview.InterviewDate >= @InterviewStartDate)) 
		AND (@InterviewFinishDate IS NULL OR (Interview.InterviewDate <= @InterviewFinishDate)) 

	INNER JOIN #tempLanguage ON Person.PersonId = #tempLanguage.PersonId 
		AND	(@LanguageName IS NULL OR (#tempLanguage.LanguageName LIKE '%' + @LanguageName + '%')) 
		AND (@LanguageLevelName IS NULL OR (#tempLanguage.LanguageLevelName LIKE '%' + @LanguageLevelName + '%'))
	
	LEFT JOIN Job ON Person.PersonId = Job.PersonId
		AND (@JobName IS NULL OR (Job.JobName LIKE '%' + @JobName  + '%'))

	INNER JOIN #tempTypeJob ON Person.PersonId = #tempTypeJob.PersonId 
		AND (@TypeJobName IS NULL OR (#tempTypeJob.TypeJobName LIKE '%' + @TypeJobName  + '%'))
	
	INNER JOIN Work_experience ON Person.PersonId = Work_experience.PersonId
		AND (@CompanyName IS NULL OR (Work_experience.CompanyName LIKE '%' + @CompanyName + '%')) 
		AND (@PositionName IS NULL OR (Work_experience.PositionName LIKE '%' + @PositionName + '%')) 

	LEFT JOIN ProfessionalSkill ON Person.PersonId = ProfessionalSkill.PersonId
		AND (@SkillName IS NULL OR (ProfessionalSkill.SkillName LIKE '%' + @SkillName  + '%'))) JoinTable
	ON Person.PersonId = JoinTable.PersonId 
				WHERE	(@PersonId IS NULL OR (Person.PersonId = @PersonId)) AND
						(@FirstName IS NULL OR (Person.FirstName LIKE '%' + @FirstName + '%')) AND
						(@LastName IS NULL OR (Person.LastName LIKE '%' + @LastName + '%')) AND
						(@City IS NULL OR (Person.City LIKE '%' + @City + '%')) AND
						(@Email IS NULL OR (Person.Email LIKE '%' + @Email + '%')) AND
						(@Phone IS NULL OR (Person.Phone LIKE '%' + @Phone + '%')) AND
						(@SalaryStart IS NULL OR (Person.Salary >= @SalaryStart)) AND
						(@SalaryFinish IS NULL OR (Person.Salary <= @SalaryFinish)) AND
						(@WorkExpireanceStart IS NULL OR (Person.WorkExpireance >= @WorkExpireanceStart)) AND
						(@WorkExpireanceFinish IS NULL OR (Person.WorkExpireance <= @WorkExpireanceFinish))

	) PersonTable
	) TempPerson
	WHERE (row > ((@Page*@Count)-@Count) and row <= @Page*@Count)
	
	SELECT * FROM #tempPersonTable	
			
	SELECT * FROM Education
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM Interview
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM #tempLanguage
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM Job
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM #tempTypeJob
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM Work_experience
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

	SELECT * FROM ProfessionalSkill
	WHERE PersonId IN (SELECT PersonId FROM #tempPersonTable)

END

GO
/****** Object:  StoredProcedure [dbo].[sp_GetProfessionalSkillById]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetProfessionalSkillById]
    @ProfessionalSkillId int 
AS   
BEGIN
      SELECT ProfessionalSkill.ProfessionalSkillId, ProfessionalSkill.PersonId, 
			 ProfessionalSkill.SkillName

      FROM	 dbo.ProfessionalSkill WHERE ProfessionalSkill.ProfessionalSkillId=@ProfessionalSkillId
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetProfessionalSkills]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetProfessionalSkills]
AS   
BEGIN
      SELECT ProfessionalSkill.ProfessionalSkillId, ProfessionalSkill.PersonId, 
			 ProfessionalSkill.SkillName

      FROM	 dbo.ProfessionalSkill
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetProfessionalSkillsWhere]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetProfessionalSkillsWhere]
	@PersonId int = null,
	@SkillName varchar(100) = null

AS
BEGIN
      SELECT ProfessionalSkill.ProfessionalSkillId, ProfessionalSkill.PersonId, 
			 ProfessionalSkill.SkillName

      FROM	 dbo.ProfessionalSkill

	  WHERE	 (@PersonId IS NULL OR (ProfessionalSkill.PersonId = @PersonId)) AND
			 (@SkillName IS NULL OR (ProfessionalSkill.SkillName LIKE '%' + @SkillName  + '%'))
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetTypeJobById]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetTypeJobById]
    @PersonTypeJobId int 
AS   
BEGIN
      SELECT PersonTypeJob.PersonTypeJobId, PersonTypeJob.PersonId,
			 TypeJob.TypeJobName

      FROM	 dbo.PersonTypeJob 

	  INNER JOIN dbo.TypeJob ON PersonTypeJob.TypeJobId = TypeJob.TypeJobId 

	  WHERE PersonTypeJob.PersonTypeJobId=@PersonTypeJobId
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetTypeJobs]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetTypeJobs]
AS   
BEGIN
      SELECT PersonTypeJob.PersonTypeJobId, PersonTypeJob.PersonId,
			 TypeJob.TypeJobName

      FROM	 dbo.PersonTypeJob 

	  INNER JOIN dbo.TypeJob ON PersonTypeJob.TypeJobId = TypeJob.TypeJobId 
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetTypeJobsName]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetTypeJobsName]
AS
BEGIN
	SELECT	TypeJob.TypeJobId, TypeJob.TypeJobName

	FROM	TypeJob
END







GO
/****** Object:  StoredProcedure [dbo].[sp_GetTypeJobsNameById]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetTypeJobsNameById] 
@TypeLanguageId int 
AS 
BEGIN 
SELECT TypeJob.TypeJobId, TypeJob.TypeJobName 

FROM dbo.TypeJob 

WHERE @TypeLanguageId=TypeJobId 
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_GetTypeJobsWhere]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetTypeJobsWhere]
	@PersonId int = null,
	@TypeJobName varchar(100) = null

AS
BEGIN
      SELECT PersonTypeJob.PersonTypeJobId, PersonTypeJob.PersonId,
			 TypeJob.TypeJobName

      FROM	 dbo.PersonTypeJob 

	  INNER JOIN dbo.TypeJob ON PersonTypeJob.TypeJobId = TypeJob.TypeJobId 

	  WHERE	 (@PersonId IS NULL OR (PersonTypeJob.PersonId = @PersonId)) AND
			 (@TypeJobName IS NULL OR (TypeJob.TypeJobName LIKE '%' + @TypeJobName  + '%'))
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetTypeLanguage]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetTypeLanguage]
AS
BEGIN
	SELECT	TypeLanguage.TypeLanguageId, TypeLanguage.LanguageName

	FROM	TypeLanguage
END





GO
/****** Object:  StoredProcedure [dbo].[sp_GetTypeLanguageById]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetTypeLanguageById]
	@TypeLanguageId int
AS   
BEGIN
      SELECT TypeLanguage.TypeLanguageId, TypeLanguage.LanguageName

      FROM	 dbo.TypeLanguage

	  WHERE @TypeLanguageId=TypeLanguageId
END







GO
/****** Object:  StoredProcedure [dbo].[sp_GetWorkExperienceById]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetWorkExperienceById]
			@WorkExperienceId int
AS
BEGIN
	SELECT	Work_experience.WorkExperienceId,Work_experience.PersonId, 
			Work_experience.PositionName, Work_experience.CompanyName,
			Work_experience.StartDate, Work_experience.FinishDate

	FROM	Work_experience

	WHERE	Work_experience.WorkExperienceId = @WorkExperienceId
END






GO
/****** Object:  StoredProcedure [dbo].[sp_GetWorkExperiences]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetWorkExperiences]
AS
BEGIN
	SELECT	Work_experience.WorkExperienceId,Work_experience.PersonId, 
			Work_experience.PositionName, Work_experience.CompanyName,
			Work_experience.StartDate, Work_experience.FinishDate

	FROM	Work_experience
END








GO
/****** Object:  StoredProcedure [dbo].[sp_GetWorkExperiencesWhere]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetWorkExperiencesWhere]
			@PersonId int = null,
			@CompanyName varchar(100) = null,
			@PositionName varchar(100) = null
AS
BEGIN
	SELECT	Work_experience.WorkExperienceId,Work_experience.PersonId, 
			Work_experience.PositionName, Work_experience.CompanyName,
			Work_experience.StartDate, Work_experience.FinishDate

	FROM	Work_experience

	WHERE	(@PersonId IS NULL OR (Work_experience.PersonId = @PersonId)) AND
			(@CompanyName IS NULL OR (Work_experience.CompanyName LIKE '%' + @CompanyName + '%')) AND
			(@PositionName IS NULL OR (Work_experience.PositionName LIKE '%' + @PositionName + '%'))
END


GO
/****** Object:  StoredProcedure [dbo].[sp_SOme]    Script Date: 21.04.2017 18:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SOme]
AS
BEGIN
	 SELECT * INTO #tmpSortedBooks FROM Person
	Select * FROM Education
	SELECT * from #tmpSortedBooks
	
END
--execute sp_SOme




GO
USE [master]
GO
ALTER DATABASE [C:\intership\HRui\HrApp\App_Data\HRDATABASE.MDF] SET  READ_WRITE 
GO
