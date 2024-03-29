USE [TrainingManagement]
GO
/****** Object:  Table [dbo].[BatchDetails]    Script Date: 9/25/2021 1:34:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchDetails](
	[DId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[TopicsTaken] [nvarchar](200) NULL,
 CONSTRAINT [PK_dbo.BatchDetails] PRIMARY KEY CLUSTERED 
(
	[DId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Batches]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batches](
	[BatchId] [int] IDENTITY(1,1) NOT NULL,
	[BatchName] [varchar](40) NULL,
	[TotalStrength] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colleges]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colleges](
	[CollegeId] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NULL,
	[CollegeName] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[CollegeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](20) NULL,
	[Duration] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fees]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fees](
	[FeeId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](max) NULL,
	[TotalFees] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Fees] PRIMARY KEY CLUSTERED 
(
	[FeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainees]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainees](
	[TraineeId] [int] IDENTITY(1,1) NOT NULL,
	[BatchId] [int] NULL,
	[StateId] [int] NULL,
	[TraineeCode] [varchar](10) NULL,
	[TraineeName] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[TraineeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Batches] ON 

INSERT [dbo].[Batches] ([BatchId], [BatchName], [TotalStrength]) VALUES (1, N' CSD21DN001/002/003_Stage 2', 230)
INSERT [dbo].[Batches] ([BatchId], [BatchName], [TotalStrength]) VALUES (2, N'Full Stack Engineer', 25)
INSERT [dbo].[Batches] ([BatchId], [BatchName], [TotalStrength]) VALUES (4, N' .Net Core  Combined Study', 3)
SET IDENTITY_INSERT [dbo].[Batches] OFF
GO
SET IDENTITY_INSERT [dbo].[Colleges] ON 

INSERT [dbo].[Colleges] ([CollegeId], [StateId], [CollegeName]) VALUES (1, 1, N'St Albert''s College')
INSERT [dbo].[Colleges] ([CollegeId], [StateId], [CollegeName]) VALUES (2, 1, N'St Thomas'' College')
INSERT [dbo].[Colleges] ([CollegeId], [StateId], [CollegeName]) VALUES (3, 2, N'College of engineering')
INSERT [dbo].[Colleges] ([CollegeId], [StateId], [CollegeName]) VALUES (4, 1, N'College of engineering & management Punn')
SET IDENTITY_INSERT [dbo].[Colleges] OFF
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseId], [CourseName], [Duration]) VALUES (1, N'C#', 30)
INSERT [dbo].[Courses] ([CourseId], [CourseName], [Duration]) VALUES (3, N'MVC', 30)
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Fees] ON 

INSERT [dbo].[Fees] ([FeeId], [CourseName], [TotalFees]) VALUES (1, N'Python', 15000)
SET IDENTITY_INSERT [dbo].[Fees] OFF
GO
SET IDENTITY_INSERT [dbo].[States] ON 

INSERT [dbo].[States] ([StateId], [StateName]) VALUES (1, N'Kerala')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (2, N'Tamil Nadu')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (3, N'Karnataka')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (5, N'WB')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (8, N'California')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (9, N'Punjab')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (10, N'Himachal Pradesh')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (11, N'Uthar Pradesh')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (12, N'Telangana')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (13, N'Rajasthan')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (1020, N'New Delhi')
SET IDENTITY_INSERT [dbo].[States] OFF
GO
SET IDENTITY_INSERT [dbo].[Trainees] ON 

INSERT [dbo].[Trainees] ([TraineeId], [BatchId], [StateId], [TraineeCode], [TraineeName]) VALUES (1, 1, 1, N'8989', N'Shalvin P D')
SET IDENTITY_INSERT [dbo].[Trainees] OFF
GO
ALTER TABLE [dbo].[Colleges]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([StateId])
GO
ALTER TABLE [dbo].[Trainees]  WITH CHECK ADD FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batches] ([BatchId])
GO
ALTER TABLE [dbo].[Trainees]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([StateId])
GO
/****** Object:  StoredProcedure [dbo].[spAllColleges]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create procedure [dbo].[spAllColleges] as 
select * from Colleges
GO
/****** Object:  StoredProcedure [dbo].[spAllStates]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spAllStates]
as
select * from States
GO
/****** Object:  StoredProcedure [dbo].[spBatches]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spBatches] (
@type varchar(1), 
@BatchName varchar(40) = null,
@TotalStrength int)
as
	begin
		if @type = 'S'
			select * from Batches
		if @type = 'I'
			insert into Batches values (@BatchName, @TotalStrength)
	end
GO
/****** Object:  StoredProcedure [dbo].[spDeleteCourse]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spDeleteCourse] (@pCourseId int)
as
delete from Courses where CourseId = @pCourseId

GO
/****** Object:  StoredProcedure [dbo].[spDeleteState]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spDeleteState] (@pStateId int)
as
delete from States where StateId = @pStateId
GO
/****** Object:  StoredProcedure [dbo].[spGetBatches]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spGetBatches]
as
	select * from Batches
GO
/****** Object:  StoredProcedure [dbo].[spGetColleges]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spGetColleges]
as
select c.CollegeId, s.StateName, c.CollegeName
from States s, Colleges c where s.StateId= c.StateId
GO
/****** Object:  StoredProcedure [dbo].[spGetCourses]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spGetCourses] 
as
  select * from Courses

GO
/****** Object:  StoredProcedure [dbo].[spGetStateById]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spGetStateById] (@StateId int)
as
select * from States where StateId = @StateId
GO
/****** Object:  StoredProcedure [dbo].[spGetStates]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spGetStates]
as
select * from States
GO
/****** Object:  StoredProcedure [dbo].[spInsertCollege]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spInsertCollege] (@pStateId int, @pCollegeName varchar(40))
as
insert into Colleges values (@pStateId, @pCollegeName)
GO
/****** Object:  StoredProcedure [dbo].[spInsertCourse]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spInsertCourse] (@pCourseName varchar(20), @pDuration int)
as
insert into Courses values (@pCourseName, @pDuration)

GO
/****** Object:  StoredProcedure [dbo].[spInsertState]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create procedure [dbo].[spInsertState] (@pStateName varchar(40))
as
insert into States values (@pStateName)
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCourse]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spUpdateCourse] (@pCourseId int, @pCourseName varchar(20), @pDuration int)
as
UPDATE Courses SET CourseName = @pCourseName, Duration = @pDuration where CourseId = @pCourseId

GO
/****** Object:  StoredProcedure [dbo].[spUpdateState]    Script Date: 9/25/2021 1:34:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spUpdateState] (@pStateId int, @pStateName varchar(40))
as
UPDATE States SET StateName = @pStateName where StateId = @pStateId

GO
