
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/27/2020 01:21:25
-- Generated from EDMX file: C:\Users\dell\Desktop\PROYECTO FINAL PROG II 20187053\PROYECTO FINAL PROG II 20187053\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PROYECTOFINAL];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Empleados]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Empleados];
GO
IF OBJECT_ID(N'[dbo].[NOMINAS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NOMINAS];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Empleados'
CREATE TABLE [dbo].[Empleados] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Cedula] nchar(13)  NOT NULL,
    [Nombre] nchar(50)  NOT NULL,
    [Apellido] nchar(100)  NOT NULL,
    [Telefono] nchar(50)  NOT NULL,
    [Email] nchar(100)  NOT NULL,
    [Departamento] nchar(100)  NOT NULL,
    [Cargo] nchar(100)  NOT NULL,
    [Fecha] nchar(100)  NOT NULL,
    [Salario] int  NOT NULL
);
GO

-- Creating table 'NOMINAS'
CREATE TABLE [dbo].[NOMINAS] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Mes] int  NOT NULL,
    [Año] int  NOT NULL,
    [Monto] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Empleados'
ALTER TABLE [dbo].[Empleados]
ADD CONSTRAINT [PK_Empleados]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NOMINAS'
ALTER TABLE [dbo].[NOMINAS]
ADD CONSTRAINT [PK_NOMINAS]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------