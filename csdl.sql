USE [master]
GO
/****** Object:  Database [AptechStore]    Script Date: 1/16/2021 11:50:50 AM ******/
CREATE DATABASE [AptechStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AptechStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\AptechStore.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AptechStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\AptechStore_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AptechStore] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AptechStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AptechStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AptechStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AptechStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AptechStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AptechStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [AptechStore] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AptechStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AptechStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AptechStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AptechStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AptechStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AptechStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AptechStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AptechStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AptechStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AptechStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AptechStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AptechStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AptechStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AptechStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AptechStore] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AptechStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AptechStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AptechStore] SET  MULTI_USER 
GO
ALTER DATABASE [AptechStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AptechStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AptechStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AptechStore] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AptechStore] SET DELAYED_DURABILITY = DISABLED 
GO
USE [AptechStore]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/16/2021 11:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/16/2021 11:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/16/2021 11:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/16/2021 11:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/16/2021 11:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/16/2021 11:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/16/2021 11:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[District] [nvarchar](max) NULL,
	[Ward] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/16/2021 11:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/16/2021 11:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 1/16/2021 11:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderHeaders]    Script Date: 1/16/2021 11:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[OrderTotal] [float] NOT NULL,
	[OrderStatus] [nvarchar](max) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[TransactionId] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[District] [nvarchar](max) NOT NULL,
	[Ward] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/16/2021 11:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[Author] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 1/16/2021 11:50:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCarts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210116035121_initDB', N'3.1.10')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'18da2b61-7d23-48d7-a773-993201e55e01', N'Admin', N'ADMIN', N'6d757bd6-839d-4234-ad5c-a038669c7be6')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8ea7b85c-18e0-418b-b1b5-fbd69bc8c26b', N'Customer', N'CUSTOMER', N'6418ea03-1ca0-494e-ac5b-d0911aa3c32c')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e2cdd942-0d04-4947-87db-63bff414d752', N'Employee', N'EMPLOYEE', N'afe01dad-f2c3-4781-b050-f93f5498acdd')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'55a7de06-815e-45b5-9e3b-bf60404e48ae', N'18da2b61-7d23-48d7-a773-993201e55e01')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [Name], [StreetAddress], [City], [District], [Ward]) VALUES (N'55a7de06-815e-45b5-9e3b-bf60404e48ae', N'tinsatthu1988@gmail.com', N'TINSATTHU1988@GMAIL.COM', N'tinsatthu1988@gmail.com', N'TINSATTHU1988@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEBEODIRO7Lz0ZMt1vQQ0BZfWlLh/UM4UiBHjVWaV3uph0WuRsivttHdKHix3y5RTJg==', N'7MYF7OERWHPDZWOH3UDVLEDKEQNUV3OK', N'626cdcc3-68af-4581-8838-9c72af695f19', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Nguyễn Đức Tín', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Memoir')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Fiction')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Film')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Count], [Price]) VALUES (1, 2, 1, 4, 55)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[OrderHeaders] ON 

INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [OrderTotal], [OrderStatus], [PaymentStatus], [PaymentDate], [TransactionId], [PhoneNumber], [StreetAddress], [City], [District], [Ward], [Name]) VALUES (2, N'55a7de06-815e-45b5-9e3b-bf60404e48ae', CAST(N'2021-01-16 11:19:54.1759464' AS DateTime2), 220, N'Pending', N'Pending', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), NULL, N'0969765264', N'133 Trương Đăng Quế, Phường 3, Quận Gò Vấp', N'Hồ Chí Minh', N'11', N'12', N'Nguyễn Đức Tín')
SET IDENTITY_INSERT [dbo].[OrderHeaders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Title], [Description], [Price], [Author], [ImageUrl], [Quantity], [CategoryId]) VALUES (1, N'A Promised Land', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">A riveting, deeply personal account of history in the making&mdash;from the president who inspired us to believe in the power of democracy</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><br style="box-sizing: border-box;" />In the stirring, highly anticipated first volume of his presidential memoirs, Barack Obama tells the story of his improbable odyssey from young man searching for his identity to leader of the free world, describing in strikingly personal detail both his political education and the landmark moments of the first term of his historic presidency&mdash;a time of dramatic transformation and turmoil.</p>', 55, N'BARACK OBAMA', N'\images\products\b0fa1c30-d596-4ed6-b4ea-2137081e2fb3.jpg', 10, 1)
INSERT [dbo].[Products] ([Id], [Title], [Description], [Price], [Author], [ImageUrl], [Quantity], [CategoryId]) VALUES (2, N'Field Notes', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">When Julia Zarankin saw her first red-winged blackbird at the age of thirty-five, she didn&rsquo;t expect that it would change her life. Recently divorced and auditioning hobbies during a stressful career transition, she stumbled on birdwatching, initially out of curiosity for the strange breed of humans who wear multi-pocketed vests, carry spotting scopes and discuss the finer points of optics with disturbing fervour. What she never could have predicted was that she would become one of them. Not only would she come to identify proudly as a birder, but birding would ultimately lead her to find love, uncover a new language and lay down her roots.</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><em style="box-sizing: border-box;">Field Notes from an Unintentional Birder</em>&nbsp;tells the story of finding meaning in midlife through birds. The book follows the peregrinations of a narrator who learns more from birds than she ever anticipated, as she begins to realize that she herself is a migratory species: born in the former Soviet Union, growing up in Vancouver and Toronto, studying and working in the United States and living in Paris. Coming from a Russian immigrant family of concert pianists who believed that the outdoors were for &ldquo;other people,&rdquo; Julia Zarankin recounts the challenges and joys of unexpectedly discovering one&rsquo;s wild side and finding one&rsquo;s tribe in the unlikeliest of places.</p>', 25, N'JULIA ZARANKIN (CA)', N'\images\products\cbc7d271-e4a9-4f6c-8bea-48924b8a4f8f.jpg', 25, 1)
INSERT [dbo].[Products] ([Id], [Title], [Description], [Price], [Author], [ImageUrl], [Quantity], [CategoryId]) VALUES (3, N'Joe Biden', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">A concise, brilliant, and trenchant examination of Democratic Nominee Joseph R. Biden Jr.&rsquo;s lifelong quest for the presidency by National Book Award winner Evan Osnos, adapted from nearly a decade of his reporting for&nbsp;<em style="box-sizing: border-box;">The New Yorker</em>.</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><br style="box-sizing: border-box;" />Former vice president Joseph R. Biden Jr. has been called both the luckiest man and the unluckiest&mdash;fortunate to have sustained a fifty-year political career that reached the White House, but also marked by deep personal losses and disappointments that he has suffered.</p>', 32, N'EVAN OSNOS', N'\images\products\7c35c41a-0228-4ce9-a7ae-d26e01fec3a4.jpg', 20, 1)
INSERT [dbo].[Products] ([Id], [Title], [Description], [Price], [Author], [ImageUrl], [Quantity], [CategoryId]) VALUES (4, N'Vesper Flights', N'<p><span style="box-sizing: border-box; font-weight: bold; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">From the bestselling author of&nbsp;<em style="box-sizing: border-box;">H is for Hawk</em>, a brilliant and insightful work about our relationship to the natural world</span><br style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;" /><br style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;" /><span style="color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Our world is a fascinating place, teeming not only with natural wonders that defy description, but complex interactions that create layers of meaning. Helen Macdonald is gifted with a special lens that seems to peer right through it all, and she shares her insights--at times startling, nostalgic, weighty, or simply entertaining--in this masterful collection of essays.</span></p>', 30, N'HELEN MACDONALD', N'\images\products\0082addd-a191-4efd-9f48-c4c629ee3b59.jpg', 22, 1)
INSERT [dbo].[Products] ([Id], [Title], [Description], [Price], [Author], [ImageUrl], [Quantity], [CategoryId]) VALUES (5, N'Shuggie Bain', N'<h2 style="box-sizing: border-box; margin: 0px 0px 27.5px; font-family: ''Avenir Next Rounded'', sans-serif; font-weight: 400; line-height: 1.2; overflow-wrap: break-word; font-size: 1.26667em; text-transform: uppercase; letter-spacing: 0.1em; color: #333232; background-color: #ffffff;">NEW IN PAPERBACK</h2>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">SHORTLISTED FOR THE BOOKER PRIZE</p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><em style="box-sizing: border-box;">Shuggie Bain</em>&nbsp;is the unforgettable story of young Hugh &ldquo;Shuggie&rdquo; Bain, a sweet and lonely boy who spends his 1980s childhood in run-down public housing in Glasgow, Scotland. Thatcher&rsquo;s policies have put husbands and sons out of work, and the city&rsquo;s notorious drugs epidemic is waiting in the wings.</p>', 26, N'DOUGLAS STUART', N'\images\products\955f7dac-7796-4d0c-a7d0-f6c645144066.jpg', 15, 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [Price], [Author], [ImageUrl], [Quantity], [CategoryId]) VALUES (6, N'The Lying Life of Adults', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">A&nbsp;powerful new novel set in a divided Naples by the&nbsp;<em style="box-sizing: border-box;">New York Times</em>&nbsp;best-selling author of&nbsp;<em style="box-sizing: border-box;">My Brilliant Friend</em>&nbsp;and&nbsp;<em style="box-sizing: border-box;">The Lost Daughter</em>.</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">Soon to be a NETFLIX Original Series</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Giovanna&rsquo;s pretty face is changing, turning ugly, at least so her father thinks. Giovanna, he says, looks more like her Aunt Vittoria every day. But can it be true? Is she really changing? Is she turning into her Aunt Vittoria, a woman she hardly knows but whom her mother and father clearly despise? Surely there is a mirror somewhere in which she can see herself as she truly is.</p>', 39, N'ELENA FERRANTE', N'\images\products\49a441f9-e2e3-4d67-89d5-e99ba1edc19c.jpg', 20, 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [Price], [Author], [ImageUrl], [Quantity], [CategoryId]) VALUES (7, N'Earthlings', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">As a child, Natsuki doesn&rsquo;t fit into her family. Her parents favor her sister, and her best friend is a plush toy hedgehog named Piyyut who has explained to her that he has come from the planet Popinpobopia on a special quest to help her save the Earth.</span></p>
<p style="box-sizing: border-box; color: #333232; margin: 0px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Each summer, Natsuki counts down the days until her family drives into the mountains of Nagano to visit her grandparents in their wooden house in the forest, a place that couldn&rsquo;t be more different from her grey commuter town. One summer, her cousin Yuu confides to Natsuki that he is an extraterrestrial and that every night he searches the sky for the spaceship that might take him</p>', 37, N'SAYAKA MURATA', N'\images\products\fdc25f1c-f8ba-4f55-8764-d0a6781714c3.jpg', 22, 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [Price], [Author], [ImageUrl], [Quantity], [CategoryId]) VALUES (8, N'Girls Against God', N'<p><span style="box-sizing: border-box; font-weight: bold; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">A genre-warping, time-travelling horror novel-slash-feminist manifesto for fans of&nbsp;Clarice Lispector and&nbsp;Jeanette Winterson.</span><br style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;" /><br style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;" /><span style="color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;">Welcome to 1990s Norway. White picket fences run in neat rows and Christian conservatism runs deep. But as the Artist considers her work, things start stirring themselves up. In a corner of Oslo a coven of witches begin cooking up some curses. A time-travelling Edvard Munch arrives in town to join a death metal band, closely pursued by the teenaged subject of his painting Puberty, who has murder on her mind. Meanwhile, out deep in the forest, a group of school girls get very lost and things get very strange. And awful things happen in aspic.</span></p>', 26, N'JENNY HVAL', N'\images\products\e7ce4632-3bce-4221-8549-1e4576897e47.jpg', 24, 2)
INSERT [dbo].[Products] ([Id], [Title], [Description], [Price], [Author], [ImageUrl], [Quantity], [CategoryId]) VALUES (9, N'Shit, Actually', N'<p style="box-sizing: border-box; color: #333232; margin: 0px 0px 19.4444px; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">This book is maybe the only good thing to come out of 2020. I was laughing so loud that my dog kept coming to check on me. - RA</span></p>
<div style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><span style="box-sizing: border-box; font-weight: bold;">&nbsp;</span></div>
<div style="box-sizing: border-box; color: #333232; font-family: ''Avenir Next'', sans-serif; font-size: 15px; background-color: #ffffff;"><em style="box-sizing: border-box;">New York Times</em>&nbsp;opinion writer and bestselling author Lindy West was once the in-house movie critic for Seattle''s alternative newsweekly&nbsp;<em style="box-sizing: border-box;">The Stranger</em>, where she covered film with brutal honesty and giddy irreverence. In&nbsp;<em style="box-sizing: border-box;">Shit, Actually,</em>&nbsp;Lindy returns to those roots, re-examining beloved and iconic movies from the past 40 years with an eye toward the big questions of our time: Is&nbsp;<em style="box-sizing: border-box;">Twilight&nbsp;</em>the horniest movie in history? Why do the zebras in&nbsp;<em style="box-sizing: border-box;">The Lion King&nbsp;</em>trust Mufasa-WHO IS A LION-to look out for their best interests? Why did anyone bother making any more movies after&nbsp;<em style="box-sizing: border-box;">The Fugitive</em>&nbsp;achieved perfection? And, my god, why don''t any of the women in&nbsp;<em style="box-sizing: border-box;">Love, Actually&nbsp;</em>ever fucking talk?!?!</div>', 34, N'LINDY WEST', N'\images\products\4847e4c7-f7e1-4446-afe3-361400dcc577.jpg', 15, 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 1/16/2021 11:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/16/2021 11:50:50 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 1/16/2021 11:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 1/16/2021 11:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 1/16/2021 11:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 1/16/2021 11:50:50 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/16/2021 11:50:50 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 1/16/2021 11:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 1/16/2021 11:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_OrderHeaders_ApplicationUserId]    Script Date: 1/16/2021 11:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderHeaders_ApplicationUserId] ON [dbo].[OrderHeaders]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 1/16/2021 11:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ShoppingCarts_ApplicationUserId]    Script Date: 1/16/2021 11:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCarts_ApplicationUserId] ON [dbo].[ShoppingCarts]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCarts_ProductId]    Script Date: 1/16/2021 11:50:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCarts_ProductId] ON [dbo].[ShoppingCarts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[OrderHeaders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderHeaders]  WITH CHECK ADD  CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OrderHeaders] CHECK CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_Products_ProductId]
GO
USE [master]
GO
ALTER DATABASE [AptechStore] SET  READ_WRITE 
GO
