USE [master]
GO
/****** Object:  Database [SSA-Project-DevDB]    Script Date: 11/12/2015 10:17:08 ******/
CREATE DATABASE [SSA-Project-DevDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SSA-Project-DevDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SSA-Project-DevDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SSA-Project-DevDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SSA-Project-DevDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SSA-Project-DevDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SSA-Project-DevDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SSA-Project-DevDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SSA-Project-DevDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SSA-Project-DevDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SSA-Project-DevDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SSA-Project-DevDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET RECOVERY FULL 
GO
ALTER DATABASE [SSA-Project-DevDB] SET  MULTI_USER 
GO
ALTER DATABASE [SSA-Project-DevDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SSA-Project-DevDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SSA-Project-DevDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SSA-Project-DevDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SSA-Project-DevDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SSA-Project-DevDB]
GO
/****** Object:  Table [dbo].[Domain]    Script Date: 11/12/2015 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domain](
	[Id] [int] NOT NULL,
	[Title] [nchar](20) NOT NULL,
	[Description] [ntext] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Message]    Script Date: 11/12/2015 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [int] NOT NULL,
	[Title] [nchar](50) NOT NULL,
	[Body] [ntext] NOT NULL,
	[TimePosted] [datetime] NOT NULL,
	[Thread] [bit] NOT NULL,
	[Visible] [bit] NOT NULL,
	[AreaId] [int] NOT NULL,
	[UserId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rating]    Script Date: 11/12/2015 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[Id] [int] NOT NULL,
	[Stars] [tinyint] NOT NULL,
	[MessageId] [int] NOT NULL,
	[UserId] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 11/12/2015 10:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[Email] [nchar](50) NOT NULL,
	[PasswordHash] [nchar](50) NOT NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[LastLogin] [datetime] NOT NULL,
	[Superuser] [bit] NOT NULL,
	[Admin] [bit] NOT NULL,
	[Blocked] [bit] NOT NULL,
	[Inactive] [bit] NOT NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [SSA-Project-DevDB] SET  READ_WRITE 
GO
