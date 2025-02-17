CREATE DATABASE [KT5];
GO
USE [KT5]
GO
/****** Object:  Table [dbo].[GenderTable]    Script Date: 24.10.2024 14:43:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GenderTable](
	[id] [int] NOT NULL,
	[Gender] [nvarchar](50) NULL,
 CONSTRAINT [PK_GenderTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleTable]    Script Date: 24.10.2024 14:43:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleTable](
	[id] [int] NOT NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_RoleTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 24.10.2024 14:43:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] NOT NULL,
	[UserRole] [int] NULL,
	[SurName] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Seria] [int] NULL,
	[Number] [int] NULL,
	[Birthday] [date] NULL,
	[LastVhod] [nvarchar](50) NULL,
	[TypeVhod] [int] NULL,
	[UserGender] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VhodTable]    Script Date: 24.10.2024 14:43:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VhodTable](
	[id] [int] NOT NULL,
	[TipVhoda] [nvarchar](50) NULL,
 CONSTRAINT [PK_VhodTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GenderTable] ([id], [Gender]) VALUES (1, N'Мужской')
INSERT [dbo].[GenderTable] ([id], [Gender]) VALUES (2, N'Женский')
GO
INSERT [dbo].[RoleTable] ([id], [Role]) VALUES (1, N'Администратор')
INSERT [dbo].[RoleTable] ([id], [Role]) VALUES (2, N'Исполнитель')
INSERT [dbo].[RoleTable] ([id], [Role]) VALUES (3, N'Менеджер')
GO
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (1, 3, N'Акимов', N'Ян', N'Алексеевич', N'gohufreilagrau-3818@yopmail.com', N'akimovya', N'bn069Caj', N'7 817 855 837', 2367, 558134, CAST(N'1993-07-03' AS Date), N'1675231191000    ', 1, 1)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (2, 2, N'Гончарова', N'Ульяна', N'Львовна', N'xawugosune-1385@yopmail.com', N'goncharovaul', N'pW4qZhL!', N'2 309 068 815', 7101, 669343, CAST(N'1975-06-22' AS Date), N'1676296748000    ', 1, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (3, 1, N'Анохина', N'Елизавета', N'Матвеевна', N'leuttevitrafo1998@mail.ru', N'anochinaem', N'y6UNmaJg', N'5 554 448 316', 3455, 719630, CAST(N'1991-08-16' AS Date), N'1676051882000    ', 1, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (4, 3, N'Николаев', N'Илья', N'Владиславович', N'frapreubrulloba1141@yandex.ru', N'nickolaeviv', N'ebOt@4y$', N'3 926 824 442', 2377, 871623, CAST(N'1970-12-22' AS Date), N'1675395308000    ', 1, 1)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (5, 2, N'Уткин', N'Дмитрий', N'Платонович', N'zapramaxesu-7741@yopmail.com', N'utkindp', N'zQt8g@GH', N'8 364 290 386', 8755, 921148, CAST(N'1999-05-04' AS Date), N'1676496955000    ', 2, 1)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (6, 2, N'Куликова', N'Стефания', N'Никитична', N'rouzecroummegre-3899@yopmail.com', N'kulikovasn', N'TCmE7Jon', N'2 839 453 092', 4355, 104594, CAST(N'1994-12-06' AS Date), N'1676146943000    ', 1, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (7, 2, N'Волков', N'Егор', N'Матвеевич', N'ziyeuddocrabri-4748@@yopmail.com', N'volkovem', N'pbgO3Vv5', N'6 213 593 669', 2791, 114390, CAST(N'1995-03-28' AS Date), N'1676485346000    ', 1, 1)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (8, 1, N'Соколова', N'Софья', N'Георгиевна', N'ketameissoinnei-1951@yopmail.com', N'sokolovasg', N'lITaH?Bs', N'4 405 610 314', 5582, 126286, CAST(N'1977-03-27' AS Date), N'1676502184000    ', 2, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (9, 3, N'Голубева', N'Полина', N'Андреевна', N'yipraubaponou-5849@yopmail.com', N'golubevapa', N's|ke*p@~', N'3 319 182 434', 2978, 133653, CAST(N'1975-04-12' AS Date), N'1675576520000    ', 1, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (10, 3, N'Вишневская', N'Мария', N'Андреевна', N'crapedocouca-3572@yopmail.com', N'vishnevskayama', N'OCaywHJZ', N'4 932 193 942', 7512, 141956, CAST(N'1975-12-23' AS Date), NULL, 1, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (11, 3, N'Васильева', N'Арина', N'Данииловна', N'ceigoixakaunni-9227@yopmail.com', N'vasilevad', N'DAWuV%#u', N'4 074 855 030', 5046, 158433, CAST(N'2000-01-22' AS Date), NULL, 2, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (12, 3, N'Павлов', N'Дмитрий', N'Максимович', N'yeimmeiwauzomo-7054@yopmail.com', N'pavlovdm', N'ptoED%zE', N'9 194 782 497', 2460, 169505, CAST(N'1983-10-03' AS Date), N'1675538804000    ', 2, 1)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (13, 2, N'Горбунова', N'Мирослава', N'Артуровна', N'pixil59@gmail.com', N'gorbunovama', N'ZFR2~Zl*', N'4 828 029 580', 3412, 174593, CAST(N'1998-03-03' AS Date), N'1676525424000    ', 1, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (14, 3, N'Демина', N'София', N'Романовна', N'"deummecillummu-4992@mail.ru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (15, 2, N'Петрова', N'Алина', N'Робертовна', N'vilagajaunne-5170@yandex.ru', N'petrovaar', N'z7ZE?8N5', N'7 103 882 563', 5829, 219464, CAST(N'1980-09-23' AS Date), N'1675274216000    ', 1, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (16, 2, N'Плотников', N'Григорий', N'Александрович', N'frusubroppotou656@yandex.ru', N'plotnikovga', N'yh+S4@yc', N'7 594 523 846', 6443, 208059, CAST(N'1991-03-13' AS Date), N'1675883156000    ', 1, 1)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (17, 2, N'Прохорова', N'Есения', N'Тимофеевна', N'vhopkins@lewis-mullen.com', N'prochorovaet', N'wLF186dB', N'6 878 011 332', 7079, 213265, CAST(N'1998-04-14' AS Date), NULL, NULL, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (18, 2, N'Чернов', N'Алексей', N'Егорович', N'nlewis@yahoo.com', N'chernovae', N'Sjkr*1zV', N'4 257 832 253', 8207, 522702, CAST(N'1980-04-16' AS Date), N'1675609542000    ', 1, 1)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (19, 3, N'Горбунов', N'Степан', N'Артёмович', N'garciadavid@mckinney-mcbride.com', N'gorbunovsa', N'hFhK%$JI', N'8 894 494 391', 9307, 232158, CAST(N'1993-07-23' AS Date), N'1676322794000    ', 1, 1)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (20, 2, N'Рябинина', N'Софья', N'Артёмовна', N'loudittoimmolau1900@gmail.com', N'ryabininasa', N'&yw1da4K', N'8 253 018 250', 1357, 242839, CAST(N'1990-06-01' AS Date), NULL, NULL, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (21, 2, N'Козлова', N'Яна', N'Даниловна', N'hittuprofassa4984@mail.com', N'kozlovayd', N'wCH7dl3k', N'3 973 342 086', 1167, 256636, CAST(N'1987-12-21' AS Date), NULL, NULL, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (22, 3, N'Лукьянова', N'Ульяна', N'Олеговна', N'freineiciweijau888@yandex.ru', N'lyckyanovayo', N'JadQ24D5', N'2 415 703 040', 1768, 266986, CAST(N'1981-10-22' AS Date), NULL, NULL, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (23, 2, N'Кондрашова', N'Арина', N'Ивановна', N'jessica84@hotmail.com', N'kondrashovai', N'YlBz$8vJ', N'7 134 628 265', 1710, 427875, CAST(N'1976-12-22' AS Date), N'1675801821000    ', 2, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (24, 3, N'Быкова', N'Виктория', N'Тимуровна', N'nokupekidda2001@gmail.com', N'bykovavt', N'nx8Z$K98', N'8 548 222 331', 1806, 289145, CAST(N'1973-06-14' AS Date), NULL, NULL, 2)
INSERT [dbo].[User] ([id], [UserRole], [SurName], [Name], [MiddleName], [Email], [Login], [Password], [PhoneNumber], [Seria], [Number], [Birthday], [LastVhod], [TypeVhod], [UserGender]) VALUES (25, 2, N'Гуляев', N'Тимофей', N'Даниилович', N'ginaritter@schneider-buchanan.com', N'gylyaevtd', N'lz$kp1?f', N'4 397 136 117', 1587, 291249, CAST(N'1987-02-05' AS Date), N'449585467592593    ', 2, 1)
GO
INSERT [dbo].[VhodTable] ([id], [TipVhoda]) VALUES (1, N'Успешно')
INSERT [dbo].[VhodTable] ([id], [TipVhoda]) VALUES (2, N'Неуспешно')
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_GenderTable] FOREIGN KEY([UserGender])
REFERENCES [dbo].[GenderTable] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_GenderTable]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_RoleTable] FOREIGN KEY([UserRole])
REFERENCES [dbo].[RoleTable] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_RoleTable]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_VhodTable] FOREIGN KEY([TypeVhod])
REFERENCES [dbo].[VhodTable] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_VhodTable]
GO
