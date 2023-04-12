USE [master]
GO
/****** Object:  Database [Esencial Verde]    Script Date: 4/11/2023 6:43:01 PM ******/
CREATE DATABASE [Esencial Verde]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Esencial Verde', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Esencial Verde.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Esencial Verde_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Esencial Verde_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[alt_collectors]    Script Date: 4/11/2023 6:43:01 PM ******/
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
/****** Object:  Table [dbo].[cities]    Script Date: 4/11/2023 6:43:01 PM ******/
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
/****** Object:  Table [dbo].[collection_cycles]    Script Date: 4/11/2023 6:43:01 PM ******/
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
/****** Object:  Table [dbo].[collections]    Script Date: 4/11/2023 6:43:01 PM ******/
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
 CONSTRAINT [PK_collections] PRIMARY KEY CLUSTERED 
(
	[collection_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[collectors_schedules]    Script Date: 4/11/2023 6:43:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[collectors_schedules](
	[collector_schedule_id] [int] NULL,
	[alt_collector_id] [int] NULL,
	[ev_collector_id] [int] NULL,
	[initial_date] [datetime] NULL,
	[final_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[container_states]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[container_states](
	[container_state_id] [int] NOT NULL,
	[description] [nchar](10) NULL,
 CONSTRAINT [PK_container_states] PRIMARY KEY CLUSTERED 
(
	[container_state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[containers]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[containers](
	[container_id] [int] NOT NULL,
	[waste_id] [int] NULL,
	[capacity] [int] NULL,
	[container_state_id] [int] NULL,
	[measurement] [nchar](10) NULL,
 CONSTRAINT [PK_containers] PRIMARY KEY CLUSTERED 
(
	[container_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[containers_logs]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[containers_logs](
	[container_log_id] [int] NULL,
	[cotainer_id] [int] NULL,
	[location] [nchar](10) NULL,
	[handler] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contracts]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contracts](
	[contract_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[countries]    Script Date: 4/11/2023 6:43:02 PM ******/
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
/****** Object:  Table [dbo].[currencies]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[currencies](
	[currency_id] [int] NOT NULL,
	[name] [nchar](10) NULL,
	[symbol] [nchar](10) NULL,
 CONSTRAINT [PK_currencies] PRIMARY KEY CLUSTERED 
(
	[currency_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ev_collectors]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ev_collectors](
	[ev_collector_id] [int] NOT NULL,
 CONSTRAINT [PK_ev_collectors] PRIMARY KEY CLUSTERED 
(
	[ev_collector_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exchange_logs]    Script Date: 4/11/2023 6:43:02 PM ******/
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
/****** Object:  Table [dbo].[exchange_rates]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exchange_rates](
	[exchange_rate_id] [int] NOT NULL,
	[first_currency] [int] NULL,
	[second_currency] [int] NULL,
	[rate] [decimal](18, 0) NULL,
	[initial_date] [date] NULL,
	[final_date] [date] NULL,
	[availability] [bit] NULL,
 CONSTRAINT [PK_exchange_rates] PRIMARY KEY CLUSTERED 
(
	[exchange_rate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[languages]    Script Date: 4/11/2023 6:43:02 PM ******/
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
/****** Object:  Table [dbo].[languagesXcountries]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[languagesXcountries](
	[language_id] [int] NULL,
	[country_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materials]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materials](
	[material_id] [int] NOT NULL,
 CONSTRAINT [PK_materials] PRIMARY KEY CLUSTERED 
(
	[material_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materialsXproducts]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materialsXproducts](
	[material_id] [int] NULL,
	[product_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[operations]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operations](
	[operation_id] [int] NOT NULL,
	[cost] [decimal](18, 2) NULL,
	[duration] [int] NULL,
	[measurement] [nchar](10) NULL,
 CONSTRAINT [PK_operations] PRIMARY KEY CLUSTERED 
(
	[operation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producers]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producers](
	[produder_id] [int] NOT NULL,
	[name] [nchar](10) NULL,
	[location] [nchar](10) NULL,
 CONSTRAINT [PK_producers] PRIMARY KEY CLUSTERED 
(
	[produder_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[receipts]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[receipts](
	[receipt_id] [int] NULL,
	[collection_id] [int] NULL,
	[amount] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales](
	[sale_id] [int] NOT NULL,
 CONSTRAINT [PK_sales] PRIMARY KEY CLUSTERED 
(
	[sale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[site_schedules]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_schedules](
	[site_schedule_id] [int] NOT NULL,
	[site_id] [int] NULL,
	[capacity] [nchar](10) NULL,
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
/****** Object:  Table [dbo].[sites]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sites](
	[site_id] [int] NOT NULL,
	[location] [nchar](10) NULL,
 CONSTRAINT [PK_sites] PRIMARY KEY CLUSTERED 
(
	[site_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[specific_locations]    Script Date: 4/11/2023 6:43:02 PM ******/
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
/****** Object:  Table [dbo].[states/provinces]    Script Date: 4/11/2023 6:43:02 PM ******/
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
/****** Object:  Table [dbo].[wastes]    Script Date: 4/11/2023 6:43:02 PM ******/
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
/****** Object:  Table [dbo].[wastesXoperations]    Script Date: 4/11/2023 6:43:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wastesXoperations](
	[waste_id] [int] NULL,
	[operation_id] [int] NULL
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
ALTER TABLE [dbo].[collectors_schedules]  WITH CHECK ADD  CONSTRAINT [alt_collectors_collectors_schedules] FOREIGN KEY([alt_collector_id])
REFERENCES [dbo].[alt_collectors] ([alt_collector_id])
GO
ALTER TABLE [dbo].[collectors_schedules] CHECK CONSTRAINT [alt_collectors_collectors_schedules]
GO
ALTER TABLE [dbo].[collectors_schedules]  WITH CHECK ADD  CONSTRAINT [ev_collectors_collectors_schedules] FOREIGN KEY([ev_collector_id])
REFERENCES [dbo].[ev_collectors] ([ev_collector_id])
GO
ALTER TABLE [dbo].[collectors_schedules] CHECK CONSTRAINT [ev_collectors_collectors_schedules]
GO
ALTER TABLE [dbo].[containers]  WITH CHECK ADD  CONSTRAINT [container_states_containers] FOREIGN KEY([container_state_id])
REFERENCES [dbo].[container_states] ([container_state_id])
GO
ALTER TABLE [dbo].[containers] CHECK CONSTRAINT [container_states_containers]
GO
ALTER TABLE [dbo].[containers]  WITH CHECK ADD  CONSTRAINT [wastes_containers] FOREIGN KEY([waste_id])
REFERENCES [dbo].[wastes] ([waste_id])
GO
ALTER TABLE [dbo].[containers] CHECK CONSTRAINT [wastes_containers]
GO
ALTER TABLE [dbo].[containers_logs]  WITH CHECK ADD  CONSTRAINT [containers_containers_logs] FOREIGN KEY([cotainer_id])
REFERENCES [dbo].[containers] ([container_id])
GO
ALTER TABLE [dbo].[containers_logs] CHECK CONSTRAINT [containers_containers_logs]
GO
ALTER TABLE [dbo].[exchange_logs]  WITH CHECK ADD  CONSTRAINT [exchange_rates_exchange_logs] FOREIGN KEY([exchange_rate_id])
REFERENCES [dbo].[exchange_rates] ([exchange_rate_id])
GO
ALTER TABLE [dbo].[exchange_logs] CHECK CONSTRAINT [exchange_rates_exchange_logs]
GO
ALTER TABLE [dbo].[exchange_rates]  WITH CHECK ADD  CONSTRAINT [currencies_exchange_rates_first] FOREIGN KEY([first_currency])
REFERENCES [dbo].[currencies] ([currency_id])
GO
ALTER TABLE [dbo].[exchange_rates] CHECK CONSTRAINT [currencies_exchange_rates_first]
GO
ALTER TABLE [dbo].[exchange_rates]  WITH CHECK ADD  CONSTRAINT [currencies_exchange_rates_second] FOREIGN KEY([second_currency])
REFERENCES [dbo].[currencies] ([currency_id])
GO
ALTER TABLE [dbo].[exchange_rates] CHECK CONSTRAINT [currencies_exchange_rates_second]
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
ALTER TABLE [dbo].[receipts]  WITH CHECK ADD  CONSTRAINT [collections_receipts] FOREIGN KEY([collection_id])
REFERENCES [dbo].[collections] ([collection_id])
GO
ALTER TABLE [dbo].[receipts] CHECK CONSTRAINT [collections_receipts]
GO
ALTER TABLE [dbo].[site_schedules]  WITH CHECK ADD  CONSTRAINT [sites_site_schedules] FOREIGN KEY([site_id])
REFERENCES [dbo].[sites] ([site_id])
GO
ALTER TABLE [dbo].[site_schedules] CHECK CONSTRAINT [sites_site_schedules]
GO
ALTER TABLE [dbo].[specific_locations]  WITH CHECK ADD  CONSTRAINT [FK_specific_locations_cities] FOREIGN KEY([city_id])
REFERENCES [dbo].[cities] ([city_id])
GO
ALTER TABLE [dbo].[specific_locations] CHECK CONSTRAINT [FK_specific_locations_cities]
GO
ALTER TABLE [dbo].[states/provinces]  WITH CHECK ADD  CONSTRAINT [FK_states/provinces_countries] FOREIGN KEY([country_id])
REFERENCES [dbo].[countries] ([country_id])
GO
ALTER TABLE [dbo].[states/provinces] CHECK CONSTRAINT [FK_states/provinces_countries]
GO
ALTER TABLE [dbo].[wastesXoperations]  WITH CHECK ADD  CONSTRAINT [operations_wastesXoperations] FOREIGN KEY([operation_id])
REFERENCES [dbo].[operations] ([operation_id])
GO
ALTER TABLE [dbo].[wastesXoperations] CHECK CONSTRAINT [operations_wastesXoperations]
GO
ALTER TABLE [dbo].[wastesXoperations]  WITH CHECK ADD  CONSTRAINT [wastes_wastesXoperations] FOREIGN KEY([waste_id])
REFERENCES [dbo].[wastes] ([waste_id])
GO
ALTER TABLE [dbo].[wastesXoperations] CHECK CONSTRAINT [wastes_wastesXoperations]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'duration per measurement' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'operations', @level2type=N'COLUMN',@level2name=N'duration'
GO
USE [master]
GO
ALTER DATABASE [Esencial Verde] SET  READ_WRITE 
GO
