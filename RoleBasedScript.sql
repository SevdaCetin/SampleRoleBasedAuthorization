USE [role_based_authorization]
GO
/****** Object:  Table [dbo].[admins]    Script Date: 12/2/2021 5:40:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admins](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[roles_id] [int] NULL,
 CONSTRAINT [PK_admins] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[link_roles_menus]    Script Date: 12/2/2021 5:40:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[link_roles_menus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roles_id] [int] NULL,
	[menus_id] [int] NULL,
 CONSTRAINT [PK_link_roles_menus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menus]    Script Date: 12/2/2021 5:40:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[icon] [varchar](50) NULL,
	[url] [varchar](255) NULL,
	[parent_id] [int] NULL,
 CONSTRAINT [PK_menus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 12/2/2021 5:40:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](255) NULL,
	[description] [text] NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admins] ON 

INSERT [dbo].[admins] ([id], [full_name], [email], [password], [roles_id]) VALUES (1, N'sevda', N'svdsrctn@gmail.com', N'12345', 1)
INSERT [dbo].[admins] ([id], [full_name], [email], [password], [roles_id]) VALUES (4, N'Ahsan Saeed', N'ahsansaeed067@gmail.com', N'12345', 2)
INSERT [dbo].[admins] ([id], [full_name], [email], [password], [roles_id]) VALUES (5, N'Shayan tahir', N'shayan@codinginfinite.com', N'12345', 4)
SET IDENTITY_INSERT [dbo].[admins] OFF
GO
SET IDENTITY_INSERT [dbo].[link_roles_menus] ON 

INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (1, 2, 1)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (2, 2, 2)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (3, 2, 4)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (4, 2, 5)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (5, 2, 6)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (6, 2, 7)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (7, 1, 1)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (8, 1, 2)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (9, 1, 3)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (10, 1, 4)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (11, 1, 5)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (12, 1, 6)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (13, 1, 7)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (14, 4, 1)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (15, 4, 2)
INSERT [dbo].[link_roles_menus] ([id], [roles_id], [menus_id]) VALUES (16, 4, 4)
SET IDENTITY_INSERT [dbo].[link_roles_menus] OFF
GO
SET IDENTITY_INSERT [dbo].[menus] ON 

INSERT [dbo].[menus] ([id], [name], [icon], [url], [parent_id]) VALUES (1, N'Dashboard', N'fa fa-dashboard', N'/', 0)
INSERT [dbo].[menus] ([id], [name], [icon], [url], [parent_id]) VALUES (2, N'Admins', N'fa fa-users', N'#', 0)
INSERT [dbo].[menus] ([id], [name], [icon], [url], [parent_id]) VALUES (3, N'Create Admin', N'fa fa-plus', N'/Admins/Create', 2)
INSERT [dbo].[menus] ([id], [name], [icon], [url], [parent_id]) VALUES (4, N'Manage Admins', N'fa fa-users', N'/Admins/Index', 2)
INSERT [dbo].[menus] ([id], [name], [icon], [url], [parent_id]) VALUES (5, N'Roles', N'fa fa-lock', N'#', 0)
INSERT [dbo].[menus] ([id], [name], [icon], [url], [parent_id]) VALUES (6, N'Create Role', N'fa fa-lock', N'/Roles/Create', 5)
INSERT [dbo].[menus] ([id], [name], [icon], [url], [parent_id]) VALUES (7, N'Manage Roles', N'fa fa-lock', N'/Roles/Index', 5)
SET IDENTITY_INSERT [dbo].[menus] OFF
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([id], [title], [description]) VALUES (1, N'Admin', N'adminlik')
INSERT [dbo].[roles] ([id], [title], [description]) VALUES (2, N'Manager', N'Super Admin with all rights...')
INSERT [dbo].[roles] ([id], [title], [description]) VALUES (3, N'Supervisor', N'Can View Dashboard, Admins & Roles')
INSERT [dbo].[roles] ([id], [title], [description]) VALUES (4, N'Developer', N'Can View Dashboard &  Admins List')
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
ALTER TABLE [dbo].[admins]  WITH CHECK ADD  CONSTRAINT [FK_admins_roles] FOREIGN KEY([roles_id])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[admins] CHECK CONSTRAINT [FK_admins_roles]
GO
ALTER TABLE [dbo].[link_roles_menus]  WITH CHECK ADD  CONSTRAINT [FK_link_roles_menus_menus] FOREIGN KEY([menus_id])
REFERENCES [dbo].[menus] ([id])
GO
ALTER TABLE [dbo].[link_roles_menus] CHECK CONSTRAINT [FK_link_roles_menus_menus]
GO
ALTER TABLE [dbo].[link_roles_menus]  WITH CHECK ADD  CONSTRAINT [FK_link_roles_menus_roles] FOREIGN KEY([roles_id])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[link_roles_menus] CHECK CONSTRAINT [FK_link_roles_menus_roles]
GO
