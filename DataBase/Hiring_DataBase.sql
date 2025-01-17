USE [master]
GO
/****** Object:  Database [Hiring]    Script Date: 28/6/2024 08:34:53 ******/
CREATE DATABASE [Hiring]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hiring', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Hiring.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hiring_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Hiring_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Hiring] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hiring].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hiring] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hiring] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hiring] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hiring] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hiring] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hiring] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hiring] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hiring] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hiring] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hiring] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hiring] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hiring] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hiring] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hiring] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hiring] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Hiring] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hiring] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hiring] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hiring] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hiring] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hiring] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hiring] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hiring] SET RECOVERY FULL 
GO
ALTER DATABASE [Hiring] SET  MULTI_USER 
GO
ALTER DATABASE [Hiring] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hiring] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hiring] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hiring] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hiring] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Hiring', N'ON'
GO
ALTER DATABASE [Hiring] SET QUERY_STORE = OFF
GO
USE [Hiring]
GO
/****** Object:  User [alumno]    Script Date: 28/6/2024 08:34:53 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Certificacion]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](max) NOT NULL,
	[empresa_emisora] [varchar](max) NOT NULL,
	[id_credencial] [int] NOT NULL,
	[url_credencial] [varchar](max) NULL,
 CONSTRAINT [PK_Certificacion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cud]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cud](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](max) NOT NULL,
 CONSTRAINT [PK_CUD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discapacidad]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discapacidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](max) NULL,
 CONSTRAINT [PK_Discapacidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Educacion]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Educacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](max) NOT NULL,
	[nombre_institucion] [varchar](max) NOT NULL,
	[disciplina_academica] [varchar](max) NULL,
	[actividades_grupo] [varchar](max) NULL,
	[descripcion] [varchar](max) NULL,
	[id_info_educacion] [int] NOT NULL,
 CONSTRAINT [PK_Educacion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habilidad]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habilidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tag] [varchar](max) NULL,
 CONSTRAINT [PK_Habilidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idioma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Idioma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Informacion_Empleado_Certificacion]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Informacion_Empleado_Certificacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha_expedicion] [date] NOT NULL,
	[fecha_caducidad] [date] NULL,
	[id_info_empleado] [int] NOT NULL,
	[id_certificacion] [int] NOT NULL,
	[id_usuario_multimedia] [int] NULL,
 CONSTRAINT [PK_Informacion_Empleado_Certificacion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Informacion_Empleado_Cud]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Informacion_Empleado_Cud](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha_expedicion] [date] NOT NULL,
	[fecha_caducidad] [date] NOT NULL,
	[id_info_empleado] [int] NOT NULL,
	[id_cud] [int] NOT NULL,
	[id_usuario_multimedia] [int] NULL,
 CONSTRAINT [PK_Informacion_Empleado_Cud] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Informacion_Empleado_Educacion]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Informacion_Empleado_Educacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha_expedicion] [date] NOT NULL,
	[fecha_caducidad] [date] NOT NULL,
	[id_info_empleado] [int] NOT NULL,
 CONSTRAINT [PK_Informacion_Empleado_Educacion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Informacion_Empleado_Habilidad]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Informacion_Empleado_Habilidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_info_empleado] [int] NOT NULL,
	[id_habilidad] [int] NOT NULL,
 CONSTRAINT [PK_Informacion_Empleado_Habilidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Informacion_Empleado_Idioma]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Informacion_Empleado_Idioma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_info_empleado] [int] NOT NULL,
	[id_idioma] [int] NOT NULL,
 CONSTRAINT [PK_Informacion_Empleado_Idioma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Informacion_Personal_Empleado]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Informacion_Personal_Empleado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre_apellido] [varchar](max) NOT NULL,
	[mail] [varchar](max) NULL,
	[telefono] [varchar](50) NULL,
	[acerca_de_mi] [varchar](max) NULL,
	[profesion_actual] [varchar](max) NULL,
	[estilo] [varchar](max) NULL,
	[ubicacion] [varchar](max) NULL,
	[id_multimedia] [nchar](10) NULL,
	[sitio_web] [varchar](max) NULL,
	[foto_perfil] [varchar](max) NULL,
	[encabezado] [varchar](max) NULL,
	[id_discapacidad] [int] NOT NULL,
 CONSTRAINT [PK_Informacion_Personal_Empleado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Multimedia]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Multimedia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Multimedia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Necesidad]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Necesidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_info_empleado] [int] NOT NULL,
	[nombre] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Necesidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Mail] [varchar](320) NOT NULL,
	[Contraseña] [varchar](15) NOT NULL,
	[empleado] [bit] NOT NULL,
	[id_informacion_usuario] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Multimedia]    Script Date: 28/6/2024 08:34:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Multimedia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_info_empleado] [int] NOT NULL,
	[id_multimedia] [int] NOT NULL,
 CONSTRAINT [PK_Usuario_Multimedia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Discapacidad] ON 

INSERT [dbo].[Discapacidad] ([id], [nombre]) VALUES (1, N'ninguna')
INSERT [dbo].[Discapacidad] ([id], [nombre]) VALUES (2, N'disminucion visua')
INSERT [dbo].[Discapacidad] ([id], [nombre]) VALUES (3, N'ceguera')
INSERT [dbo].[Discapacidad] ([id], [nombre]) VALUES (4, N'dislexia')
SET IDENTITY_INSERT [dbo].[Discapacidad] OFF
GO
SET IDENTITY_INSERT [dbo].[Informacion_Personal_Empleado] ON 

INSERT [dbo].[Informacion_Personal_Empleado] ([id], [nombre_apellido], [mail], [telefono], [acerca_de_mi], [profesion_actual], [estilo], [ubicacion], [id_multimedia], [sitio_web], [foto_perfil], [encabezado], [id_discapacidad]) VALUES (1, N'Sarah Signika', N'sarah_maqui@gmail.com', N'+54 911 5567 3341', N'Soy una apasionada maquilladora con una sólida experiencia en la industria. Mi objetivo es resaltar la belleza natural de mis clientes y potenciar su confianza a través del arte del maquillaje. ', N'Maquilladora', N'#F8E6E6', N'Rosario, Santa fé', N'1         ', N'sarH.com', N'sarah.png', N'banner_sarah.png', 1)
INSERT [dbo].[Informacion_Personal_Empleado] ([id], [nombre_apellido], [mail], [telefono], [acerca_de_mi], [profesion_actual], [estilo], [ubicacion], [id_multimedia], [sitio_web], [foto_perfil], [encabezado], [id_discapacidad]) VALUES (2, N'Pedro Pascal', N'Pedroperodr@gmail.com', N'+54 911 5567 3341', N'Soy un apasionado peluquero con una sólida experiencia en la industria. Mi objetivo es resaltar la belleza natural de mis clientes y potenciar su confianza a través del arte del pelo. ', N'Peluquero', N'#B7A68D', N'Casilda, Santa fé', N'2         ', N'pep.com', N'https://is1-ssl.mzstatic.com/image/thumb/i93eX_NdIyNX-elbWwWKyg/1200x675mf.jpg', N'banner_pedro.png', 2)
INSERT [dbo].[Informacion_Personal_Empleado] ([id], [nombre_apellido], [mail], [telefono], [acerca_de_mi], [profesion_actual], [estilo], [ubicacion], [id_multimedia], [sitio_web], [foto_perfil], [encabezado], [id_discapacidad]) VALUES (6, N'Gabriel Smart', N'smartgabi@gmail.com', N'+54 911 5698 2140', N'Soy un apasionado psicólogo con una sólida experiencia en la industria. Mi objetivo es resaltar el intelecto natural de mis clientes y potenciar su confianza en si mismo. ', N'Psicólogo', N'#28036A', N'La Falda, Córdoba', N'3         ', N'psicosmart.com', N'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhASEhIVFRUVFxAVEhUVEBUQFRUPFRUWFxUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAKMBNgMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAABAgADBAUGBwj/xAA/EAACAQIEBAMFBQYFBAMAAAAAAQIDEQQSITEFQVFxBmGBBxMikbEjMkKhwRRigtHh8FJyc7LCJFOi8TNDY//EABQBAQAAAAAAAAAAAAAAAAAAAAD/xAAUEQEAAAAAAAAAAAAAAAAAAAAA/9oADAMBAAIRAxEAPwDpxZIZIDAUDY6Qk0BXVZRJFs0VgC2q7o7rhdG9NPXW/M4WTO94O/s4gLWw2u7+Zj1KXm/mbGstTHlEDUZPvac2CyLXH73dgy6AY9iJFziJICpkaDJAYC2IMkcp4444qMFRhJqpNfhtdR82+vTdgbDiniShSuk/eSW6g19XoaHF+MajXwU8i5uynbu76fI4+Ests3PeTt+asSviLp2s/JR1ts9GBtqnjavGWk4vysmbnhXj+E7KpD1hr+TPNcTB3uo2T8rWKKdOUWpKz66a7ge/4PGU6sVKDumXnknAOOSouM4v4bpTjfRr9Geo8M4jCvDPTaavZ67PowMqxLEJYAWAx8oMgCuIUWSgVtABsgbASALQo7vYUBSJXC0MlZALawGEAAsQIAKWNcjggWAaIlQZoRrcCioVysXTSKaiswEqSR3/AAd/ZQ7P6nAta/I73hytCPZ/UDIrMqJUkInuBrXHWXcSQ1R6y7lbAiZXMJW2AJagcuwbAsBjcU4hGhSqVp/dhFyfn0S827L1PNOG4CvjKrrVNW3eWiaTe0VfklZHbeN6sY4WSkk88qcVf/Nmf5RZuvD/AAyNOjTjZXsnJ9ZS1YHIw8F53mm9Oi0T/mbWPhKilbLZ8+d125HaRw6EnRXQDgK/g+nrZfqaPifhOMbv/wBHq0qCNBxmldMDyTEcPdO65N69ncPhPjssJioqUn7qbUJ3eiV9Jfwt3+ZvPENKyehwWOWr8m/mv6AfRWR9CZLGk8G4732Dw1RvXIoyf70Phf5pm8uuoCyDJ20W/Mia1FcugAux4TvuV5iZgLcy2sJYRsiYD+88hZT8gXZEwGa2FkFzFSANgMjZAJYhPQgFbEGTBMAqRW5BuCQFM0yme+plSiY0wEb1XdHdYB/Zr1+pwrW3dHaYGfwL1AyJyFUiuUtwJgYk9HLv+hVcsqLWXf8AQVoCtlZa4iuICgYzAkBxvtKk/dYbe3v4t9NIytc77ASvGL8l9Dj/AGg0m8JprarQb62csunq16XNzPjipS91CEpyX3lGLlZdNP1A6ZPQVs5qHierms8LUUebbyu3lFm+oYhTipLn13XcA1jR8RjvcbjfiGNP4Ywc5dF/Q5vF+J5fjw1SK6uLs13A0PieXx+h5tjqizPzd13V1/NHe8T4hDEPNHzTXNeR5xxGm4VJRfJu3bcD1/2SYnNhJw/7dSXylr9bncZTzr2N4mLhiKV/jvGaV94Ws9PJpfNHpWTqBTYaMR7IF+WwC+78gqmSchczAkoitFmbzI4X1+YCJ2DOzA0T0AijfnYDj0YyFkgBsTOyEiBLsgzZAMYjFuCVwBJgDBdRZAGb0MWW5fIomAst13R1+Dl8KOOluvQ6rDS+EDJkwRkVSkCLAnN9yucgvmVtgS4bCoEmAZMkpaCsgGPjsIq1OpTaupRf5a3GxnD5q7pSy5nmm7Xbemi1/uxk0d+918zZUbOKA4d4LFqvKTrt0kvs/gjGWa7+8lFcrLXo3zOtw8mqctb81yMudGO7Xzehi4ipaM2umncDheB42pKrXpOSjeV73tLKtGr815K3cr47DG+9moVl7lL4FKN3J66P8lvybuYvAXfGNOVpXlbo9XdHeV1GzzR1A8pjwubc6uVRcdJ2+631RzHiLCqVaF9Lx1fnfQ9L8QYpKMoqyXJLRWOH4lQ94rJK90k+iA6P2XcGyVatVaJQcL3vdycJf8ZfM9FZzXs9wjhhdfxTk03ziko/VM6aUQImRkygcWBJICiSwAGSFk2iJ2CkBWwx7jy7CsAu2wjGBcBbBsQiQEAGxAMYjY2UVoAoWSIFyApmiiRkTRjzASR0lHZHN1DoaD0QF7YYMpbGpgC+4Ap7gYESBYIGAbkRCABSd0ZmCqaGFcuwz3QFlZubu/ux5f4pfyRrONcUdKhNuN2szulZeXYPEOK+7aXuqk1os0YrLFvbM739bMepKc43VKMttFVi+bWuvkwPH6XEalSpeEXF51LOns7nrVLFZqScmr21f6nM8brunJ/9MnLXSDjJ3VuS7ozfD8atSGerB0ks3wyacsvnlbS+YHK+JKn2skYHDsLKrUhThvJ+iVm235JIyePVVKafSEE3+9r+iRm+AXfE/wAE7+S0/VoD0PD0lCMYRSSikl2SsixAIo6gRkTC4C2ALaAyZWGMAFb8wtgcQAM5gbBGIZRsAsmLJD5mBS6gKgXLNBbIBZAHyhAxwNBzFc30AFxWG4GAk/IomXTRSBVNnQw2Rz9RanQ09kAwabsxWyQ3AYVXDcgEARkANwEuQCKIJNrX59ghAvoyTizExMEuS+W4Yzyu3y/kCtUTsr73A0nEMNdq3q0YPFeLqlQqWerVl32Q/HOLKkp68tFvqeecY4u5tKXLaPO/WXQCYzE2SXPd93svRG+8EVJQrRqW+C2STfm1t23Oc4bgJVnnndQ5cnLt0XmdNxDFRwtD3kllS+GEVo5S5RSA9KYLnlXso8T2q1MJWlZVZOeH1do1HrKmuia1S6p82er2QAiyOTCkuoXDowK5yfUW7GYLAHMHMCwFYA5mAiJcAWBmGuBoAAaC4isAMgbkAxh0gMWEgGyiTiWORVOQCSMeTMoxJbgJVZvqT0Rz8zf09kBYyQ3EuNS3AfmFMVrUmUBkSwuUZRAAGmGSFigDcso08zsvV9F1Kq9WMYqU5Rirxim2leUnaKXVttJLmbinhckGvxPf9EBq8Zlllgtlm16u6Tb89DnOK4GsrunN25Jm5wlZKUKcn8UpTUerlllJr5Rb9DJrYRytGKbb5AeRcYwGKm3aLbe1tXfbQrwHgevFqdePmoN316y6vyPccNgIUI5mk59bbeSNdiIe8lqgOFo4CNKLqVXaEFmk7bJHnviXiUsVUc5JqEbqlD/DDq/3na7+XI6v2g8fjWqfs9F/Y038UltUqrn5xWy6vXocbOO4GuhSejV01qmtGmtmn1PaPAviiOKoxp1Jr9ogmqiejmo//ZHk7qzdtm+x48m9cq9Xp8kLQqypyjOEnGUXmjJOzjLqmB9F2CpHDeE/aBTrZaWKapVdEp/dp1H3/BLyenR8juQGUk9xXYiQvMCPsC/kOxWgI0BwGiwgVBTJKLIosBXJhz+QXFiMAteX5kFbABVNWK2x5sV3AAjY1yTQCuJRNal+fRox5ICqZvqWyNDUN9Rei7IBrBpChjuBbFkuCDHsAqZEElwCzT8Z8S4bC3VWos9rqnFZ6j6aLbu7I1fjvxM8LTVOk/tqidnv7untnt13S7PoeTtttyk25N3bbu23zbe4HpnhzxLPGYmUnGEVRXvMPSfxLPfI6s3vKUVPRKyWe+rSZ6VDEOUKTlvJK9ou2a1/Oy33Pn3wxxSOGxNGtN2pqWWo/wD85rLKTXOyea37p7h4QruvQlXTfuqkp+4i1b7GLcVU63m05dsul7thpMdg6y4jg6qX2CdWDd9q04N6r/KtH39dnjMfW97kofDFON6ktV1koxWs3ytotb67G3xylkVNU72WZSurZ4vNql2MPGY2EHCnRg3WqWtm+9FNa3v93+gF1eq52uu/fmjiPaD4i9zB4WjL7Wa+1kn9yk/w35Sl+S7o7DxNxKGCwjnJpyXw01/3K8v+O7fkjwbFV5VJznOTlKTcpSf4pPd9gMaRSn8zJcSqfNL1fTy7gY8227Llu/8Aiv1BOmZMYeRHEDXumdL4a8bV8Kowl9rRWihKVnFfuT5Lyd12NNKmUTSW/mB7pwDj1DFwz0Zaq2eEtJwb/wAUf1Wj6m0yHzrguJ1KFT3tGTpzjtJdHvGS2cX0Z7P4I8VxxtFtpRrU7KrBba7Tj+6/yenRsOgaJYfMBgSMfMLaA9hUAXIV3CHMArQo7YjAUAzABUxZINxZABIE0GCCkBjyKpMyKsTHmgK6qN3Sei9DSVDd09l2QBuPS3EGp7gWQDYEOY1gCkDKGwleeWMpdE38lcDxHxJjnWxdeo3dZ5Rh/pw+GNvRGtkN/fqyuU0s0nsvryAVYOeJrUMJS1nUlGPa71k+2r7Jn1HwzBRo0aVGCtGnCEI/5YpJfQ8o9i3hu854+ouTp0b9X/8AJJflH5nsKAwMdKq/hp/DdpZmm+rb0TsrJ6uybsr6lfDeDQoylUcnOo75pyfz7G1yrTyOC9qfiP3NL9lpu1StFuo1vDD7P1m049lLyA4Lx94j/bMQ3B/Y07wor/Er/FU/iaXoo+ZzVhmU1qtl1vol1fJfX8wBVnyW/wBF1YtOl/f1DTp231e7fmXRiBWoDZf78x2SWi+n6gYtd20MOpDmZNR3MXEN7AYVbmZPhfjcsHiaVdXaTtUivxUZaSj35rzSMWrHcwmB9RUakZRjKLUoySlFrVOLV016MZo4n2ScZ99g/dSd54eWTfX3Mtab/wB0f4Uds2BLARLgAjASYoBuAK3I0AgA2YAKZREkWNlcmAIhuSIsgFqMoqlszHbAFR3NzSei7I0lQ3NLZdkBZcanuV3HpboCyjzHZXGKuw5QLDC47O2GxTW6o17d/dyMvKavxVK2CxbW/uqq+cWv1A8Sb3ZTXouUacVvKS+fJFtT7puPC+D97j8BS61It9ofG/yQH0B4e4dHD4ahRirKEIx9bav53NnFCoeKAw+NcThhqNSvUfwwV2ucntGK822ku58+cX4jPEVqleo7ynK76LS0YrySSXodj7U/EXvq37NTf2dF/G09JYjZ+kbtd3LojgpAVzkkrvYogm/ia7Lov5j/AHn5LbzfXsi1IARQ9gJDSARv+hRUbk7LYao7yy32V/V/2yxKwFTgka+qZ9V7mBVYGNV+6+xrZI2VbYwasQOv9knEXTx8af4a0JwfTMlni/8Axa/iPdEkfMvAcS6eJw1RaZKtGXymrn01JICWQGkK5+SJmAmQTIOmJOWoEUUFsLEkwA2QVsgGOIyEAPIrmQgFcyghAEqm5pfdXZEIASyhuQgFqGuQgDLdGt8TL/pMX/o1/wDZIhAPC6+y/vodf7MYp8Ww9+VOu15PJa/5kIB70TFzcYVGtGoza7pNohAPmrM3q3duzberberbMau/hf8ACvRtXIQCwF/7+RCAJWeif70F6OSRfIhAMTDP46np9A1ZfQhAB+G5hVN/mQgGFVf6GKyEArg7Nd19T6jm9+7IQBbCIJAGexW0QgDNbBaIQCuRCEA//9k=', N'https://static.vecteezy.com/system/resources/previews/003/302/993/non_2x/adult-psychology-issue-word-concepts-banner-vector.jpg', 3)
SET IDENTITY_INSERT [dbo].[Informacion_Personal_Empleado] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([id], [Mail], [Contraseña], [empleado], [id_informacion_usuario]) VALUES (1, N'yaesaroka@gmail.com', N'123645', 1, NULL)
INSERT [dbo].[Usuario] ([id], [Mail], [Contraseña], [empleado], [id_informacion_usuario]) VALUES (2, N'sarah_maqui@gmail.com', N'123645', 1, NULL)
INSERT [dbo].[Usuario] ([id], [Mail], [Contraseña], [empleado], [id_informacion_usuario]) VALUES (3, N'yaesaroka@gmail.com', N'123645', 1, NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Educacion]  WITH CHECK ADD  CONSTRAINT [FK_Educacion_Informacion_Empleado_Educacion] FOREIGN KEY([id_info_educacion])
REFERENCES [dbo].[Informacion_Empleado_Educacion] ([id])
GO
ALTER TABLE [dbo].[Educacion] CHECK CONSTRAINT [FK_Educacion_Informacion_Empleado_Educacion]
GO
ALTER TABLE [dbo].[Informacion_Empleado_Certificacion]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Empleado_Certificacion_Certificacion] FOREIGN KEY([id_certificacion])
REFERENCES [dbo].[Certificacion] ([id])
GO
ALTER TABLE [dbo].[Informacion_Empleado_Certificacion] CHECK CONSTRAINT [FK_Informacion_Empleado_Certificacion_Certificacion]
GO
ALTER TABLE [dbo].[Informacion_Empleado_Certificacion]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Empleado_Certificacion_Informacion_Personal_Empleado] FOREIGN KEY([id_info_empleado])
REFERENCES [dbo].[Informacion_Personal_Empleado] ([id])
GO
ALTER TABLE [dbo].[Informacion_Empleado_Certificacion] CHECK CONSTRAINT [FK_Informacion_Empleado_Certificacion_Informacion_Personal_Empleado]
GO
ALTER TABLE [dbo].[Informacion_Empleado_Certificacion]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Empleado_Certificacion_Usuario_Multimedia] FOREIGN KEY([id_usuario_multimedia])
REFERENCES [dbo].[Usuario_Multimedia] ([id])
GO
ALTER TABLE [dbo].[Informacion_Empleado_Certificacion] CHECK CONSTRAINT [FK_Informacion_Empleado_Certificacion_Usuario_Multimedia]
GO
ALTER TABLE [dbo].[Informacion_Empleado_Cud]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Empleado_Cud_CUD] FOREIGN KEY([id_cud])
REFERENCES [dbo].[Cud] ([id])
GO
ALTER TABLE [dbo].[Informacion_Empleado_Cud] CHECK CONSTRAINT [FK_Informacion_Empleado_Cud_CUD]
GO
ALTER TABLE [dbo].[Informacion_Empleado_Cud]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Empleado_Cud_Informacion_Personal_Empleado] FOREIGN KEY([id_info_empleado])
REFERENCES [dbo].[Informacion_Personal_Empleado] ([id])
GO
ALTER TABLE [dbo].[Informacion_Empleado_Cud] CHECK CONSTRAINT [FK_Informacion_Empleado_Cud_Informacion_Personal_Empleado]
GO
ALTER TABLE [dbo].[Informacion_Empleado_Cud]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Empleado_Cud_Usuario_Multimedia] FOREIGN KEY([id_usuario_multimedia])
REFERENCES [dbo].[Usuario_Multimedia] ([id])
GO
ALTER TABLE [dbo].[Informacion_Empleado_Cud] CHECK CONSTRAINT [FK_Informacion_Empleado_Cud_Usuario_Multimedia]
GO
ALTER TABLE [dbo].[Informacion_Empleado_Educacion]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Empleado_Educacion_Informacion_Personal_Empleado] FOREIGN KEY([id_info_empleado])
REFERENCES [dbo].[Informacion_Personal_Empleado] ([id])
GO
ALTER TABLE [dbo].[Informacion_Empleado_Educacion] CHECK CONSTRAINT [FK_Informacion_Empleado_Educacion_Informacion_Personal_Empleado]
GO
ALTER TABLE [dbo].[Informacion_Empleado_Habilidad]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Empleado_Habilidad_Habilidad] FOREIGN KEY([id_habilidad])
REFERENCES [dbo].[Habilidad] ([id])
GO
ALTER TABLE [dbo].[Informacion_Empleado_Habilidad] CHECK CONSTRAINT [FK_Informacion_Empleado_Habilidad_Habilidad]
GO
ALTER TABLE [dbo].[Informacion_Empleado_Habilidad]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Empleado_Habilidad_Informacion_Personal_Empleado] FOREIGN KEY([id_info_empleado])
REFERENCES [dbo].[Informacion_Personal_Empleado] ([id])
GO
ALTER TABLE [dbo].[Informacion_Empleado_Habilidad] CHECK CONSTRAINT [FK_Informacion_Empleado_Habilidad_Informacion_Personal_Empleado]
GO
ALTER TABLE [dbo].[Informacion_Empleado_Idioma]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Empleado_Idioma_Idioma] FOREIGN KEY([id_idioma])
REFERENCES [dbo].[Idioma] ([id])
GO
ALTER TABLE [dbo].[Informacion_Empleado_Idioma] CHECK CONSTRAINT [FK_Informacion_Empleado_Idioma_Idioma]
GO
ALTER TABLE [dbo].[Informacion_Empleado_Idioma]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Empleado_Idioma_Informacion_Personal_Empleado] FOREIGN KEY([id_info_empleado])
REFERENCES [dbo].[Informacion_Personal_Empleado] ([id])
GO
ALTER TABLE [dbo].[Informacion_Empleado_Idioma] CHECK CONSTRAINT [FK_Informacion_Empleado_Idioma_Informacion_Personal_Empleado]
GO
ALTER TABLE [dbo].[Informacion_Personal_Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Informacion_Personal_Empleado_Discapacidad] FOREIGN KEY([id_discapacidad])
REFERENCES [dbo].[Discapacidad] ([id])
GO
ALTER TABLE [dbo].[Informacion_Personal_Empleado] CHECK CONSTRAINT [FK_Informacion_Personal_Empleado_Discapacidad]
GO
ALTER TABLE [dbo].[Necesidad]  WITH CHECK ADD  CONSTRAINT [FK_Necesidad_Informacion_Personal_Empleado] FOREIGN KEY([id_info_empleado])
REFERENCES [dbo].[Informacion_Personal_Empleado] ([id])
GO
ALTER TABLE [dbo].[Necesidad] CHECK CONSTRAINT [FK_Necesidad_Informacion_Personal_Empleado]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Informacion_Personal_Empleado] FOREIGN KEY([id_informacion_usuario])
REFERENCES [dbo].[Informacion_Personal_Empleado] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Informacion_Personal_Empleado]
GO
ALTER TABLE [dbo].[Usuario_Multimedia]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Multimedia_Informacion_Personal_Empleado] FOREIGN KEY([id_info_empleado])
REFERENCES [dbo].[Informacion_Personal_Empleado] ([id])
GO
ALTER TABLE [dbo].[Usuario_Multimedia] CHECK CONSTRAINT [FK_Usuario_Multimedia_Informacion_Personal_Empleado]
GO
ALTER TABLE [dbo].[Usuario_Multimedia]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Multimedia_Multimedia] FOREIGN KEY([id_multimedia])
REFERENCES [dbo].[Multimedia] ([id])
GO
ALTER TABLE [dbo].[Usuario_Multimedia] CHECK CONSTRAINT [FK_Usuario_Multimedia_Multimedia]
GO
USE [master]
GO
ALTER DATABASE [Hiring] SET  READ_WRITE 
GO
