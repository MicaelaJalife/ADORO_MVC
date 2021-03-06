USE [master]
GO
/****** Object:  Database [AdoroDB]    Script Date: 29/06/2022 22:42:06 ******/
CREATE DATABASE [AdoroDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AdoroDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AdoroDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AdoroDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AdoroDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AdoroDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AdoroDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AdoroDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AdoroDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AdoroDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AdoroDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AdoroDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AdoroDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AdoroDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AdoroDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AdoroDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AdoroDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AdoroDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AdoroDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AdoroDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AdoroDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AdoroDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AdoroDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AdoroDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AdoroDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AdoroDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AdoroDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AdoroDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AdoroDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AdoroDB] SET  MULTI_USER 
GO
ALTER DATABASE [AdoroDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AdoroDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AdoroDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AdoroDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AdoroDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AdoroDB] SET QUERY_STORE = OFF
GO
USE [AdoroDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 29/06/2022 22:42:07 ******/
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
/****** Object:  Table [dbo].[Actividades]    Script Date: 29/06/2022 22:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividades](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[EstadoAct] [int] NOT NULL,
	[FechaInicio] [datetime2](7) NOT NULL,
	[FechaFin] [datetime2](7) NOT NULL,
	[SalaId] [int] NOT NULL,
	[Imagen] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[GeneroActividad] [int] NOT NULL,
	[TipoActividad] [int] NOT NULL,
	[Contador] [int] NOT NULL,
 CONSTRAINT [PK_Actividades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salas]    Script Date: 29/06/2022 22:42:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CapacidadMax] [int] NOT NULL,
	[AlAireLibre] [bit] NOT NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_Salas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616003154_ADORO_MVC.Context.AdoroDatabaseContext', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616012946_Columna.Imagen.Actividad', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616015919_Sala.esid', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616023435_inicial', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622231616_202206222016', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623002547_Migacion1', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623002708_Migracion1', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623003355_Migracion2', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623021717_202206222317', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220629020524_se.agrego.contador', N'3.1.25')
SET IDENTITY_INSERT [dbo].[Actividades] ON 

INSERT [dbo].[Actividades] ([Id], [Nombre], [EstadoAct], [FechaInicio], [FechaFin], [SalaId], [Imagen], [Descripcion], [GeneroActividad], [TipoActividad], [Contador]) VALUES (6, N'Actividad1', 0, CAST(N'2022-06-29T00:10:00.0000000' AS DateTime2), CAST(N'2022-06-29T00:10:00.0000000' AS DateTime2), 3, N'..\Images\origami.jpg', N'Descripcion1', 0, 0, 0)
INSERT [dbo].[Actividades] ([Id], [Nombre], [EstadoAct], [FechaInicio], [FechaFin], [SalaId], [Imagen], [Descripcion], [GeneroActividad], [TipoActividad], [Contador]) VALUES (7, N'A2', 0, CAST(N'2022-06-29T20:32:00.0000000' AS DateTime2), CAST(N'2022-06-29T20:32:00.0000000' AS DateTime2), 4, N'https://source.unsplash.com/user/c_v_r/100x100', N'Des2', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Actividades] OFF
SET IDENTITY_INSERT [dbo].[Salas] ON 

INSERT [dbo].[Salas] ([Id], [CapacidadMax], [AlAireLibre], [Nombre]) VALUES (3, 20, 0, N'Sala1')
INSERT [dbo].[Salas] ([Id], [CapacidadMax], [AlAireLibre], [Nombre]) VALUES (4, 10, 0, N'SAla2')
SET IDENTITY_INSERT [dbo].[Salas] OFF
ALTER TABLE [dbo].[Actividades] ADD  DEFAULT ((0)) FOR [GeneroActividad]
GO
ALTER TABLE [dbo].[Actividades] ADD  DEFAULT ((0)) FOR [TipoActividad]
GO
ALTER TABLE [dbo].[Actividades] ADD  DEFAULT ((0)) FOR [Contador]
GO
USE [master]
GO
ALTER DATABASE [AdoroDB] SET  READ_WRITE 
GO
