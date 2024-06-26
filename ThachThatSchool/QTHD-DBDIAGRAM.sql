USE [master]
GO
/****** Object:  Database [QuangTrungHighschool]    Script Date: 11/4/2023 4:14:24 PM ******/
CREATE DATABASE [QuangTrungHighschool]
GO
ALTER DATABASE [QuangTrungHighschool] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [QuangTrungHighschool] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuangTrungHighschool] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuangTrungHighschool] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuangTrungHighschool] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuangTrungHighschool] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuangTrungHighschool] SET  MULTI_USER 
GO
ALTER DATABASE [QuangTrungHighschool] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuangTrungHighschool] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuangTrungHighschool] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuangTrungHighschool] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuangTrungHighschool] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuangTrungHighschool] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuangTrungHighschool] SET QUERY_STORE = OFF
GO
USE [QuangTrungHighschool]
GO
/****** Object:  Table [dbo].[account]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[class]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[class_code] [nvarchar](50) NOT NULL,
	[department_code] [nvarchar](20) NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[class_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classyearsemester]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classyearsemester](
	[class_code] [nvarchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[semester] [int] NOT NULL,
	[homeroom_teacher] [nvarchar](50) NULL,
	[stat_date] [date] NULL,
	[end_date] [date] NULL,
 CONSTRAINT [PK_classyearsemester] PRIMARY KEY CLUSTERED 
(
	[class_code] ASC,
	[year] ASC,
	[semester] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[course_code] [nvarchar](50) NOT NULL,
	[course_name] [nvarchar](50) NOT NULL,
	[type] [int] NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[course_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[department_name] [nvarchar](50) NULL,
	[dean] [nvarchar](50) NULL,
	[department_code] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[department_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feature]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feature](
	[fid] [int] NOT NULL,
	[url] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_feature] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[file_type]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[file_type](
	[file_type_id] [int] NOT NULL,
	[file_type_name] [nvarchar](50) NOT NULL,
	[file_type_image] [nvarchar](4000) NULL,
 CONSTRAINT [PK_file_type] PRIMARY KEY CLUSTERED 
(
	[file_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group](
	[gid] [int] NOT NULL,
	[gname] [nvarchar](50) NULL,
 CONSTRAINT [PK_group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[groupaccount]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groupaccount](
	[gid] [int] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_groupaccount] PRIMARY KEY CLUSTERED 
(
	[gid] ASC,
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[groupfeature]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groupfeature](
	[gid] [int] NOT NULL,
	[fid] [int] NOT NULL,
 CONSTRAINT [PK_groupfeature] PRIMARY KEY CLUSTERED 
(
	[gid] ASC,
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[groupnews]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groupnews](
	[gid] [int] NOT NULL,
	[no] [int] NOT NULL,
 CONSTRAINT [PK_groupnews] PRIMARY KEY CLUSTERED 
(
	[gid] ASC,
	[no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[learning]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[learning](
	[student_code] [nvarchar](50) NOT NULL,
	[class_code] [nvarchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[semester] [int] NOT NULL,
 CONSTRAINT [PK_learning] PRIMARY KEY CLUSTERED 
(
	[student_code] ASC,
	[year] ASC,
	[semester] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mark]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mark](
	[no] [int] IDENTITY(1,1) NOT NULL,
	[student_code] [nvarchar](50) NOT NULL,
	[exam_type] [int] NOT NULL,
	[mark] [float] NOT NULL,
	[class_code] [nvarchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[semester] [int] NOT NULL,
	[course_code] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_mark] PRIMARY KEY CLUSTERED 
(
	[no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[my_file]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[my_file](
	[file_type_id] [int] NOT NULL,
	[file_name] [nvarchar](300) NULL,
	[create_date] [date] NOT NULL,
	[file_url] [varchar](255) NULL,
	[parent_file_id] [int] NULL,
	[student_code] [nvarchar](50) NULL,
	[file_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_my_file] PRIMARY KEY CLUSTERED 
(
	[file_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[news]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[no] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[content] [nvarchar](500) NULL,
	[posted_date] [date] NOT NULL,
	[constructor] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_news] PRIMARY KEY CLUSTERED 
(
	[no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schedule]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schedule](
	[class_code] [nvarchar](50) NOT NULL,
	[course_code] [nvarchar](50) NOT NULL,
	[slot] [int] NOT NULL,
	[date] [date] NOT NULL,
	[semester] [int] NOT NULL,
	[teacher_code] [nvarchar](50) NULL,
	[attendance] [nvarchar](200) NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_schedule_1] PRIMARY KEY CLUSTERED 
(
	[class_code] ASC,
	[slot] ASC,
	[date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[student_code] [nvarchar](50) NOT NULL,
	[student_fullname] [nvarchar](50) NOT NULL,
	[student_address] [nvarchar](50) NULL,
	[student_dob] [date] NOT NULL,
	[student_email] [nvarchar](50) NULL,
	[student_phone] [nvarchar](50) NULL,
	[username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[student_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 11/4/2023 4:14:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[teacher_code] [nvarchar](50) NOT NULL,
	[teacher_fullname] [nvarchar](150) NULL,
	[teacher_address] [nvarchar](200) NULL,
	[teacher_dob] [date] NULL,
	[teacher_email] [nvarchar](200) NULL,
	[teacher_phone] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[teacher_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([username], [password]) VALUES (N'anhnn330666', N'anhbe123')
INSERT [dbo].[account] ([username], [password]) VALUES (N'anhnv330987', N'cofbeos2001')
INSERT [dbo].[account] ([username], [password]) VALUES (N'anhtd132222', N'1')
INSERT [dbo].[account] ([username], [password]) VALUES (N'anhtd139221', N'1')
INSERT [dbo].[account] ([username], [password]) VALUES (N'anhtd139222', N'1')
INSERT [dbo].[account] ([username], [password]) VALUES (N'chinhdq150042', N'1')
INSERT [dbo].[account] ([username], [password]) VALUES (N'giangth1302275', N'1')
INSERT [dbo].[account] ([username], [password]) VALUES (N'hantv985', N'haloptruong1')
INSERT [dbo].[account] ([username], [password]) VALUES (N'hoannd1321975', N'1')
INSERT [dbo].[account] ([username], [password]) VALUES (N'huongpt330537', N'05072001')
INSERT [dbo].[account] ([username], [password]) VALUES (N'huyennt5', N'12345')
INSERT [dbo].[account] ([username], [password]) VALUES (N'kiennt149923', N'1')
INSERT [dbo].[account] ([username], [password]) VALUES (N'lamnt150055', N'1')
INSERT [dbo].[account] ([username], [password]) VALUES (N'lamnt150882', N'1')
INSERT [dbo].[account] ([username], [password]) VALUES (N'linhnp2', N'123')
INSERT [dbo].[account] ([username], [password]) VALUES (N'longvh33983', N'longga123')
INSERT [dbo].[account] ([username], [password]) VALUES (N'minhnv303989', N'taoyeutam123')
INSERT [dbo].[account] ([username], [password]) VALUES (N'namnl330898', N'namdepzai')
INSERT [dbo].[account] ([username], [password]) VALUES (N'nhily330900', N'nhile112001')
INSERT [dbo].[account] ([username], [password]) VALUES (N'phuongnt330789', N'phuong110201')
INSERT [dbo].[account] ([username], [password]) VALUES (N'phuongvt5', N'12345678')
INSERT [dbo].[account] ([username], [password]) VALUES (N'quynhnt2', N'123456789')
INSERT [dbo].[account] ([username], [password]) VALUES (N'sangnv1', N'sang123')
INSERT [dbo].[account] ([username], [password]) VALUES (N'thaint5', N'thai123')
INSERT [dbo].[account] ([username], [password]) VALUES (N'thanhdc330982', N'12345678')
INSERT [dbo].[account] ([username], [password]) VALUES (N'thanhdd330988', N'boycodon123')
GO
INSERT [dbo].[class] ([class_code], [department_code]) VALUES (N'10d4', N'D')
INSERT [dbo].[class] ([class_code], [department_code]) VALUES (N'10d5', N'D')
INSERT [dbo].[class] ([class_code], [department_code]) VALUES (N'10d6', N'D')
INSERT [dbo].[class] ([class_code], [department_code]) VALUES (N'11a1', N'A')
INSERT [dbo].[class] ([class_code], [department_code]) VALUES (N'11d1', N'D')
INSERT [dbo].[class] ([class_code], [department_code]) VALUES (N'11d3', N'D')
INSERT [dbo].[class] ([class_code], [department_code]) VALUES (N'11d5', N'D')
INSERT [dbo].[class] ([class_code], [department_code]) VALUES (N'11d6', N'D')
INSERT [dbo].[class] ([class_code], [department_code]) VALUES (N'12d5', N'D')
GO
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'10d5', 2021, 1, N'huyennt5', CAST(N'2021-09-05' AS Date), CAST(N'2022-01-14' AS Date))
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'10d5', 2021, 2, NULL, CAST(N'2022-01-04' AS Date), CAST(N'2022-05-24' AS Date))
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'10d6', 2021, 1, NULL, CAST(N'2021-09-05' AS Date), CAST(N'2021-12-18' AS Date))
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'10d6', 2021, 2, NULL, CAST(N'2022-01-04' AS Date), CAST(N'2022-05-24' AS Date))
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'11a1', 2021, 1, NULL, CAST(N'2021-09-05' AS Date), CAST(N'2021-12-18' AS Date))
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'11d1', 2021, 1, NULL, CAST(N'2021-09-05' AS Date), CAST(N'2021-12-18' AS Date))
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'11d1', 2021, 2, NULL, CAST(N'2022-01-04' AS Date), CAST(N'2022-05-24' AS Date))
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'11d3', 2021, 1, NULL, CAST(N'2021-09-05' AS Date), CAST(N'2021-12-18' AS Date))
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'11d5', 2021, 1, NULL, CAST(N'2021-09-05' AS Date), CAST(N'2021-12-18' AS Date))
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'11d5', 2023, 1, NULL, CAST(N'2023-11-04' AS Date), CAST(N'2023-12-30' AS Date))
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'11d6', 2021, 1, NULL, CAST(N'2021-09-05' AS Date), CAST(N'2021-12-18' AS Date))
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'11d6', 2021, 2, NULL, CAST(N'2022-01-04' AS Date), CAST(N'2022-05-24' AS Date))
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'12d5', 2021, 1, N'sangnv1', CAST(N'2021-09-05' AS Date), CAST(N'2021-12-18' AS Date))
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'12d5', 2021, 2, NULL, CAST(N'2022-01-04' AS Date), CAST(N'2022-05-24' AS Date))
INSERT [dbo].[classyearsemester] ([class_code], [year], [semester], [homeroom_teacher], [stat_date], [end_date]) VALUES (N'12d5', 2023, 1, N'quynhnt2', CAST(N'2023-05-15' AS Date), CAST(N'2023-08-25' AS Date))
GO
INSERT [dbo].[course] ([course_code], [course_name], [type]) VALUES (N'Bio', N'Biology', 2)
INSERT [dbo].[course] ([course_code], [course_name], [type]) VALUES (N'CC', N'Salute the flag', 0)
INSERT [dbo].[course] ([course_code], [course_name], [type]) VALUES (N'CHEM', N'Chemistry', 2)
INSERT [dbo].[course] ([course_code], [course_name], [type]) VALUES (N'ENG', N'English', 2)
INSERT [dbo].[course] ([course_code], [course_name], [type]) VALUES (N'GEO', N'Geography', 2)
INSERT [dbo].[course] ([course_code], [course_name], [type]) VALUES (N'LIT', N'Literature', 2)
INSERT [dbo].[course] ([course_code], [course_name], [type]) VALUES (N'MAT', N'Mathematics', 2)
INSERT [dbo].[course] ([course_code], [course_name], [type]) VALUES (N'MUSC', N'Music', 1)
INSERT [dbo].[course] ([course_code], [course_name], [type]) VALUES (N'PEDU', N'Physical Education', 1)
INSERT [dbo].[course] ([course_code], [course_name], [type]) VALUES (N'PHY', N'Physics', 2)
GO
INSERT [dbo].[department] ([department_name], [dean], [department_code]) VALUES (N'Ban A', N'phuongvt5', N'A')
INSERT [dbo].[department] ([department_name], [dean], [department_code]) VALUES (N'Ban C', N'quynhnt2', N'C')
INSERT [dbo].[department] ([department_name], [dean], [department_code]) VALUES (N'Ban D', N'huyennt5', N'D')
GO
INSERT [dbo].[feature] ([fid], [url]) VALUES (1, N'/web-student-home')
INSERT [dbo].[feature] ([fid], [url]) VALUES (2, N'/admin-classyearsemester-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (3, N'/admin-classyearsemester-check')
INSERT [dbo].[feature] ([fid], [url]) VALUES (4, N'/admin-classyearsemester-list')
INSERT [dbo].[feature] ([fid], [url]) VALUES (5, N'/admin-classyearsemester-update')
INSERT [dbo].[feature] ([fid], [url]) VALUES (6, N'/admin-classyearsemester-schedule-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (7, N'/admin-classyearsemester-schedule')
INSERT [dbo].[feature] ([fid], [url]) VALUES (8, N'/admin-classyearsemester-schedule-delete')
INSERT [dbo].[feature] ([fid], [url]) VALUES (9, N'/admin-classyearsemester-schedule-update')
INSERT [dbo].[feature] ([fid], [url]) VALUES (10, N'/admin-home')
INSERT [dbo].[feature] ([fid], [url]) VALUES (11, N'/admin-student-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (12, N'/admin-student-check-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (13, N'/admin-student-class-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (14, N'/admin-student-class-delete')
INSERT [dbo].[feature] ([fid], [url]) VALUES (15, N'/admin-student-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (16, N'/admin-student-list')
INSERT [dbo].[feature] ([fid], [url]) VALUES (18, N'/admin-teacher-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (19, N'/admin-teacher-check-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (20, N'/admin-teacher-delete')
INSERT [dbo].[feature] ([fid], [url]) VALUES (21, N'/admin-teacher-list')
INSERT [dbo].[feature] ([fid], [url]) VALUES (22, N'/admin-teacher-update')
INSERT [dbo].[feature] ([fid], [url]) VALUES (23, N'/teacher-home')
INSERT [dbo].[feature] ([fid], [url]) VALUES (24, N'/teacher-detail')
INSERT [dbo].[feature] ([fid], [url]) VALUES (25, N'/teacher-schedule')
INSERT [dbo].[feature] ([fid], [url]) VALUES (26, N'/teacher-schedule-attendance')
INSERT [dbo].[feature] ([fid], [url]) VALUES (27, N'/student-mark')
INSERT [dbo].[feature] ([fid], [url]) VALUES (28, N'/student-mark-delete')
INSERT [dbo].[feature] ([fid], [url]) VALUES (29, N'/student-mark-update')
INSERT [dbo].[feature] ([fid], [url]) VALUES (30, N'/teacher-main-class-list')
INSERT [dbo].[feature] ([fid], [url]) VALUES (31, N'/class-student-list')
INSERT [dbo].[feature] ([fid], [url]) VALUES (32, N'/student-detail')
INSERT [dbo].[feature] ([fid], [url]) VALUES (33, N'/student-attendance')
INSERT [dbo].[feature] ([fid], [url]) VALUES (34, N'/student-class-mark')
INSERT [dbo].[feature] ([fid], [url]) VALUES (35, N'/student-schedule')
INSERT [dbo].[feature] ([fid], [url]) VALUES (36, N'/student-class-liststudent')
INSERT [dbo].[feature] ([fid], [url]) VALUES (37, N'/student-news-detail')
INSERT [dbo].[feature] ([fid], [url]) VALUES (38, N'/teacher-news-detail')
INSERT [dbo].[feature] ([fid], [url]) VALUES (39, N'/admin-news-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (40, N'/admin-news-delete')
INSERT [dbo].[feature] ([fid], [url]) VALUES (41, N'/admin-news-list')
INSERT [dbo].[feature] ([fid], [url]) VALUES (42, N'/admin-news-update')
INSERT [dbo].[feature] ([fid], [url]) VALUES (43, N'/admin-course-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (44, N'/admin-course-check-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (45, N'/admin-class-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (46, N'/admin-class-check-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (47, N'/admin-class-list')
INSERT [dbo].[feature] ([fid], [url]) VALUES (48, N'/admin-department-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (49, N'/admin-department-check-add')
INSERT [dbo].[feature] ([fid], [url]) VALUES (50, N'/admin-department-list')
INSERT [dbo].[feature] ([fid], [url]) VALUES (51, N'/admin-department-update')
INSERT [dbo].[feature] ([fid], [url]) VALUES (52, N'/teacher-main-class-list')
INSERT [dbo].[feature] ([fid], [url]) VALUES (53, N'/class-student-list')
INSERT [dbo].[feature] ([fid], [url]) VALUES (54, N'/student-mark')
GO
INSERT [dbo].[file_type] ([file_type_id], [file_type_name], [file_type_image]) VALUES (1, N'pptx', N'https://www.nicepng.com/png/detail/302-3022902_pptx-file-logo-of-powerpoint-presentation.png')
INSERT [dbo].[file_type] ([file_type_id], [file_type_name], [file_type_image]) VALUES (2, N'docx', N'https://tse4.mm.bing.net/th?id=OIP.jnDNojHk5-kel05zeNllyQHaIK&pid=Api&P=0&h=180')
INSERT [dbo].[file_type] ([file_type_id], [file_type_name], [file_type_image]) VALUES (3, N'folder', N'https://freepngimg.com/thumb/folder/20-folder-png-image.png')
GO
INSERT [dbo].[group] ([gid], [gname]) VALUES (1, N'student')
INSERT [dbo].[group] ([gid], [gname]) VALUES (2, N'teacher')
INSERT [dbo].[group] ([gid], [gname]) VALUES (3, N'homeroom teacher')
INSERT [dbo].[group] ([gid], [gname]) VALUES (4, N'admin')
GO
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (1, N'anhnn330666')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (1, N'anhnv330987')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (1, N'chinhdq150042')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (1, N'hantv985')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (1, N'huongpt330537')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (1, N'lamnt150055')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (1, N'longvh33983')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (1, N'minhnv303989')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (1, N'namnl330898')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (1, N'nhily330900')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (1, N'phuongnt330789')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (1, N'thanhdc330982')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (1, N'thanhdd330988')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (2, N'huyennt5')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (2, N'linhnp2')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (2, N'phuongvt5')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (2, N'quynhnt2')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (2, N'sangnv1')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (3, N'quynhnt2')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (3, N'sangnv1')
INSERT [dbo].[groupaccount] ([gid], [username]) VALUES (4, N'huyennt5')
GO
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (1, 1)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (1, 32)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (1, 33)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (1, 34)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (1, 35)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (1, 36)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (1, 37)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (2, 23)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (2, 24)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (2, 25)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (2, 26)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (2, 38)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (2, 52)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (2, 53)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (2, 54)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (3, 27)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (3, 28)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (3, 29)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (3, 30)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (3, 31)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 2)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 3)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 4)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 5)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 6)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 7)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 8)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 9)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 10)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 12)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 13)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 14)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 15)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 16)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 18)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 19)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 20)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 21)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 22)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 39)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 40)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 41)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 42)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 43)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 44)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 45)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 46)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 47)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 48)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 49)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 50)
INSERT [dbo].[groupfeature] ([gid], [fid]) VALUES (4, 51)
GO
INSERT [dbo].[groupnews] ([gid], [no]) VALUES (1, 1)
INSERT [dbo].[groupnews] ([gid], [no]) VALUES (1, 2)
INSERT [dbo].[groupnews] ([gid], [no]) VALUES (1, 7)
INSERT [dbo].[groupnews] ([gid], [no]) VALUES (2, 1)
INSERT [dbo].[groupnews] ([gid], [no]) VALUES (2, 2)
INSERT [dbo].[groupnews] ([gid], [no]) VALUES (2, 4)
INSERT [dbo].[groupnews] ([gid], [no]) VALUES (2, 7)
INSERT [dbo].[groupnews] ([gid], [no]) VALUES (4, 4)
INSERT [dbo].[groupnews] ([gid], [no]) VALUES (4, 7)
GO
INSERT [dbo].[learning] ([student_code], [class_code], [year], [semester]) VALUES (N'anhnn330666', N'10d5', 2021, 1)
INSERT [dbo].[learning] ([student_code], [class_code], [year], [semester]) VALUES (N'anhnn330666', N'11d5', 2023, 1)
INSERT [dbo].[learning] ([student_code], [class_code], [year], [semester]) VALUES (N'anhnv330987', N'10d5', 2021, 1)
INSERT [dbo].[learning] ([student_code], [class_code], [year], [semester]) VALUES (N'chinhdq150042', N'12d5', 2023, 1)
INSERT [dbo].[learning] ([student_code], [class_code], [year], [semester]) VALUES (N'hantv985', N'10d5', 2021, 1)
INSERT [dbo].[learning] ([student_code], [class_code], [year], [semester]) VALUES (N'hantv985', N'10d6', 2021, 2)
INSERT [dbo].[learning] ([student_code], [class_code], [year], [semester]) VALUES (N'huongpt330537', N'10d5', 2021, 1)
INSERT [dbo].[learning] ([student_code], [class_code], [year], [semester]) VALUES (N'longvh33983', N'10d5', 2019, 1)
INSERT [dbo].[learning] ([student_code], [class_code], [year], [semester]) VALUES (N'minhnv303989', N'10d5', 2021, 1)
INSERT [dbo].[learning] ([student_code], [class_code], [year], [semester]) VALUES (N'namnl330898', N'10d4', 2021, 1)
INSERT [dbo].[learning] ([student_code], [class_code], [year], [semester]) VALUES (N'nhily330900', N'10d5', 2021, 1)
INSERT [dbo].[learning] ([student_code], [class_code], [year], [semester]) VALUES (N'phuongnt330789', N'10d5', 2021, 1)
INSERT [dbo].[learning] ([student_code], [class_code], [year], [semester]) VALUES (N'thanhdc33982', N'10d5', 2021, 1)
INSERT [dbo].[learning] ([student_code], [class_code], [year], [semester]) VALUES (N'thanhdd330988', N'10d5', 2021, 1)
GO
SET IDENTITY_INSERT [dbo].[mark] ON 

INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (28, N'thanhdc33982', 1, 8, N'10d5', 2021, 1, N'LIT')
INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (29, N'thanhdc33982', 2, 8, N'10d5', 2021, 1, N'LIT')
INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (31, N'anhnn330666', 1, 8, N'10d5', 2021, 1, N'LIT')
INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (32, N'thanhdc33982', 0, -1, N'10d5', 2021, 1, N'PEDU')
INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (34, N'thanhdc33982', 1, 7, N'10d5', 2021, 1, N'MAT')
INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (35, N'thanhdc33982', 3, 10, N'10d5', 2021, 1, N'LIT')
INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (36, N'thanhdc33982', 2, 7, N'10d5', 2021, 1, N'MAT')
INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (37, N'thanhdc33982', 2, 8, N'10d5', 2021, 1, N'MAT')
INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (38, N'thanhdc33982', 3, 8, N'10d5', 2021, 1, N'MAT')
INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (39, N'anhnn330666', 2, 7, N'10d5', 2021, 1, N'LIT')
INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (40, N'anhnn330666', 3, 9.5, N'10d5', 2021, 1, N'LIT')
INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (41, N'anhnn330666', 1, 5, N'10d5', 2021, 1, N'ENG')
INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (42, N'anhnn330666', 2, 10, N'10d5', 2021, 1, N'ENG')
INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (43, N'anhnn330666', 3, 10, N'10d5', 2021, 1, N'ENG')
INSERT [dbo].[mark] ([no], [student_code], [exam_type], [mark], [class_code], [year], [semester], [course_code]) VALUES (44, N'anhnn330666', 0, -2, N'10d5', 2021, 1, N'PEDU')
SET IDENTITY_INSERT [dbo].[mark] OFF
GO
SET IDENTITY_INSERT [dbo].[my_file] ON 

INSERT [dbo].[my_file] ([file_type_id], [file_name], [create_date], [file_url], [parent_file_id], [student_code], [file_id]) VALUES (1, N'PRJ301-SE1616.docx', CAST(N'2023-05-22' AS Date), N'', NULL, N'thanhdd330988', 5)
INSERT [dbo].[my_file] ([file_type_id], [file_name], [create_date], [file_url], [parent_file_id], [student_code], [file_id]) VALUES (1, N'dau-bietu-ngujpg.jpg', CAST(N'2023-05-22' AS Date), N'', NULL, N'thanhdd330988', 6)
INSERT [dbo].[my_file] ([file_type_id], [file_name], [create_date], [file_url], [parent_file_id], [student_code], [file_id]) VALUES (1, N'Ý-tưởng-đồ-án-SU23.docx', CAST(N'2023-05-22' AS Date), N'', NULL, N'thanhdd330988', 7)
INSERT [dbo].[my_file] ([file_type_id], [file_name], [create_date], [file_url], [parent_file_id], [student_code], [file_id]) VALUES (3, N'default', CAST(N'2023-05-23' AS Date), N'', NULL, N'thanhdd330988', 9)
INSERT [dbo].[my_file] ([file_type_id], [file_name], [create_date], [file_url], [parent_file_id], [student_code], [file_id]) VALUES (3, N'default', CAST(N'2023-05-23' AS Date), N'', NULL, N'thanhdd330988', 10)
INSERT [dbo].[my_file] ([file_type_id], [file_name], [create_date], [file_url], [parent_file_id], [student_code], [file_id]) VALUES (1, N'Screenshot 2023-01-11 001027.png', CAST(N'2023-05-23' AS Date), N'', 9, N'thanhdd330988', 11)
INSERT [dbo].[my_file] ([file_type_id], [file_name], [create_date], [file_url], [parent_file_id], [student_code], [file_id]) VALUES (1, N'co-NA.jpg', CAST(N'2023-05-23' AS Date), N'', 10, N'thanhdd330988', 12)
INSERT [dbo].[my_file] ([file_type_id], [file_name], [create_date], [file_url], [parent_file_id], [student_code], [file_id]) VALUES (3, N'default', CAST(N'2023-05-23' AS Date), N'', NULL, N'thanhdd330988', 13)
INSERT [dbo].[my_file] ([file_type_id], [file_name], [create_date], [file_url], [parent_file_id], [student_code], [file_id]) VALUES (3, N'default', CAST(N'2023-05-23' AS Date), N'', NULL, N'thanhdd330988', 14)
INSERT [dbo].[my_file] ([file_type_id], [file_name], [create_date], [file_url], [parent_file_id], [student_code], [file_id]) VALUES (3, N'default', CAST(N'2023-05-23' AS Date), N'', 13, N'thanhdd330988', 15)
SET IDENTITY_INSERT [dbo].[my_file] OFF
GO
SET IDENTITY_INSERT [dbo].[news] ON 

INSERT [dbo].[news] ([no], [title], [content], [posted_date], [constructor]) VALUES (1, N'Notice about parent schedule meeting 31/10/2021', N'On Saturday October 30, 2021, Quang Trung Ha Dong High School will hold a parent meeting for students from Grade 10 to Grade 12. Parents are requested to arrive on time.
            ', CAST(N'2021-10-27' AS Date), N'huyennt5')
INSERT [dbo].[news] ([no], [title], [content], [posted_date], [constructor]) VALUES (2, N'Notice about  letters and arts for 20/11', N'On November 13th, the school will hold an art competition to celebrate Vietnamese Teachers'' Day on November 20. Each class will practice together with 2 pieces to perform.Regard!', CAST(N'2021-10-27' AS Date), N'huyennt5')
INSERT [dbo].[news] ([no], [title], [content], [posted_date], [constructor]) VALUES (4, N'20/11 Picnic Schedule', N'On November 20th, lecturers and the delegation will organize a picnic in Phong Nha Ke Bang garden.I look forward to the full presence of all the staff of the school.', CAST(N'2021-10-28' AS Date), N'huyennt5')
INSERT [dbo].[news] ([no], [title], [content], [posted_date], [constructor]) VALUES (7, N'Thông báo về kết quả cuộc thi văn nghệ 20/11', N'Chúc mừng lớp 10d5 đạt giải nhất với cá nhân xuất sắc Đinh Công Thành', CAST(N'2021-10-30' AS Date), N'huyennt5')
SET IDENTITY_INSERT [dbo].[news] OFF
GO
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'MAT', 1, CAST(N'2021-09-06' AS Date), 1, N'phuongvt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'CC', 1, CAST(N'2021-11-01' AS Date), 1, NULL, NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'LIT', 1, CAST(N'2021-11-08' AS Date), 1, N'huyennt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'Bio', 1, CAST(N'2021-11-09' AS Date), 1, N'quynhnt2', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'LIT', 1, CAST(N'2021-11-10' AS Date), 1, N'huyennt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'MUSC', 1, CAST(N'2021-11-11' AS Date), 1, N'linhnp2', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'LIT', 1, CAST(N'2021-11-12' AS Date), 1, N'huyennt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'ENG', 1, CAST(N'2022-01-14' AS Date), 1, N'phuongvt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'LIT', 1, CAST(N'2022-02-25' AS Date), 2, N'huyennt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'LIT', 2, CAST(N'2021-11-01' AS Date), 1, N'huyennt5', N'anhnv330987,minhnv303989,phuongnt330789,thanhdd330988,', 2)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'LIT', 2, CAST(N'2021-11-08' AS Date), 1, N'huyennt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'GEO', 2, CAST(N'2021-11-09' AS Date), 1, N'quynhnt2', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'LIT', 2, CAST(N'2021-11-10' AS Date), 1, N'huyennt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'LIT', 2, CAST(N'2021-11-11' AS Date), 1, N'huyennt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'MAT', 2, CAST(N'2021-11-12' AS Date), 1, N'phuongvt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'LIT', 2, CAST(N'2022-02-25' AS Date), 2, N'huyennt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'LIT', 3, CAST(N'2021-11-01' AS Date), 1, N'huyennt5', N'thanhdc33982,', 2)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'MAT', 3, CAST(N'2021-11-08' AS Date), 1, N'phuongvt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'MAT', 3, CAST(N'2021-11-09' AS Date), 1, N'phuongvt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'MAT', 3, CAST(N'2021-11-10' AS Date), 1, N'phuongvt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'PEDU', 3, CAST(N'2021-11-11' AS Date), 1, N'sangnv1', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'ENG', 3, CAST(N'2021-11-12' AS Date), 1, N'quynhnt2', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'PEDU', 4, CAST(N'2021-11-01' AS Date), 1, N'sangnv1', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'MAT', 4, CAST(N'2021-11-08' AS Date), 1, N'phuongvt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'GEO', 4, CAST(N'2021-11-10' AS Date), 1, N'quynhnt2', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'PHY', 4, CAST(N'2021-11-11' AS Date), 1, N'linhnp2', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'ENG', 4, CAST(N'2021-11-12' AS Date), 1, N'quynhnt2', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'PEDU', 5, CAST(N'2021-11-08' AS Date), 1, N'sangnv1', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d5', N'MAT', 5, CAST(N'2021-11-11' AS Date), 1, N'phuongvt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d6', N'CC', 1, CAST(N'2021-11-01' AS Date), 1, NULL, NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d6', N'PEDU', 2, CAST(N'2021-11-01' AS Date), 1, N'sangnv1', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'10d6', N'LIT', 3, CAST(N'2021-11-01' AS Date), 1, N'phuongvt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'11d5', N'LIT', 1, CAST(N'2021-09-06' AS Date), 1, N'huyennt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'11d5', N'LIT', 1, CAST(N'2021-11-01' AS Date), 1, N'huyennt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'11d5', N'ENG', 1, CAST(N'2023-11-06' AS Date), 1, N'linhnp2', N'', 2)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'11d6', N'CC', 1, CAST(N'2021-11-01' AS Date), 1, NULL, NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'12d5', N'ENG', 1, CAST(N'2023-05-16' AS Date), 1, N'quynhnt2', NULL, 2)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'12d5', N'LIT', 1, CAST(N'2023-08-20' AS Date), 1, N'huyennt5', NULL, NULL)
INSERT [dbo].[schedule] ([class_code], [course_code], [slot], [date], [semester], [teacher_code], [attendance], [active]) VALUES (N'12d5', N'LIT', 2, CAST(N'2023-05-16' AS Date), 1, N'huyennt5', N'chinhdq150042,', 2)
GO
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'anhnn330666', N'  Nguyen Ngoc Anh  ', N'   Da Sy,Kien Hung,Ha Dong ', CAST(N'2001-06-05' AS Date), N'', N'0866324403', N'anhnn330666')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'anhnv330987', N'Nguyen Vu Anh', NULL, CAST(N'2001-10-17' AS Date), NULL, NULL, N'anhnv330987')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'anhtd132222', N'Tran Duc Anh', NULL, CAST(N'0001-01-01' AS Date), N'tranducanh12@gmail.com', N'0932677221', N'anhtd132222')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'anhtd139221', N'Tran Duc Anh', NULL, CAST(N'0001-01-01' AS Date), N'tranducanh12@gmail.com', N'0932677221', N'anhtd139221')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'anhtd139222', N'Tran Duc Anh', NULL, CAST(N'0001-01-01' AS Date), N'tranducanh12@gmail.com', N'0932677221', N'anhtd139222')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'chinhdq150042', N' Dao Quang Chinh ', N' Thai Binh ', CAST(N'0001-01-01' AS Date), N'', N'  0866624403', N'chinhdq150042')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'giangth1302275', N'To Huong Giang', NULL, CAST(N'0001-01-01' AS Date), N'togiang@gmail.com', N'0966721313', N'giangth1302275')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'hantv985', N' Nghiem Thi Viet Ha ', N' Da Sy,Kien Hung,Ha Dong ', CAST(N'2001-02-03' AS Date), N'', N'  ', N'hantv985')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'hoannd1321975', N'Nguyen Dinh Hoan', NULL, CAST(N'0001-01-01' AS Date), N'hoanhehe@gmail.com', N'0966723313', N'hoannd1321975')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'huongpt330537', N'Pham Thu Huong', NULL, CAST(N'2001-07-05' AS Date), NULL, NULL, N'huongpt330537')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'kiennt149923', N'Nguyen Trung Kien', NULL, CAST(N'0001-01-01' AS Date), N'kiennt@gmail.com', N'0866677223', N'kiennt149923')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'lamnt150055', N'Nguyen Thanh Lam', N'Hai Duong', CAST(N'2003-06-11' AS Date), N'canh1997@gmail.com', N'0866624403', N'lamnt150055')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'lamnt150882', N'Tran Duc Anh', NULL, CAST(N'0001-01-01' AS Date), N'tranducanh12@gmail.com', N'0932677221', N'lamnt150882')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'longvh33983', N'Vu Hoang Long', NULL, CAST(N'2001-11-11' AS Date), NULL, NULL, N'longvh33983')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'minhnv303989', N'Nguyen Van Minh', N'Xom', CAST(N'2001-06-25' AS Date), NULL, NULL, N'minhnv303989')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'namnl330898', N'Le Hoai Nam', NULL, CAST(N'2001-07-07' AS Date), NULL, NULL, N'namnl330898')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'nhily330900', N'Le Yen Nhi', N'Xa La,Ha Dong,Ha Noi', CAST(N'2001-01-01' AS Date), NULL, NULL, N'nhily330900')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'phuongnt330789', N'Nguyen Trung Phuong', NULL, CAST(N'2001-02-11' AS Date), NULL, NULL, N'phuongnt330789')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'thaint3347232', N'Nguyen The Thai', N'Van Canh , Ha Noi', CAST(N'2001-04-05' AS Date), N'thainguyen@gmail.com', NULL, N'thaint5')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'thanhdc33982', N'Dinh Cong Thanh', N'CTB6B,Kien Hung,Ha Dong,Ha noi', CAST(N'2001-09-09' AS Date), N'thanhdo9901@gmail.com', N'', N'thanhdc330982')
INSERT [dbo].[student] ([student_code], [student_fullname], [student_address], [student_dob], [student_email], [student_phone], [username]) VALUES (N'thanhdd330988', N'Dang Dinh Thanh', NULL, CAST(N'2001-01-11' AS Date), NULL, NULL, N'thanhdd330988')
GO
INSERT [dbo].[teacher] ([teacher_code], [teacher_fullname], [teacher_address], [teacher_dob], [teacher_email], [teacher_phone], [username]) VALUES (N'huyennt5', N'Nguyen Thu Huyen', N'Ngo 2,Ngo Thi Nham, Ha Dong,Ha Noi', CAST(N'1987-09-07' AS Date), N'', N'', N'huyennt5')
INSERT [dbo].[teacher] ([teacher_code], [teacher_fullname], [teacher_address], [teacher_dob], [teacher_email], [teacher_phone], [username]) VALUES (N'linhnp2', N'Nguyen Phuong Linh', NULL, CAST(N'1999-07-07' AS Date), NULL, NULL, N'linhnp2')
INSERT [dbo].[teacher] ([teacher_code], [teacher_fullname], [teacher_address], [teacher_dob], [teacher_email], [teacher_phone], [username]) VALUES (N'phuongvt5', N'Vu Thi Phuong', NULL, CAST(N'1989-07-27' AS Date), NULL, NULL, N'phuongvt5')
INSERT [dbo].[teacher] ([teacher_code], [teacher_fullname], [teacher_address], [teacher_dob], [teacher_email], [teacher_phone], [username]) VALUES (N'quynhnt2', N'Nguyen Thi Quynh', NULL, CAST(N'1967-07-09' AS Date), NULL, NULL, N'quynhnt2')
INSERT [dbo].[teacher] ([teacher_code], [teacher_fullname], [teacher_address], [teacher_dob], [teacher_email], [teacher_phone], [username]) VALUES (N'sangnv1', N'Nguyen Van Sang', N'', CAST(N'1996-07-07' AS Date), N'', N'', N'sangnv1')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__teacher__F3DBC5725D0A80A0]    Script Date: 11/4/2023 4:14:27 PM ******/
ALTER TABLE [dbo].[teacher] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[class]  WITH CHECK ADD FOREIGN KEY([department_code])
REFERENCES [dbo].[department] ([department_code])
GO
ALTER TABLE [dbo].[classyearsemester]  WITH CHECK ADD  CONSTRAINT [FK_class] FOREIGN KEY([class_code])
REFERENCES [dbo].[class] ([class_code])
GO
ALTER TABLE [dbo].[classyearsemester] CHECK CONSTRAINT [FK_class]
GO
ALTER TABLE [dbo].[classyearsemester]  WITH CHECK ADD  CONSTRAINT [FK_homeroomteacher] FOREIGN KEY([homeroom_teacher])
REFERENCES [dbo].[teacher] ([teacher_code])
GO
ALTER TABLE [dbo].[classyearsemester] CHECK CONSTRAINT [FK_homeroomteacher]
GO
ALTER TABLE [dbo].[department]  WITH CHECK ADD FOREIGN KEY([dean])
REFERENCES [dbo].[teacher] ([teacher_code])
GO
ALTER TABLE [dbo].[groupaccount]  WITH CHECK ADD  CONSTRAINT [FK_groupaccount_account] FOREIGN KEY([username])
REFERENCES [dbo].[account] ([username])
GO
ALTER TABLE [dbo].[groupaccount] CHECK CONSTRAINT [FK_groupaccount_account]
GO
ALTER TABLE [dbo].[groupaccount]  WITH CHECK ADD  CONSTRAINT [FK_groupaccount_group] FOREIGN KEY([gid])
REFERENCES [dbo].[group] ([gid])
GO
ALTER TABLE [dbo].[groupaccount] CHECK CONSTRAINT [FK_groupaccount_group]
GO
ALTER TABLE [dbo].[groupfeature]  WITH CHECK ADD  CONSTRAINT [FK_groupfeature_feature] FOREIGN KEY([fid])
REFERENCES [dbo].[feature] ([fid])
GO
ALTER TABLE [dbo].[groupfeature] CHECK CONSTRAINT [FK_groupfeature_feature]
GO
ALTER TABLE [dbo].[groupfeature]  WITH CHECK ADD  CONSTRAINT [FK_groupfeature_group] FOREIGN KEY([gid])
REFERENCES [dbo].[group] ([gid])
GO
ALTER TABLE [dbo].[groupfeature] CHECK CONSTRAINT [FK_groupfeature_group]
GO
ALTER TABLE [dbo].[groupnews]  WITH CHECK ADD  CONSTRAINT [FK_groupnews_group] FOREIGN KEY([gid])
REFERENCES [dbo].[group] ([gid])
GO
ALTER TABLE [dbo].[groupnews] CHECK CONSTRAINT [FK_groupnews_group]
GO
ALTER TABLE [dbo].[groupnews]  WITH CHECK ADD  CONSTRAINT [FK_groupnews_news] FOREIGN KEY([no])
REFERENCES [dbo].[news] ([no])
GO
ALTER TABLE [dbo].[groupnews] CHECK CONSTRAINT [FK_groupnews_news]
GO
ALTER TABLE [dbo].[learning]  WITH CHECK ADD  CONSTRAINT [FK__learning__class___6A30C649] FOREIGN KEY([class_code])
REFERENCES [dbo].[class] ([class_code])
GO
ALTER TABLE [dbo].[learning] CHECK CONSTRAINT [FK__learning__class___6A30C649]
GO
ALTER TABLE [dbo].[learning]  WITH CHECK ADD  CONSTRAINT [FK_learning_student] FOREIGN KEY([student_code])
REFERENCES [dbo].[student] ([student_code])
GO
ALTER TABLE [dbo].[learning] CHECK CONSTRAINT [FK_learning_student]
GO
ALTER TABLE [dbo].[mark]  WITH CHECK ADD  CONSTRAINT [FK_mark_class] FOREIGN KEY([class_code])
REFERENCES [dbo].[class] ([class_code])
GO
ALTER TABLE [dbo].[mark] CHECK CONSTRAINT [FK_mark_class]
GO
ALTER TABLE [dbo].[mark]  WITH CHECK ADD  CONSTRAINT [FK_mark_course] FOREIGN KEY([course_code])
REFERENCES [dbo].[course] ([course_code])
GO
ALTER TABLE [dbo].[mark] CHECK CONSTRAINT [FK_mark_course]
GO
ALTER TABLE [dbo].[mark]  WITH CHECK ADD  CONSTRAINT [FK_mark_student] FOREIGN KEY([student_code])
REFERENCES [dbo].[student] ([student_code])
GO
ALTER TABLE [dbo].[mark] CHECK CONSTRAINT [FK_mark_student]
GO
ALTER TABLE [dbo].[my_file]  WITH CHECK ADD  CONSTRAINT [FK_my_file_file_type] FOREIGN KEY([file_type_id])
REFERENCES [dbo].[file_type] ([file_type_id])
GO
ALTER TABLE [dbo].[my_file] CHECK CONSTRAINT [FK_my_file_file_type]
GO
ALTER TABLE [dbo].[my_file]  WITH CHECK ADD  CONSTRAINT [FK_my_file_my_file] FOREIGN KEY([parent_file_id])
REFERENCES [dbo].[my_file] ([file_id])
GO
ALTER TABLE [dbo].[my_file] CHECK CONSTRAINT [FK_my_file_my_file]
GO
ALTER TABLE [dbo].[my_file]  WITH CHECK ADD  CONSTRAINT [FK_my_file_student] FOREIGN KEY([student_code])
REFERENCES [dbo].[student] ([student_code])
GO
ALTER TABLE [dbo].[my_file] CHECK CONSTRAINT [FK_my_file_student]
GO
ALTER TABLE [dbo].[news]  WITH CHECK ADD  CONSTRAINT [FK_news_constructor] FOREIGN KEY([constructor])
REFERENCES [dbo].[account] ([username])
GO
ALTER TABLE [dbo].[news] CHECK CONSTRAINT [FK_news_constructor]
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD FOREIGN KEY([course_code])
REFERENCES [dbo].[course] ([course_code])
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [FK_schedule_class_847GNY4] FOREIGN KEY([class_code])
REFERENCES [dbo].[class] ([class_code])
GO
ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [FK_schedule_class_847GNY4]
GO
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [FK_teacher] FOREIGN KEY([teacher_code])
REFERENCES [dbo].[teacher] ([teacher_code])
GO
ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [FK_teacher]
GO
ALTER TABLE [dbo].[student]  WITH CHECK ADD  CONSTRAINT [FK_username] FOREIGN KEY([username])
REFERENCES [dbo].[account] ([username])
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [FK_username]
GO
ALTER TABLE [dbo].[teacher]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[account] ([username])
GO
USE [master]
GO
ALTER DATABASE [QuangTrungHighschool] SET  READ_WRITE 
GO
