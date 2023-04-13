USE [master]
GO
/****** Object:  Database [Esencial Verde]    Script Date: 4/13/2023 11:44:35 AM ******/
CREATE DATABASE [Esencial Verde]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Esencial Verde', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Esencial Verde.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Esencial Verde_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Esencial Verde_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Esencial Verde] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Esencial Verde].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Esencial Verde] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Esencial Verde] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Esencial Verde] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Esencial Verde] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Esencial Verde] SET ARITHABORT OFF 
GO
ALTER DATABASE [Esencial Verde] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Esencial Verde] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Esencial Verde] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Esencial Verde] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Esencial Verde] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Esencial Verde] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Esencial Verde] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Esencial Verde] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Esencial Verde] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Esencial Verde] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Esencial Verde] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Esencial Verde] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Esencial Verde] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Esencial Verde] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Esencial Verde] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Esencial Verde] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Esencial Verde] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Esencial Verde] SET RECOVERY FULL 
GO
ALTER DATABASE [Esencial Verde] SET  MULTI_USER 
GO
ALTER DATABASE [Esencial Verde] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Esencial Verde] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Esencial Verde] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Esencial Verde] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Esencial Verde] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Esencial Verde] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Esencial Verde', N'ON'
GO
ALTER DATABASE [Esencial Verde] SET QUERY_STORE = ON
GO
ALTER DATABASE [Esencial Verde] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Esencial Verde]
GO
/****** Object:  Table [dbo].[alt_collectors]    Script Date: 4/13/2023 11:44:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alt_collectors](
	[alt_collector_id] [int] NOT NULL,
 CONSTRAINT [PK_alt_collectors] PRIMARY KEY CLUSTERED 
(
	[alt_collector_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[channels]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[channels](
	[channel_id] [int] NOT NULL,
	[name] [nchar](10) NULL,
 CONSTRAINT [PK_channels] PRIMARY KEY CLUSTERED 
(
	[channel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cities]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cities](
	[city_id] [int] NOT NULL,
	[state/province_id] [int] NULL,
 CONSTRAINT [PK_cities] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[collection_cycles]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[collection_cycles](
	[collection_cycle_id] [int] NOT NULL,
	[producer_id] [int] NOT NULL,
	[initial_date] [nchar](10) NULL,
	[final_date] [nchar](10) NULL,
 CONSTRAINT [PK_collection_cycles] PRIMARY KEY CLUSTERED 
(
	[collection_cycle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[collections]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[collections](
	[collection_id] [int] NOT NULL,
	[producer_id] [int] NULL,
	[ev_collector_id] [int] NULL,
	[alt_collector_id] [int] NULL,
	[site_id] [int] NULL,
	[collection_score] [int] NULL,
 CONSTRAINT [PK_collections] PRIMARY KEY CLUSTERED 
(
	[collection_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[collectors_schedules]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[collectors_schedules](
	[collector_schedule_id] [int] NOT NULL,
	[ev_collector_id] [int] NULL,
	[initial_date] [datetime] NULL,
	[final_date] [datetime] NULL,
	[route_id] [int] NULL,
 CONSTRAINT [PK_collectors_schedules] PRIMARY KEY CLUSTERED 
(
	[collector_schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact_types]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact_types](
	[contact_type_id] [int] NOT NULL,
	[name] [nchar](10) NULL,
 CONSTRAINT [PK_contact_types] PRIMARY KEY CLUSTERED 
(
	[contact_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[contact_id] [int] NOT NULL,
	[contact_type_id] [int] NULL,
	[enabled] [bit] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[value] [nchar](100) NULL,
	[computer] [nchar](20) NULL,
	[username] [nchar](20) NULL,
	[checksum] [varbinary](50) NULL,
 CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contactsXalt_collectors]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contactsXalt_collectors](
	[contact_id] [int] NULL,
	[alt_collector_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contactsXev_collectors]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contactsXev_collectors](
	[contact_id] [int] NULL,
	[ev_collector_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contactsXproducers]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contactsXproducers](
	[contact_id] [int] NULL,
	[producer_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[containers_logs]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[containers_logs](
	[container_log_id] [int] NOT NULL,
	[cotainer_type_id] [int] NULL,
	[alt_collector_id] [int] NOT NULL,
	[ev_collector_id] [int] NOT NULL,
	[producer_id] [int] NOT NULL,
	[operation_id] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_containers_logs] PRIMARY KEY CLUSTERED 
(
	[container_log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[containers_types]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[containers_types](
	[container_type_id] [int] NOT NULL,
	[waste_id] [int] NULL,
	[capacity] [int] NULL,
	[in_use] [int] NULL,
	[available] [int] NULL,
	[discarded] [int] NULL,
	[on_maintenance] [int] NULL,
 CONSTRAINT [PK_containers] PRIMARY KEY CLUSTERED 
(
	[container_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contract_statuses]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contract_statuses](
	[contract_status_id] [int] NOT NULL,
	[description] [nchar](10) NULL,
 CONSTRAINT [PK_contract_statuses] PRIMARY KEY CLUSTERED 
(
	[contract_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contracts]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contracts](
	[contract_id] [int] NOT NULL,
	[initial_date] [datetime] NULL,
	[final_date] [datetime] NULL,
	[specific_location_id] [int] NULL,
	[contract_status_id] [int] NULL,
 CONSTRAINT [PK_contracts] PRIMARY KEY CLUSTERED 
(
	[contract_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contractsXalt_collector]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contractsXalt_collector](
	[contract_id] [int] NULL,
	[alt_collector_id] [int] NULL,
	[percentage] [decimal](18, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contractsXproducers]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contractsXproducers](
	[contract_id] [int] NULL,
	[producer_id] [int] NULL,
	[percentage] [decimal](18, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[countries]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[countries](
	[country_id] [int] NOT NULL,
 CONSTRAINT [PK_countries] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[currencies]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[currencies](
	[currency_id] [int] NOT NULL,
	[name] [nchar](10) NULL,
	[symbol] [nchar](10) NULL,
	[acronym] [nchar](10) NULL,
 CONSTRAINT [PK_currencies] PRIMARY KEY CLUSTERED 
(
	[currency_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ev_collectors]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ev_collectors](
	[ev_collector_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[computer] [nchar](20) NULL,
	[username] [nchar](20) NULL,
	[checksum] [varbinary](50) NULL,
 CONSTRAINT [PK_ev_collectors] PRIMARY KEY CLUSTERED 
(
	[ev_collector_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event_logs]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event_logs](
	[event_log_id] [int] NULL,
	[created_at] [datetime] NULL,
	[computer] [nchar](10) NULL,
	[username] [nchar](10) NULL,
	[checksum] [nchar](10) NULL,
	[description] [nchar](10) NULL,
	[reference_id1] [bigint] NULL,
	[reference_id2] [bigint] NULL,
	[value1] [nchar](10) NULL,
	[value2] [nchar](10) NULL,
	[event_type_id] [int] NULL,
	[object_type_id] [int] NULL,
	[level_id] [int] NULL,
	[source_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event_types]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event_types](
	[event_type_id] [int] NOT NULL,
	[type_name] [nchar](10) NULL,
 CONSTRAINT [PK_event_types] PRIMARY KEY CLUSTERED 
(
	[event_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exchange_logs]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exchange_logs](
	[exchange_log_id] [int] NOT NULL,
	[exchange_rate_id] [int] NULL,
 CONSTRAINT [PK_exchange_logs] PRIMARY KEY CLUSTERED 
(
	[exchange_log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exchange_rates]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exchange_rates](
	[exchange_rate_id] [int] NOT NULL,
	[default_currency] [int] NULL,
	[exchange_currency] [int] NULL,
	[rate] [decimal](18, 4) NULL,
	[initial_date] [date] NULL,
	[final_date] [date] NULL,
	[default] [bit] NULL,
	[computer] [nchar](10) NULL,
	[username] [nchar](10) NULL,
	[checksum] [varbinary](50) NULL,
 CONSTRAINT [PK_exchange_rates] PRIMARY KEY CLUSTERED 
(
	[exchange_rate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[languages]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[languages](
	[language_id] [int] NOT NULL,
 CONSTRAINT [PK_languages] PRIMARY KEY CLUSTERED 
(
	[language_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[languagesXcountries]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[languagesXcountries](
	[language_id] [int] NULL,
	[country_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[levels]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[levels](
	[level_id] [int] NOT NULL,
	[level_name] [nchar](10) NULL,
 CONSTRAINT [PK_levels] PRIMARY KEY CLUSTERED 
(
	[level_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materials]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materials](
	[material_id] [int] NOT NULL,
	[name] [nchar](10) NULL,
 CONSTRAINT [PK_materials] PRIMARY KEY CLUSTERED 
(
	[material_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materialsXprocesses]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materialsXprocesses](
	[material_id] [int] NULL,
	[process_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materialsXproducts]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materialsXproducts](
	[material_id] [int] NULL,
	[product_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[object_types]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[object_types](
	[object_type_id] [int] NOT NULL,
	[object_name] [nchar](10) NULL,
 CONSTRAINT [PK_object_types] PRIMARY KEY CLUSTERED 
(
	[object_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[operations]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operations](
	[operation_id] [int] NOT NULL,
	[name] [nchar](10) NULL,
 CONSTRAINT [PK_operations_1] PRIMARY KEY CLUSTERED 
(
	[operation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[processes]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[processes](
	[process_id] [int] NOT NULL,
	[duration] [int] NULL,
 CONSTRAINT [PK_operations] PRIMARY KEY CLUSTERED 
(
	[process_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[processesXcities]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[processesXcities](
	[process_id] [int] NULL,
	[city_id] [int] NULL,
	[cost] [decimal](18, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[processesXwastes]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[processesXwastes](
	[waste_id] [int] NULL,
	[process_id] [int] NULL,
	[cost] [decimal](18, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producers]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producers](
	[produder_id] [int] NOT NULL,
	[producer_score] [int] NULL,
	[name] [nchar](10) NULL,
	[specific_location_id] [int] NULL,
	[computer] [nchar](20) NULL,
	[username] [nchar](20) NULL,
	[checksum] [varbinary](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_producers] PRIMARY KEY CLUSTERED 
(
	[produder_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] NOT NULL,
	[name] [nchar](10) NULL,
	[sale_cost] [decimal](18, 4) NULL,
	[production_cost] [decimal](18, 4) NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products_inventories]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_inventories](
	[product_inventory_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NULL,
	[site_id] [int] NOT NULL,
	[contract_id] [int] NULL,
 CONSTRAINT [PK_products_inventories] PRIMARY KEY CLUSTERED 
(
	[product_inventory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products_inventories_logs]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_inventories_logs](
	[product_inventory_log_id] [nchar](10) NOT NULL,
	[date] [datetime] NULL,
	[product_inventory_id] [int] NULL,
	[quantity] [int] NULL,
	[product_id] [int] NULL,
	[operation_id] [int] NULL,
 CONSTRAINT [PK_products_inventories_logs] PRIMARY KEY CLUSTERED 
(
	[product_inventory_log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[receipts]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[receipts](
	[receipt_id] [int] NOT NULL,
	[collection_id] [int] NULL,
	[amount] [nchar](10) NULL,
	[contract_id] [int] NULL,
 CONSTRAINT [PK_receipts] PRIMARY KEY CLUSTERED 
(
	[receipt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[routes]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[routes](
	[route_id] [int] NOT NULL,
	[name] [nchar](10) NULL,
 CONSTRAINT [PK_routes] PRIMARY KEY CLUSTERED 
(
	[route_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales](
	[sale_id] [int] NOT NULL,
	[channel_id] [int] NULL,
	[product_id] [int] NULL,
	[quantity] [int] NULL,
	[date] [datetime] NULL,
	[buyer] [nchar](30) NULL,
 CONSTRAINT [PK_sales] PRIMARY KEY CLUSTERED 
(
	[sale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[site_schedules]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_schedules](
	[site_schedule_id] [int] NOT NULL,
	[site_id] [int] NULL,
	[opening_time] [time](7) NULL,
	[closing_time] [time](7) NULL,
	[initial_date] [datetime] NULL,
	[final_date] [datetime] NULL,
 CONSTRAINT [PK_site_schedules] PRIMARY KEY CLUSTERED 
(
	[site_schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sites]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sites](
	[site_id] [int] NOT NULL,
	[specific_location_id] [int] NULL,
 CONSTRAINT [PK_sites] PRIMARY KEY CLUSTERED 
(
	[site_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sources]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sources](
	[source_id] [int] NOT NULL,
	[source_name] [nchar](10) NULL,
 CONSTRAINT [PK_sources] PRIMARY KEY CLUSTERED 
(
	[source_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[specific_locations]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[specific_locations](
	[specific_location_id] [int] NOT NULL,
	[city_id] [int] NULL,
	[address_one] [nchar](10) NULL,
	[address_two] [nchar](10) NULL,
 CONSTRAINT [PK_specific_locations] PRIMARY KEY CLUSTERED 
(
	[specific_location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[specific_locationsXroutes]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[specific_locationsXroutes](
	[specific_location_id] [int] NULL,
	[route_id] [int] NULL,
	[order] [int] NULL,
	[distance] [decimal](18, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[states/provinces]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[states/provinces](
	[sate/province_id] [int] NOT NULL,
	[country_id] [int] NULL,
 CONSTRAINT [PK_states/provinces] PRIMARY KEY CLUSTERED 
(
	[sate/province_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[termsXcontracts]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[termsXcontracts](
	[contract_id] [int] NULL,
	[currency_id] [int] NULL,
	[initial_date] [datetime] NULL,
	[waste_id] [int] NULL,
	[quantity] [int] NULL,
	[final_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wastes]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wastes](
	[waste_id] [int] NOT NULL,
	[name] [nchar](10) NULL,
	[measurement] [nchar](10) NULL,
 CONSTRAINT [PK_wastes] PRIMARY KEY CLUSTERED 
(
	[waste_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wastesXproducers]    Script Date: 4/13/2023 11:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wastesXproducers](
	[waste_id] [int] NULL,
	[producer_id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cities]  WITH CHECK ADD  CONSTRAINT [FK_cities_states/provinces] FOREIGN KEY([state/province_id])
REFERENCES [dbo].[states/provinces] ([sate/province_id])
GO
ALTER TABLE [dbo].[cities] CHECK CONSTRAINT [FK_cities_states/provinces]
GO
ALTER TABLE [dbo].[collection_cycles]  WITH CHECK ADD  CONSTRAINT [producers_collection_cycles] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producers] ([produder_id])
GO
ALTER TABLE [dbo].[collection_cycles] CHECK CONSTRAINT [producers_collection_cycles]
GO
ALTER TABLE [dbo].[collections]  WITH CHECK ADD  CONSTRAINT [alt_collectors_collections] FOREIGN KEY([alt_collector_id])
REFERENCES [dbo].[alt_collectors] ([alt_collector_id])
GO
ALTER TABLE [dbo].[collections] CHECK CONSTRAINT [alt_collectors_collections]
GO
ALTER TABLE [dbo].[collections]  WITH CHECK ADD  CONSTRAINT [ev_collectors_collections] FOREIGN KEY([ev_collector_id])
REFERENCES [dbo].[ev_collectors] ([ev_collector_id])
GO
ALTER TABLE [dbo].[collections] CHECK CONSTRAINT [ev_collectors_collections]
GO
ALTER TABLE [dbo].[collections]  WITH CHECK ADD  CONSTRAINT [producers_collections] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producers] ([produder_id])
GO
ALTER TABLE [dbo].[collections] CHECK CONSTRAINT [producers_collections]
GO
ALTER TABLE [dbo].[collections]  WITH CHECK ADD  CONSTRAINT [sites_collections] FOREIGN KEY([site_id])
REFERENCES [dbo].[sites] ([site_id])
GO
ALTER TABLE [dbo].[collections] CHECK CONSTRAINT [sites_collections]
GO
ALTER TABLE [dbo].[collectors_schedules]  WITH CHECK ADD  CONSTRAINT [ev_collectors_collectors_schedules] FOREIGN KEY([ev_collector_id])
REFERENCES [dbo].[ev_collectors] ([ev_collector_id])
GO
ALTER TABLE [dbo].[collectors_schedules] CHECK CONSTRAINT [ev_collectors_collectors_schedules]
GO
ALTER TABLE [dbo].[collectors_schedules]  WITH CHECK ADD  CONSTRAINT [FK_collectors_schedules_routes] FOREIGN KEY([route_id])
REFERENCES [dbo].[routes] ([route_id])
GO
ALTER TABLE [dbo].[collectors_schedules] CHECK CONSTRAINT [FK_collectors_schedules_routes]
GO
ALTER TABLE [dbo].[contacts]  WITH CHECK ADD  CONSTRAINT [FK_contacts_contact_types] FOREIGN KEY([contact_type_id])
REFERENCES [dbo].[contact_types] ([contact_type_id])
GO
ALTER TABLE [dbo].[contacts] CHECK CONSTRAINT [FK_contacts_contact_types]
GO
ALTER TABLE [dbo].[contactsXalt_collectors]  WITH CHECK ADD  CONSTRAINT [FK_contactsXalt_collectors_alt_collectors] FOREIGN KEY([alt_collector_id])
REFERENCES [dbo].[alt_collectors] ([alt_collector_id])
GO
ALTER TABLE [dbo].[contactsXalt_collectors] CHECK CONSTRAINT [FK_contactsXalt_collectors_alt_collectors]
GO
ALTER TABLE [dbo].[contactsXalt_collectors]  WITH CHECK ADD  CONSTRAINT [FK_contactsXalt_collectors_contacts] FOREIGN KEY([contact_id])
REFERENCES [dbo].[contacts] ([contact_id])
GO
ALTER TABLE [dbo].[contactsXalt_collectors] CHECK CONSTRAINT [FK_contactsXalt_collectors_contacts]
GO
ALTER TABLE [dbo].[contactsXev_collectors]  WITH CHECK ADD  CONSTRAINT [FK_contactsXev_collectors_contacts] FOREIGN KEY([contact_id])
REFERENCES [dbo].[contacts] ([contact_id])
GO
ALTER TABLE [dbo].[contactsXev_collectors] CHECK CONSTRAINT [FK_contactsXev_collectors_contacts]
GO
ALTER TABLE [dbo].[contactsXev_collectors]  WITH CHECK ADD  CONSTRAINT [FK_contactsXev_collectors_ev_collectors] FOREIGN KEY([ev_collector_id])
REFERENCES [dbo].[ev_collectors] ([ev_collector_id])
GO
ALTER TABLE [dbo].[contactsXev_collectors] CHECK CONSTRAINT [FK_contactsXev_collectors_ev_collectors]
GO
ALTER TABLE [dbo].[contactsXproducers]  WITH CHECK ADD  CONSTRAINT [FK_contactsXproducers_contacts] FOREIGN KEY([contact_id])
REFERENCES [dbo].[contacts] ([contact_id])
GO
ALTER TABLE [dbo].[contactsXproducers] CHECK CONSTRAINT [FK_contactsXproducers_contacts]
GO
ALTER TABLE [dbo].[contactsXproducers]  WITH CHECK ADD  CONSTRAINT [FK_contactsXproducers_producers] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producers] ([produder_id])
GO
ALTER TABLE [dbo].[contactsXproducers] CHECK CONSTRAINT [FK_contactsXproducers_producers]
GO
ALTER TABLE [dbo].[containers_logs]  WITH CHECK ADD  CONSTRAINT [containers_containers_logs] FOREIGN KEY([cotainer_type_id])
REFERENCES [dbo].[containers_types] ([container_type_id])
GO
ALTER TABLE [dbo].[containers_logs] CHECK CONSTRAINT [containers_containers_logs]
GO
ALTER TABLE [dbo].[containers_logs]  WITH CHECK ADD  CONSTRAINT [FK_containers_logs_alt_collectors] FOREIGN KEY([alt_collector_id])
REFERENCES [dbo].[alt_collectors] ([alt_collector_id])
GO
ALTER TABLE [dbo].[containers_logs] CHECK CONSTRAINT [FK_containers_logs_alt_collectors]
GO
ALTER TABLE [dbo].[containers_logs]  WITH CHECK ADD  CONSTRAINT [FK_containers_logs_ev_collectors] FOREIGN KEY([ev_collector_id])
REFERENCES [dbo].[ev_collectors] ([ev_collector_id])
GO
ALTER TABLE [dbo].[containers_logs] CHECK CONSTRAINT [FK_containers_logs_ev_collectors]
GO
ALTER TABLE [dbo].[containers_logs]  WITH CHECK ADD  CONSTRAINT [FK_containers_logs_operations] FOREIGN KEY([operation_id])
REFERENCES [dbo].[operations] ([operation_id])
GO
ALTER TABLE [dbo].[containers_logs] CHECK CONSTRAINT [FK_containers_logs_operations]
GO
ALTER TABLE [dbo].[containers_logs]  WITH CHECK ADD  CONSTRAINT [FK_containers_logs_producers] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producers] ([produder_id])
GO
ALTER TABLE [dbo].[containers_logs] CHECK CONSTRAINT [FK_containers_logs_producers]
GO
ALTER TABLE [dbo].[containers_types]  WITH CHECK ADD  CONSTRAINT [wastes_containers] FOREIGN KEY([waste_id])
REFERENCES [dbo].[wastes] ([waste_id])
GO
ALTER TABLE [dbo].[containers_types] CHECK CONSTRAINT [wastes_containers]
GO
ALTER TABLE [dbo].[contracts]  WITH CHECK ADD  CONSTRAINT [FK_contracts_contract_statuses] FOREIGN KEY([contract_status_id])
REFERENCES [dbo].[contract_statuses] ([contract_status_id])
GO
ALTER TABLE [dbo].[contracts] CHECK CONSTRAINT [FK_contracts_contract_statuses]
GO
ALTER TABLE [dbo].[contracts]  WITH CHECK ADD  CONSTRAINT [FK_contracts_specific_locations] FOREIGN KEY([specific_location_id])
REFERENCES [dbo].[specific_locations] ([specific_location_id])
GO
ALTER TABLE [dbo].[contracts] CHECK CONSTRAINT [FK_contracts_specific_locations]
GO
ALTER TABLE [dbo].[contractsXalt_collector]  WITH CHECK ADD  CONSTRAINT [FK_contractsXalt_collector_alt_collectors] FOREIGN KEY([alt_collector_id])
REFERENCES [dbo].[alt_collectors] ([alt_collector_id])
GO
ALTER TABLE [dbo].[contractsXalt_collector] CHECK CONSTRAINT [FK_contractsXalt_collector_alt_collectors]
GO
ALTER TABLE [dbo].[contractsXalt_collector]  WITH CHECK ADD  CONSTRAINT [FK_contractsXalt_collector_contracts] FOREIGN KEY([contract_id])
REFERENCES [dbo].[contracts] ([contract_id])
GO
ALTER TABLE [dbo].[contractsXalt_collector] CHECK CONSTRAINT [FK_contractsXalt_collector_contracts]
GO
ALTER TABLE [dbo].[contractsXproducers]  WITH CHECK ADD  CONSTRAINT [FK_contractsXproducers_contracts] FOREIGN KEY([contract_id])
REFERENCES [dbo].[contracts] ([contract_id])
GO
ALTER TABLE [dbo].[contractsXproducers] CHECK CONSTRAINT [FK_contractsXproducers_contracts]
GO
ALTER TABLE [dbo].[contractsXproducers]  WITH CHECK ADD  CONSTRAINT [FK_contractsXproducers_producers] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producers] ([produder_id])
GO
ALTER TABLE [dbo].[contractsXproducers] CHECK CONSTRAINT [FK_contractsXproducers_producers]
GO
ALTER TABLE [dbo].[event_logs]  WITH CHECK ADD  CONSTRAINT [FK_event_logs_event_types] FOREIGN KEY([event_type_id])
REFERENCES [dbo].[event_types] ([event_type_id])
GO
ALTER TABLE [dbo].[event_logs] CHECK CONSTRAINT [FK_event_logs_event_types]
GO
ALTER TABLE [dbo].[event_logs]  WITH CHECK ADD  CONSTRAINT [FK_event_logs_levels] FOREIGN KEY([level_id])
REFERENCES [dbo].[levels] ([level_id])
GO
ALTER TABLE [dbo].[event_logs] CHECK CONSTRAINT [FK_event_logs_levels]
GO
ALTER TABLE [dbo].[event_logs]  WITH CHECK ADD  CONSTRAINT [FK_event_logs_object_types] FOREIGN KEY([object_type_id])
REFERENCES [dbo].[object_types] ([object_type_id])
GO
ALTER TABLE [dbo].[event_logs] CHECK CONSTRAINT [FK_event_logs_object_types]
GO
ALTER TABLE [dbo].[event_logs]  WITH CHECK ADD  CONSTRAINT [FK_event_logs_sources] FOREIGN KEY([source_id])
REFERENCES [dbo].[sources] ([source_id])
GO
ALTER TABLE [dbo].[event_logs] CHECK CONSTRAINT [FK_event_logs_sources]
GO
ALTER TABLE [dbo].[exchange_logs]  WITH CHECK ADD  CONSTRAINT [exchange_rates_exchange_logs] FOREIGN KEY([exchange_rate_id])
REFERENCES [dbo].[exchange_rates] ([exchange_rate_id])
GO
ALTER TABLE [dbo].[exchange_logs] CHECK CONSTRAINT [exchange_rates_exchange_logs]
GO
ALTER TABLE [dbo].[exchange_rates]  WITH CHECK ADD  CONSTRAINT [FK_exchange_rates_currencies] FOREIGN KEY([default_currency])
REFERENCES [dbo].[currencies] ([currency_id])
GO
ALTER TABLE [dbo].[exchange_rates] CHECK CONSTRAINT [FK_exchange_rates_currencies]
GO
ALTER TABLE [dbo].[exchange_rates]  WITH CHECK ADD  CONSTRAINT [FK_exchange_rates_currencies1] FOREIGN KEY([default_currency])
REFERENCES [dbo].[currencies] ([currency_id])
GO
ALTER TABLE [dbo].[exchange_rates] CHECK CONSTRAINT [FK_exchange_rates_currencies1]
GO
ALTER TABLE [dbo].[languagesXcountries]  WITH CHECK ADD  CONSTRAINT [countries_languagesXcountries] FOREIGN KEY([country_id])
REFERENCES [dbo].[countries] ([country_id])
GO
ALTER TABLE [dbo].[languagesXcountries] CHECK CONSTRAINT [countries_languagesXcountries]
GO
ALTER TABLE [dbo].[languagesXcountries]  WITH CHECK ADD  CONSTRAINT [languages_languagesXcountries] FOREIGN KEY([language_id])
REFERENCES [dbo].[languages] ([language_id])
GO
ALTER TABLE [dbo].[languagesXcountries] CHECK CONSTRAINT [languages_languagesXcountries]
GO
ALTER TABLE [dbo].[materialsXprocesses]  WITH CHECK ADD  CONSTRAINT [FK_materialsXprocesses_materials] FOREIGN KEY([material_id])
REFERENCES [dbo].[materials] ([material_id])
GO
ALTER TABLE [dbo].[materialsXprocesses] CHECK CONSTRAINT [FK_materialsXprocesses_materials]
GO
ALTER TABLE [dbo].[materialsXprocesses]  WITH CHECK ADD  CONSTRAINT [FK_materialsXprocesses_processes] FOREIGN KEY([process_id])
REFERENCES [dbo].[processes] ([process_id])
GO
ALTER TABLE [dbo].[materialsXprocesses] CHECK CONSTRAINT [FK_materialsXprocesses_processes]
GO
ALTER TABLE [dbo].[materialsXproducts]  WITH CHECK ADD  CONSTRAINT [materials_materialsXproducts] FOREIGN KEY([material_id])
REFERENCES [dbo].[materials] ([material_id])
GO
ALTER TABLE [dbo].[materialsXproducts] CHECK CONSTRAINT [materials_materialsXproducts]
GO
ALTER TABLE [dbo].[materialsXproducts]  WITH CHECK ADD  CONSTRAINT [products_materialsXproducts] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[materialsXproducts] CHECK CONSTRAINT [products_materialsXproducts]
GO
ALTER TABLE [dbo].[processesXcities]  WITH CHECK ADD  CONSTRAINT [FK_processesXcities_cities] FOREIGN KEY([city_id])
REFERENCES [dbo].[cities] ([city_id])
GO
ALTER TABLE [dbo].[processesXcities] CHECK CONSTRAINT [FK_processesXcities_cities]
GO
ALTER TABLE [dbo].[processesXcities]  WITH CHECK ADD  CONSTRAINT [FK_processesXcities_processes] FOREIGN KEY([process_id])
REFERENCES [dbo].[processes] ([process_id])
GO
ALTER TABLE [dbo].[processesXcities] CHECK CONSTRAINT [FK_processesXcities_processes]
GO
ALTER TABLE [dbo].[processesXwastes]  WITH CHECK ADD  CONSTRAINT [operations_wastesXoperations] FOREIGN KEY([process_id])
REFERENCES [dbo].[processes] ([process_id])
GO
ALTER TABLE [dbo].[processesXwastes] CHECK CONSTRAINT [operations_wastesXoperations]
GO
ALTER TABLE [dbo].[processesXwastes]  WITH CHECK ADD  CONSTRAINT [wastes_wastesXoperations] FOREIGN KEY([waste_id])
REFERENCES [dbo].[wastes] ([waste_id])
GO
ALTER TABLE [dbo].[processesXwastes] CHECK CONSTRAINT [wastes_wastesXoperations]
GO
ALTER TABLE [dbo].[producers]  WITH CHECK ADD  CONSTRAINT [FK_producers_specific_locations] FOREIGN KEY([specific_location_id])
REFERENCES [dbo].[specific_locations] ([specific_location_id])
GO
ALTER TABLE [dbo].[producers] CHECK CONSTRAINT [FK_producers_specific_locations]
GO
ALTER TABLE [dbo].[products_inventories]  WITH CHECK ADD  CONSTRAINT [FK_products_inventories_contracts] FOREIGN KEY([contract_id])
REFERENCES [dbo].[contracts] ([contract_id])
GO
ALTER TABLE [dbo].[products_inventories] CHECK CONSTRAINT [FK_products_inventories_contracts]
GO
ALTER TABLE [dbo].[products_inventories]  WITH CHECK ADD  CONSTRAINT [FK_products_inventories_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[products_inventories] CHECK CONSTRAINT [FK_products_inventories_products]
GO
ALTER TABLE [dbo].[products_inventories]  WITH CHECK ADD  CONSTRAINT [FK_products_inventories_sites1] FOREIGN KEY([site_id])
REFERENCES [dbo].[sites] ([site_id])
GO
ALTER TABLE [dbo].[products_inventories] CHECK CONSTRAINT [FK_products_inventories_sites1]
GO
ALTER TABLE [dbo].[products_inventories_logs]  WITH CHECK ADD  CONSTRAINT [FK_products_inventories_logs_operations] FOREIGN KEY([operation_id])
REFERENCES [dbo].[operations] ([operation_id])
GO
ALTER TABLE [dbo].[products_inventories_logs] CHECK CONSTRAINT [FK_products_inventories_logs_operations]
GO
ALTER TABLE [dbo].[products_inventories_logs]  WITH CHECK ADD  CONSTRAINT [FK_products_inventories_logs_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[products_inventories_logs] CHECK CONSTRAINT [FK_products_inventories_logs_products]
GO
ALTER TABLE [dbo].[products_inventories_logs]  WITH CHECK ADD  CONSTRAINT [FK_products_inventories_logs_products_inventories] FOREIGN KEY([product_inventory_id])
REFERENCES [dbo].[products_inventories] ([product_inventory_id])
GO
ALTER TABLE [dbo].[products_inventories_logs] CHECK CONSTRAINT [FK_products_inventories_logs_products_inventories]
GO
ALTER TABLE [dbo].[receipts]  WITH CHECK ADD  CONSTRAINT [collections_receipts] FOREIGN KEY([collection_id])
REFERENCES [dbo].[collections] ([collection_id])
GO
ALTER TABLE [dbo].[receipts] CHECK CONSTRAINT [collections_receipts]
GO
ALTER TABLE [dbo].[receipts]  WITH CHECK ADD  CONSTRAINT [FK_receipts_contracts] FOREIGN KEY([contract_id])
REFERENCES [dbo].[contracts] ([contract_id])
GO
ALTER TABLE [dbo].[receipts] CHECK CONSTRAINT [FK_receipts_contracts]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_channels] FOREIGN KEY([channel_id])
REFERENCES [dbo].[channels] ([channel_id])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_channels]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_products]
GO
ALTER TABLE [dbo].[site_schedules]  WITH CHECK ADD  CONSTRAINT [sites_site_schedules] FOREIGN KEY([site_id])
REFERENCES [dbo].[sites] ([site_id])
GO
ALTER TABLE [dbo].[site_schedules] CHECK CONSTRAINT [sites_site_schedules]
GO
ALTER TABLE [dbo].[sites]  WITH CHECK ADD  CONSTRAINT [FK_sites_specific_locations] FOREIGN KEY([specific_location_id])
REFERENCES [dbo].[specific_locations] ([specific_location_id])
GO
ALTER TABLE [dbo].[sites] CHECK CONSTRAINT [FK_sites_specific_locations]
GO
ALTER TABLE [dbo].[specific_locations]  WITH CHECK ADD  CONSTRAINT [FK_specific_locations_cities] FOREIGN KEY([city_id])
REFERENCES [dbo].[cities] ([city_id])
GO
ALTER TABLE [dbo].[specific_locations] CHECK CONSTRAINT [FK_specific_locations_cities]
GO
ALTER TABLE [dbo].[specific_locationsXroutes]  WITH CHECK ADD  CONSTRAINT [FK_specific_locationsXroutes_routes] FOREIGN KEY([route_id])
REFERENCES [dbo].[routes] ([route_id])
GO
ALTER TABLE [dbo].[specific_locationsXroutes] CHECK CONSTRAINT [FK_specific_locationsXroutes_routes]
GO
ALTER TABLE [dbo].[specific_locationsXroutes]  WITH CHECK ADD  CONSTRAINT [FK_specific_locationsXroutes_specific_locations] FOREIGN KEY([specific_location_id])
REFERENCES [dbo].[specific_locations] ([specific_location_id])
GO
ALTER TABLE [dbo].[specific_locationsXroutes] CHECK CONSTRAINT [FK_specific_locationsXroutes_specific_locations]
GO
ALTER TABLE [dbo].[states/provinces]  WITH CHECK ADD  CONSTRAINT [FK_states/provinces_countries] FOREIGN KEY([country_id])
REFERENCES [dbo].[countries] ([country_id])
GO
ALTER TABLE [dbo].[states/provinces] CHECK CONSTRAINT [FK_states/provinces_countries]
GO
ALTER TABLE [dbo].[termsXcontracts]  WITH CHECK ADD  CONSTRAINT [FK_termsXcontracts_contracts] FOREIGN KEY([contract_id])
REFERENCES [dbo].[contracts] ([contract_id])
GO
ALTER TABLE [dbo].[termsXcontracts] CHECK CONSTRAINT [FK_termsXcontracts_contracts]
GO
ALTER TABLE [dbo].[termsXcontracts]  WITH CHECK ADD  CONSTRAINT [FK_termsXcontracts_currencies] FOREIGN KEY([currency_id])
REFERENCES [dbo].[currencies] ([currency_id])
GO
ALTER TABLE [dbo].[termsXcontracts] CHECK CONSTRAINT [FK_termsXcontracts_currencies]
GO
ALTER TABLE [dbo].[termsXcontracts]  WITH CHECK ADD  CONSTRAINT [FK_termsXcontracts_wastes] FOREIGN KEY([waste_id])
REFERENCES [dbo].[wastes] ([waste_id])
GO
ALTER TABLE [dbo].[termsXcontracts] CHECK CONSTRAINT [FK_termsXcontracts_wastes]
GO
ALTER TABLE [dbo].[wastesXproducers]  WITH CHECK ADD  CONSTRAINT [FK_wastesXproducers_producers] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producers] ([produder_id])
GO
ALTER TABLE [dbo].[wastesXproducers] CHECK CONSTRAINT [FK_wastesXproducers_producers]
GO
ALTER TABLE [dbo].[wastesXproducers]  WITH CHECK ADD  CONSTRAINT [FK_wastesXproducers_wastes] FOREIGN KEY([waste_id])
REFERENCES [dbo].[wastes] ([waste_id])
GO
ALTER TABLE [dbo].[wastesXproducers] CHECK CONSTRAINT [FK_wastesXproducers_wastes]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'duration per measurement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'processes', @level2type=N'COLUMN',@level2name=N'duration'
GO
USE [master]
GO
ALTER DATABASE [Esencial Verde] SET  READ_WRITE 
GO
