USE [Esencial Verde]
GO
/****** Object:  Table [dbo].[alt_collectors]    Script Date: 4/12/2023 12:57:20 PM ******/
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
/****** Object:  Table [dbo].[cities]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cities](
	[city_id] [int] NOT NULL,
	[state/province_id] [int] NULL,
	[name] [nvarchar](10) NULL,
 CONSTRAINT [PK_cities] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[collection_cycles]    Script Date: 4/12/2023 12:57:20 PM ******/
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
/****** Object:  Table [dbo].[collections]    Script Date: 4/12/2023 12:57:20 PM ******/
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
/****** Object:  Table [dbo].[collectors_schedules]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[collectors_schedules](
	[collector_schedule_id] [int] NOT NULL,
	[alt_collector_id] [int] NULL,
	[ev_collector_id] [int] NULL,
	[initial_date] [datetime] NULL,
	[final_date] [datetime] NULL,
 CONSTRAINT [PK_collectors_schedules] PRIMARY KEY CLUSTERED 
(
	[collector_schedule_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[container_states]    Script Date: 4/12/2023 12:57:20 PM ******/
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
/****** Object:  Table [dbo].[containers]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[containers](
	[container_id] [int] NOT NULL,
	[waste_id] [int] NOT NULL,
	[capacity] [int] NOT NULL,
	[container_state_id] [int] NOT NULL,
	[measurement] [nchar](10) NOT NULL,
	[available] [bit] NOT NULL,
 CONSTRAINT [PK_containers] PRIMARY KEY CLUSTERED 
(
	[container_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[containers_logs]    Script Date: 4/12/2023 12:57:20 PM ******/
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
/****** Object:  Table [dbo].[contracts]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contracts](
	[contract_id] [int] NOT NULL,
	[alt_collector_id] [int] NULL,
	[producer_id] [int] NULL,
 CONSTRAINT [PK_contracts] PRIMARY KEY CLUSTERED 
(
	[contract_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[countries]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[countries](
	[country_id] [int] NOT NULL,
	[name] [nvarchar](10) NULL,
 CONSTRAINT [PK_countries] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[currencies]    Script Date: 4/12/2023 12:57:20 PM ******/
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
/****** Object:  Table [dbo].[ev_collectors]    Script Date: 4/12/2023 12:57:20 PM ******/
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
/****** Object:  Table [dbo].[exchange_logs]    Script Date: 4/12/2023 12:57:20 PM ******/
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
/****** Object:  Table [dbo].[exchange_rates]    Script Date: 4/12/2023 12:57:20 PM ******/
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
/****** Object:  Table [dbo].[languages]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[languages](
	[language_id] [int] NOT NULL,
	[name] [nvarchar](60) NULL,
 CONSTRAINT [PK_languages] PRIMARY KEY CLUSTERED 
(
	[language_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[languagesXcountries]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[languagesXcountries](
	[language_id] [int] NULL,
	[country_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materials]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materials](
	[material_id] [int] NOT NULL,
	[name] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_materials] PRIMARY KEY CLUSTERED 
(
	[material_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materialsXOperations]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materialsXOperations](
	[material_per_operatioin_id] [int] NOT NULL,
	[material_id] [int] NULL,
 CONSTRAINT [PK_materialsXOperations] PRIMARY KEY CLUSTERED 
(
	[material_per_operatioin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materialsXproducts]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materialsXproducts](
	[material_id] [int] NULL,
	[product_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[operation_types]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operation_types](
	[operation_type_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](120) NOT NULL,
 CONSTRAINT [PK_operation_types] PRIMARY KEY CLUSTERED 
(
	[operation_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[operations]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operations](
	[operation_id] [int] NOT NULL,
	[cost] [decimal](18, 2) NOT NULL,
	[duration] [int] NOT NULL,
	[measurement] [nchar](10) NOT NULL,
	[operation_type_id] [int] NOT NULL,
	[operation_date] [datetime] NOT NULL,
	[material_per_operation_id] [int] NOT NULL,
 CONSTRAINT [PK_operations] PRIMARY KEY CLUSTERED 
(
	[operation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[priceXproducts]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[priceXproducts](
	[priceXproduct_id] [nvarchar](50) NOT NULL,
	[product_id] [int] NOT NULL,
	[price] [int] NOT NULL,
	[currency_id] [int] NULL,
 CONSTRAINT [PK_priceXproducts] PRIMARY KEY CLUSTERED 
(
	[priceXproduct_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producers]    Script Date: 4/12/2023 12:57:20 PM ******/
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
/****** Object:  Table [dbo].[products]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] NOT NULL,
	[name] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[receipts]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[receipts](
	[receipt_id] [int] NOT NULL,
	[collection_id] [int] NULL,
	[amount] [nchar](10) NOT NULL,
	[currency_id] [int] NOT NULL,
 CONSTRAINT [PK_receipts] PRIMARY KEY CLUSTERED 
(
	[receipt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales](
	[sale_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[receipt_id] [int] NOT NULL,
 CONSTRAINT [PK_sales] PRIMARY KEY CLUSTERED 
(
	[sale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[site_schedules]    Script Date: 4/12/2023 12:57:20 PM ******/
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
/****** Object:  Table [dbo].[sites]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sites](
	[site_id] [int] NOT NULL,
	[location] [nvarchar](50) NULL,
 CONSTRAINT [PK_sites] PRIMARY KEY CLUSTERED 
(
	[site_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[specific_locations]    Script Date: 4/12/2023 12:57:20 PM ******/
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
/****** Object:  Table [dbo].[states/provinces]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[states/provinces](
	[sate/province_id] [int] NOT NULL,
	[country_id] [int] NULL,
	[name] [nvarchar](10) NULL,
 CONSTRAINT [PK_states/provinces] PRIMARY KEY CLUSTERED 
(
	[sate/province_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[termsPerContracts]    Script Date: 4/12/2023 12:57:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[termsPerContracts](
	[terms_per_contracts_id] [nchar](10) NOT NULL,
	[currency_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [PK_termsPerContracts] PRIMARY KEY CLUSTERED 
(
	[terms_per_contracts_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wastes]    Script Date: 4/12/2023 12:57:20 PM ******/
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
/****** Object:  Table [dbo].[wastesXoperations]    Script Date: 4/12/2023 12:57:20 PM ******/
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
ALTER TABLE [dbo].[contracts]  WITH CHECK ADD  CONSTRAINT [FK_contracts_alt_collectors] FOREIGN KEY([alt_collector_id])
REFERENCES [dbo].[alt_collectors] ([alt_collector_id])
GO
ALTER TABLE [dbo].[contracts] CHECK CONSTRAINT [FK_contracts_alt_collectors]
GO
ALTER TABLE [dbo].[contracts]  WITH CHECK ADD  CONSTRAINT [FK_contracts_producers] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producers] ([produder_id])
GO
ALTER TABLE [dbo].[contracts] CHECK CONSTRAINT [FK_contracts_producers]
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
ALTER TABLE [dbo].[materialsXOperations]  WITH CHECK ADD  CONSTRAINT [FK_materialsXOperations_materials] FOREIGN KEY([material_id])
REFERENCES [dbo].[materials] ([material_id])
GO
ALTER TABLE [dbo].[materialsXOperations] CHECK CONSTRAINT [FK_materialsXOperations_materials]
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
ALTER TABLE [dbo].[operations]  WITH CHECK ADD  CONSTRAINT [FK_operations_materialsXOperations] FOREIGN KEY([material_per_operation_id])
REFERENCES [dbo].[materialsXOperations] ([material_per_operatioin_id])
GO
ALTER TABLE [dbo].[operations] CHECK CONSTRAINT [FK_operations_materialsXOperations]
GO
ALTER TABLE [dbo].[operations]  WITH CHECK ADD  CONSTRAINT [FK_operations_operation_types] FOREIGN KEY([operation_type_id])
REFERENCES [dbo].[operation_types] ([operation_type_id])
GO
ALTER TABLE [dbo].[operations] CHECK CONSTRAINT [FK_operations_operation_types]
GO
ALTER TABLE [dbo].[priceXproducts]  WITH CHECK ADD  CONSTRAINT [FK_priceXproducts_currencies] FOREIGN KEY([currency_id])
REFERENCES [dbo].[currencies] ([currency_id])
GO
ALTER TABLE [dbo].[priceXproducts] CHECK CONSTRAINT [FK_priceXproducts_currencies]
GO
ALTER TABLE [dbo].[priceXproducts]  WITH CHECK ADD  CONSTRAINT [FK_priceXproducts_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[priceXproducts] CHECK CONSTRAINT [FK_priceXproducts_products]
GO
ALTER TABLE [dbo].[receipts]  WITH CHECK ADD  CONSTRAINT [collections_receipts] FOREIGN KEY([currency_id])
REFERENCES [dbo].[currencies] ([currency_id])
GO
ALTER TABLE [dbo].[receipts] CHECK CONSTRAINT [collections_receipts]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_products]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_receipts] FOREIGN KEY([receipt_id])
REFERENCES [dbo].[receipts] ([receipt_id])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_receipts]
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
ALTER TABLE [dbo].[termsPerContracts]  WITH CHECK ADD  CONSTRAINT [FK_termsPerContracts_currencies] FOREIGN KEY([currency_id])
REFERENCES [dbo].[currencies] ([currency_id])
GO
ALTER TABLE [dbo].[termsPerContracts] CHECK CONSTRAINT [FK_termsPerContracts_currencies]
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
