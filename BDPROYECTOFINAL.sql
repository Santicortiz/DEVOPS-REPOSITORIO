USE [master]
GO
/****** Object:  Database [PROYECTOFINAL]    Script Date: 28/7/2020 7:43:31 p. m. ******/
CREATE DATABASE [PROYECTOFINAL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PROYECTOFINAL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DELLPC\MSSQL\DATA\PROYECTOFINAL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PROYECTOFINAL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DELLPC\MSSQL\DATA\PROYECTOFINAL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PROYECTOFINAL] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PROYECTOFINAL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PROYECTOFINAL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET ARITHABORT OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PROYECTOFINAL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PROYECTOFINAL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PROYECTOFINAL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PROYECTOFINAL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PROYECTOFINAL] SET  MULTI_USER 
GO
ALTER DATABASE [PROYECTOFINAL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PROYECTOFINAL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PROYECTOFINAL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PROYECTOFINAL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PROYECTOFINAL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PROYECTOFINAL] SET QUERY_STORE = OFF
GO
USE [PROYECTOFINAL]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 28/7/2020 7:43:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Cedula] [nchar](13) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
	[Apellido] [nchar](100) NOT NULL,
	[Telefono] [nchar](50) NOT NULL,
	[Email] [nchar](100) NOT NULL,
	[Departamento] [nchar](100) NOT NULL,
	[Cargo] [nchar](100) NOT NULL,
	[Fecha] [nchar](100) NOT NULL,
	[Salario] [int] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NOMINAS]    Script Date: 28/7/2020 7:43:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NOMINAS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mes] [int] NOT NULL,
	[Año] [int] NOT NULL,
	[Monto] [int] NOT NULL,
 CONSTRAINT [PK_NOMINAS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 
GO
INSERT [dbo].[Empleados] ([Id], [Cedula], [Nombre], [Apellido], [Telefono], [Email], [Departamento], [Cargo], [Fecha], [Salario]) VALUES (1, N'402-1234567- ', N'Maria                                             ', N'Ultresa                                                                                             ', N'829-975-5566                                      ', N'santicortiz00@gmail.com                                                                             ', N'Derechos humanos                                                                                    ', N'UI Designer                                                                                         ', N'20/10/2007                                                                                          ', 5000)
GO
INSERT [dbo].[Empleados] ([Id], [Cedula], [Nombre], [Apellido], [Telefono], [Email], [Departamento], [Cargo], [Fecha], [Salario]) VALUES (4, N'402-1234567-0', N'Juanito                                           ', N'Almonte                                                                                             ', N'829-970-8256                                      ', N'JuanitoA00@gmail.com                                                                                ', N'Derechos Humanos                                                                                    ', N'Developer                                                                                           ', N'25/1/2000                                                                                           ', 2000)
GO
INSERT [dbo].[Empleados] ([Id], [Cedula], [Nombre], [Apellido], [Telefono], [Email], [Departamento], [Cargo], [Fecha], [Salario]) VALUES (6, N'402-1234567-0', N'Joan                                              ', N'García                                                                                              ', N'829-975-5566                                      ', N'Joanjogmail@gmail.com                                                                               ', N'Derechos humanos                                                                                    ', N'Developer                                                                                           ', N'26/1/2003                                                                                           ', 2000)
GO
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[NOMINAS] ON 
GO
INSERT [dbo].[NOMINAS] ([Id], [Mes], [Año], [Monto]) VALUES (11, 7, 2020, 34000)
GO
INSERT [dbo].[NOMINAS] ([Id], [Mes], [Año], [Monto]) VALUES (13, 8, 2020, 25000)
GO
INSERT [dbo].[NOMINAS] ([Id], [Mes], [Año], [Monto]) VALUES (14, 7, 2020, 9000)
GO
SET IDENTITY_INSERT [dbo].[NOMINAS] OFF
GO
USE [master]
GO
ALTER DATABASE [PROYECTOFINAL] SET  READ_WRITE 
GO
