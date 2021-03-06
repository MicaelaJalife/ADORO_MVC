USE [master]
GO
/****** Object:  Database [AdoroDB]    Script Date: 10/07/2022 20:56:50 ******/
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/07/2022 20:56:51 ******/
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
/****** Object:  Table [dbo].[Actividades]    Script Date: 10/07/2022 20:56:51 ******/
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
/****** Object:  Table [dbo].[Salas]    Script Date: 10/07/2022 20:56:51 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 10/07/2022 20:56:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Apellido] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Rol] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220630015555_usuario.agregado', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220630015957_usuario.agregado1', N'3.1.25')
SET IDENTITY_INSERT [dbo].[Actividades] ON 

INSERT [dbo].[Actividades] ([Nombre], [EstadoAct], [FechaInicio], [FechaFin], [SalaId], [Imagen], [Descripcion], [GeneroActividad], [TipoActividad], [Contador]) VALUES (N'Actividad1', 0, CAST(N'2022-06-29T00:10:00.0000000' AS DateTime2), CAST(N'2022-06-29T00:10:00.0000000' AS DateTime2), 1, N'..\Images\origami.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.', 0, 0, 6)
INSERT [dbo].[Actividades] ([Nombre], [EstadoAct], [FechaInicio], [FechaFin], [SalaId], [Imagen], [Descripcion], [GeneroActividad], [TipoActividad], [Contador]) VALUES (N'A2', 0, CAST(N'2022-06-29T20:32:00.0000000' AS DateTime2), CAST(N'2022-06-29T20:32:00.0000000' AS DateTime2), 1, N'fotografia.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 0, 0, 0)
INSERT [dbo].[Actividades] ([Nombre], [EstadoAct], [FechaInicio], [FechaFin], [SalaId], [Imagen], [Descripcion], [GeneroActividad], [TipoActividad], [Contador]) VALUES (N'Actividad copada al aire libre', 0, CAST(N'2022-07-10T14:57:00.0000000' AS DateTime2), CAST(N'2022-07-11T14:57:00.0000000' AS DateTime2), 1, N'..\Images\musica.jpg', N'Es una actividad muy interesante en una sala al aire libre y no se suspende por lluvia.', 2, 2, 0)
INSERT [dbo].[Actividades] ([Nombre], [EstadoAct], [FechaInicio], [FechaFin], [SalaId], [Imagen], [Descripcion], [GeneroActividad], [TipoActividad], [Contador]) VALUES (N'zzz', 0, CAST(N'2022-07-10T19:51:00.0000000' AS DateTime2), CAST(N'2022-07-11T19:51:00.0000000' AS DateTime2), 1, NULL, N'zzzz', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Actividades] OFF
SET IDENTITY_INSERT [dbo].[Salas] ON 

INSERT [dbo].[Salas] ([CapacidadMax], [AlAireLibre], [Nombre]) VALUES (20, 0, N'Sala1')
INSERT [dbo].[Salas] ([CapacidadMax], [AlAireLibre], [Nombre]) VALUES (10, 0, N'SAla2')
INSERT [dbo].[Salas] ([CapacidadMax], [AlAireLibre], [Nombre]) VALUES (150, 1, N'Sala mas copada')
INSERT [dbo].[Salas] ([CapacidadMax], [AlAireLibre], [Nombre]) VALUES (-9, 0, N'zzz')
INSERT [dbo].[Salas] ([CapacidadMax], [AlAireLibre], [Nombre]) VALUES (0, 0, N'Sala1')
SET IDENTITY_INSERT [dbo].[Salas] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (N'Admin', N'Admin', N'admin', N'Admin2022!', 0)
INSERT [dbo].[Usuario] ([Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (N'a', N'a', N'a', N'a', 0)
INSERT [dbo].[Usuario] ([Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (N'b', N'b', N'a', N'b', 0)
INSERT [dbo].[Usuario] ([Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (N'd', N'd', N'd', N'd', 1)
INSERT [dbo].[Usuario] ([Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (N'Francisco', N'Lavarello', N'flavarello', N'Miclave1!', 1)
INSERT [dbo].[Usuario] ([Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (N'zz', N'zz', N'zz', N'Zz12345678!', 1)
INSERT [dbo].[Usuario] ([Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (N'q', N'q', N'q', N'q', 0)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
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
