USE [Esencial Verde 1]
GO
/****** Object:  Table [dbo].[alt_collectors]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alt_collectors](
	[alt_collector_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[specific_location_id] [int] NOT NULL,
 CONSTRAINT [PK_alt_collectors] PRIMARY KEY CLUSTERED 
(
	[alt_collector_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[certifications]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[certifications](
	[certification_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[waste_id] [int] NOT NULL,
	[country_id] [int] NOT NULL,
	[entity_id] [int] NOT NULL,
 CONSTRAINT [PK_certifications] PRIMARY KEY CLUSTERED 
(
	[certification_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[certificationsXproducerXalt_collectors]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[certificationsXproducerXalt_collectors](
	[certification_id] [int] NOT NULL,
	[producer_id] [int] NULL,
	[alt_collector_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[channels]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[channels](
	[channel_id] [int] IDENTITY(1,1) NOT NULL,
	[channel_name] [varchar](30) NOT NULL,
	[promotion_cost] [decimal](18, 4) NOT NULL,
	[specific_location_id] [int] NULL,
 CONSTRAINT [PK_channels] PRIMARY KEY CLUSTERED 
(
	[channel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cities]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cities](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[state/province_id] [int] NOT NULL,
 CONSTRAINT [PK_cities] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[collection_cycles]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[collection_cycles](
	[collection_cycle_id] [int] IDENTITY(1,1) NOT NULL,
	[monthly] [bit] NOT NULL,
	[weekly] [bit] NOT NULL,
	[daily] [bit] NOT NULL,
	[other_schedule] [bit] NOT NULL,
	[day] [varchar](15) NULL,
	[time] [time](7) NULL,
	[description] [varchar](150) NULL,
	[collection_route_id] [int] NULL,
	[start_date] [datetime] NOT NULL,
	[final_date] [datetime] NOT NULL,
 CONSTRAINT [PK_collection_cycles] PRIMARY KEY CLUSTERED 
(
	[collection_cycle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[collection_points]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[collection_points](
	[collection_point_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[collection_route_id] [int] NOT NULL,
	[producer_id] [int] NULL,
	[ev_site_id] [int] NULL,
	[description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_collection_points] PRIMARY KEY CLUSTERED 
(
	[collection_point_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[collection_routes]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[collection_routes](
	[collections_route_id] [int] IDENTITY(1,1) NOT NULL,
	[total_distance] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_collection_routes] PRIMARY KEY CLUSTERED 
(
	[collections_route_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact_types]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact_types](
	[contact_type_id] [int] IDENTITY(1,1) NOT NULL,
	[control_word_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK_contact_types] PRIMARY KEY CLUSTERED 
(
	[contact_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[contact_type_id] [int] NOT NULL,
	[value] [varchar](150) NOT NULL,
	[enabled] [bit] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[computer] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[container_maintenances]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[container_maintenances](
	[container_maintenance_id] [int] IDENTITY(1,1) NOT NULL,
	[container_type_id] [int] NOT NULL,
	[description] [varchar](150) NOT NULL,
	[machinery_id] [int] NULL,
	[cost] [decimal](18, 4) NOT NULL,
	[duration] [time](7) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[computer] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_container_maintenances] PRIMARY KEY CLUSTERED 
(
	[container_maintenance_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[container_types]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[container_types](
	[container_type_id] [int] IDENTITY(1,1) NOT NULL,
	[capacity] [decimal](18, 2) NOT NULL,
	[material] [varchar](10) NOT NULL,
	[brand] [varchar](20) NOT NULL,
	[model] [varchar](20) NOT NULL,
 CONSTRAINT [PK_container_types] PRIMARY KEY CLUSTERED 
(
	[container_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[containers_inventories]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[containers_inventories](
	[container_inventory_id] [int] IDENTITY(1,1) NOT NULL,
	[container_type_id] [int] NOT NULL,
	[ev_site_id] [int] NULL,
	[alt_collector_id] [int] NULL,
	[producer_id] [int] NULL,
	[ev_collector_id] [int] NULL,
	[in_use] [int] NOT NULL,
	[on_maintenance] [int] NOT NULL,
	[available] [int] NOT NULL,
	[discarded] [int] NOT NULL,
	[computer] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK_containers_inventories] PRIMARY KEY CLUSTERED 
(
	[container_inventory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[containers_inventories_checks]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[containers_inventories_checks](
	[container_inventory_check_id] [int] IDENTITY(1,1) NOT NULL,
	[inventory_check_type_id] [int] NOT NULL,
	[inventory_check_status_id] [int] NOT NULL,
	[container_inventory_id] [int] NOT NULL,
	[total_quantity] [int] NOT NULL,
	[good_state_quantity] [int] NOT NULL,
	[regular_state_quantity] [int] NOT NULL,
	[bad_state_quantity] [int] NOT NULL,
	[lost_quantity] [int] NOT NULL,
	[comment] [varchar](150) NOT NULL,
	[user_1] [int] NOT NULL,
	[user_2] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[computer] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_containers_inventories_checks] PRIMARY KEY CLUSTERED 
(
	[container_inventory_check_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contract_terms]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contract_terms](
	[contract_term_id] [int] IDENTITY(1,1) NOT NULL,
	[contract_id] [int] NOT NULL,
	[producer_id] [int] NOT NULL,
	[collection_cycle_id] [int] NULL,
	[waste_operation_id] [int] NOT NULL,
	[waste_quantity] [decimal](18, 4) NOT NULL,
	[alt_collector_id] [int] NULL,
	[ev_collector_id] [int] NULL,
	[transport_type_id] [int] NULL,
	[ev_site_id] [int] NOT NULL,
	[container_inventory_id] [int] NOT NULL,
	[collection_cost] [decimal](18, 4) NOT NULL,
	[subtotal_score] [int] NOT NULL,
	[score_debt] [int] NOT NULL,
	[subtotal_cost] [decimal](18, 4) NOT NULL,
	[producer_profit_percentage] [decimal](18, 4) NOT NULL,
	[alt_collector_due_amount] [decimal](18, 4) NULL,
	[specific_location_id] [int] NULL,
	[username] [varchar](50) NOT NULL,
	[computer] [varchar](50) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
	[waste_type_id] [int] NOT NULL,
 CONSTRAINT [PK_contract_terms] PRIMARY KEY CLUSTERED 
(
	[contract_term_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contracts]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contracts](
	[contract_id] [int] NOT NULL,
	[total_cost] [decimal](18, 4) NOT NULL,
	[contract_score] [int] NOT NULL,
	[total_score_debt] [int] NOT NULL,
	[initial_date] [datetime] NOT NULL,
	[final_date] [datetime] NOT NULL,
 CONSTRAINT [PK_contracts_1] PRIMARY KEY CLUSTERED 
(
	[contract_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[control_words]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[control_words](
	[control_word_id] [int] IDENTITY(1,1) NOT NULL,
	[word] [varchar](50) NOT NULL,
 CONSTRAINT [PK_control_words] PRIMARY KEY CLUSTERED 
(
	[control_word_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[corporations]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[corporations](
	[corporation_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
 CONSTRAINT [PK_corporations] PRIMARY KEY CLUSTERED 
(
	[corporation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[countries]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[countries](
	[country_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[initials] [char](3) NOT NULL,
	[region_id] [int] NOT NULL,
 CONSTRAINT [PK_countries] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[currencies]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[currencies](
	[currency_id] [int] IDENTITY(1,1) NOT NULL,
	[control_word_id] [int] NOT NULL,
	[abreviation] [char](3) NOT NULL,
	[symbol] [char](1) NOT NULL,
	[exchage_rate] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_currencies] PRIMARY KEY CLUSTERED 
(
	[currency_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[districts]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[districts](
	[district_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[city_id] [int] NOT NULL,
 CONSTRAINT [PK_districts] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[entities]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entities](
	[entity_id] [int] IDENTITY(1,1) NOT NULL,
	[entity_type_id] [int] NOT NULL,
	[district_id] [int] NOT NULL,
	[name] [varchar](30) NOT NULL,
 CONSTRAINT [PK_entities] PRIMARY KEY CLUSTERED 
(
	[entity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[entity_types]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entity_types](
	[entity_type_id] [int] IDENTITY(1,1) NOT NULL,
	[control_word_id] [int] NOT NULL,
 CONSTRAINT [PK_entity_types] PRIMARY KEY CLUSTERED 
(
	[entity_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ev_collectors]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ev_collectors](
	[ev_collector_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[ev_site_id] [int] NOT NULL,
 CONSTRAINT [PK_ev_collectors] PRIMARY KEY CLUSTERED 
(
	[ev_collector_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ev_sites]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ev_sites](
	[ev_site_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[specific_location_id] [int] NOT NULL,
 CONSTRAINT [PK_ev_sites] PRIMARY KEY CLUSTERED 
(
	[ev_site_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event_logs]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event_logs](
	[event_log_id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [varchar](20) NOT NULL,
	[reference_id1] [bigint] NOT NULL,
	[reference_id2] [bigint] NOT NULL,
	[value1] [varchar](60) NOT NULL,
	[value2] [varchar](60) NOT NULL,
	[event_type_id] [int] NOT NULL,
	[object_type_id] [int] NOT NULL,
	[level_id] [int] NOT NULL,
	[source_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[computer] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_event_logs] PRIMARY KEY CLUSTERED 
(
	[event_log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event_types]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event_types](
	[event_type_id] [int] IDENTITY(1,1) NOT NULL,
	[event_type_name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_event_types] PRIMARY KEY CLUSTERED 
(
	[event_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inventory_check_statuses]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventory_check_statuses](
	[inventory_check_statuses_id] [int] IDENTITY(1,1) NOT NULL,
	[control_word_id] [int] NOT NULL,
 CONSTRAINT [PK_inventory_check_statuses] PRIMARY KEY CLUSTERED 
(
	[inventory_check_statuses_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inventory_check_types]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventory_check_types](
	[inventory_check_type_id] [int] IDENTITY(1,1) NOT NULL,
	[control_word_id] [int] NOT NULL,
 CONSTRAINT [PK_inventory_check_types] PRIMARY KEY CLUSTERED 
(
	[inventory_check_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invoice_details]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invoice_details](
	[invoice_details_id] [int] IDENTITY(1,1) NOT NULL,
	[invoice_id] [int] NOT NULL,
	[sale_id] [int] NOT NULL,
	[subtotal_cost] [decimal](18, 4) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[computer] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_invoice_details] PRIMARY KEY CLUSTERED 
(
	[invoice_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invoices]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invoices](
	[invoice_id] [int] IDENTITY(1,1) NOT NULL,
	[release_date] [datetime] NOT NULL,
	[expiration_date] [datetime] NULL,
	[currency_id] [int] NOT NULL,
	[amount] [decimal](18, 4) NOT NULL,
	[transaction_type] [tinyint] NOT NULL,
	[contract_id] [int] NULL,
	[producer_id] [int] NULL,
	[alt_collector_id] [int] NULL,
	[buyer] [varchar](30) NULL,
	[total_cost] [decimal](18, 4) NULL,
	[total_paid] [decimal](18, 4) NULL,
	[payment_method] [varchar](10) NOT NULL,
	[invoice_status] [varchar](10) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[computer] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_transactions] PRIMARY KEY CLUSTERED 
(
	[invoice_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[languages]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[languages](
	[language_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](40) NOT NULL,
	[culture] [varchar](40) NOT NULL,
 CONSTRAINT [PK_languages] PRIMARY KEY CLUSTERED 
(
	[language_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[languagesXcountries]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[languagesXcountries](
	[language_id] [int] NOT NULL,
	[country_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[levels]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[levels](
	[level_id] [int] IDENTITY(1,1) NOT NULL,
	[level_name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_levels] PRIMARY KEY CLUSTERED 
(
	[level_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[machineries]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[machineries](
	[machinery_id] [int] IDENTITY(1,1) NOT NULL,
	[capacity] [decimal](18, 4) NOT NULL,
	[duration] [time](7) NOT NULL,
	[description] [varchar](150) NOT NULL,
 CONSTRAINT [PK_machineries] PRIMARY KEY CLUSTERED 
(
	[machinery_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[machineriesXev_sites]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[machineriesXev_sites](
	[machinery_id] [int] NOT NULL,
	[ev_site_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materials]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materials](
	[material_id] [int] IDENTITY(1,1) NOT NULL,
	[control_word_id] [int] NOT NULL,
	[waste_operation_id] [int] NULL,
	[sale_cost] [decimal](18, 4) NOT NULL,
	[purchase_cost] [decimal](18, 4) NULL,
 CONSTRAINT [PK_materials] PRIMARY KEY CLUSTERED 
(
	[material_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materials_inventories]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materials_inventories](
	[material_inventory_id] [int] IDENTITY(1,1) NOT NULL,
	[material_id] [int] NOT NULL,
	[available_quantity] [decimal](18, 4) NOT NULL,
	[sold_quantity] [decimal](18, 4) NOT NULL,
	[contract_id] [int] NOT NULL,
	[ev_site_id] [int] NOT NULL,
 CONSTRAINT [PK_materials_inventories] PRIMARY KEY CLUSTERED 
(
	[material_inventory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materials_inventories_checks]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materials_inventories_checks](
	[material_inventory_check_id] [int] IDENTITY(1,1) NOT NULL,
	[inventory_check_type_id] [int] NOT NULL,
	[inventory_check_status_id] [int] NOT NULL,
	[material_inventory_id] [int] NOT NULL,
	[total_quantity] [decimal](18, 4) NOT NULL,
	[real_quantity] [decimal](18, 4) NOT NULL,
	[comment] [varchar](150) NOT NULL,
	[user_1] [int] NOT NULL,
	[user_2] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[computer] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_materials_inventories_checks] PRIMARY KEY CLUSTERED 
(
	[material_inventory_check_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materialsXproducts]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materialsXproducts](
	[product_id] [int] NOT NULL,
	[material_id] [int] NOT NULL,
	[quantity] [decimal](18, 4) NOT NULL,
	[postime] [datetime] NOT NULL,
	[meassure] [int] NOT NULL,
	[contract_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movement_types]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movement_types](
	[movement_type] [int] NOT NULL,
 CONSTRAINT [PK_movement_types] PRIMARY KEY CLUSTERED 
(
	[movement_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[object_types]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[object_types](
	[object_type_id] [int] IDENTITY(1,1) NOT NULL,
	[object_type_name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_object_types] PRIMARY KEY CLUSTERED 
(
	[object_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producers]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producers](
	[producer_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[ev_score] [int] NOT NULL,
	[corporation_id] [int] NOT NULL,
	[specific_location_id] [int] NOT NULL,
	[computer] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [PK_producers] PRIMARY KEY CLUSTERED 
(
	[producer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[control_word_id] [int] NOT NULL,
	[sale_cost] [decimal](18, 4) NOT NULL,
	[production_cost] [decimal](18, 4) NOT NULL,
	[assembly_cost] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products_inventories]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_inventories](
	[product_inventory_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[available_quantity] [int] NOT NULL,
	[sold_quantity] [int] NOT NULL,
	[contract_id] [int] NOT NULL,
	[ev_site_id] [int] NOT NULL,
	[postime] [datetime] NOT NULL,
	[username] [varchar](50) NULL,
	[computer] [varchar](50) NULL,
	[checksum] [varbinary](150) NULL,
 CONSTRAINT [PK_products_inventories] PRIMARY KEY CLUSTERED 
(
	[product_inventory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products_inventories_checks]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_inventories_checks](
	[product_inventory_check_id] [int] IDENTITY(1,1) NOT NULL,
	[inventory_check_type_id] [int] NOT NULL,
	[inventory_check_status_id] [int] NOT NULL,
	[product_inventory_id] [int] NOT NULL,
	[total_quantity] [int] NOT NULL,
	[real_quantity] [int] NOT NULL,
	[comment] [varchar](150) NOT NULL,
	[user_1] [int] NOT NULL,
	[user_2] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[computer] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_products_inventories_checks] PRIMARY KEY CLUSTERED 
(
	[product_inventory_check_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[region_areas]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[region_areas](
	[region_area_id] [int] NOT NULL,
	[city_id] [int] NULL,
	[state/province_id] [int] NULL,
	[country_id] [int] NOT NULL,
	[district_id] [int] NULL,
	[region_id] [int] NOT NULL,
 CONSTRAINT [PK_region_areas] PRIMARY KEY CLUSTERED 
(
	[region_area_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[regions]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[regions](
	[region_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_regions] PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales](
	[sale_id] [int] IDENTITY(1,1) NOT NULL,
	[channel_id] [int] NOT NULL,
	[buyer] [varchar](50) NOT NULL,
	[product_inventory_id] [int] NOT NULL,
	[material_inventory_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_sales] PRIMARY KEY CLUSTERED 
(
	[sale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sources]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sources](
	[source_id] [int] IDENTITY(1,1) NOT NULL,
	[source_name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_sources] PRIMARY KEY CLUSTERED 
(
	[source_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[specific_location]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[specific_location](
	[specific_location_id] [int] IDENTITY(1,1) NOT NULL,
	[location] [geography] NOT NULL,
	[street_id] [int] NOT NULL,
 CONSTRAINT [PK_specific_location] PRIMARY KEY CLUSTERED 
(
	[specific_location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[state/provinces]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[state/provinces](
	[state/province_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[initial] [char](3) NOT NULL,
	[area_code] [varchar](50) NOT NULL,
	[country_id] [int] NOT NULL,
 CONSTRAINT [PK_state/provinces] PRIMARY KEY CLUSTERED 
(
	[state/province_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[streets]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[streets](
	[street_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[zip_code] [varchar](9) NOT NULL,
	[district_id] [int] NOT NULL,
 CONSTRAINT [PK_streets] PRIMARY KEY CLUSTERED 
(
	[street_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taxes]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taxes](
	[tax_id] [int] IDENTITY(1,1) NOT NULL,
	[control_word_id] [int] NOT NULL,
	[district_id] [int] NOT NULL,
	[percentage] [decimal](10, 4) NOT NULL,
	[entity_id] [int] NOT NULL,
 CONSTRAINT [PK_taxes] PRIMARY KEY CLUSTERED 
(
	[tax_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taxesXcontracts]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taxesXcontracts](
	[tax_id] [int] NOT NULL,
	[contract_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[translations]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[translations](
	[control_word_id] [int] NOT NULL,
	[language_id] [int] NOT NULL,
	[translation] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transport_types]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transport_types](
	[transport_type_id] [int] IDENTITY(1,1) NOT NULL,
	[control_word_id] [int] NOT NULL,
	[description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_transport_types] PRIMARY KEY CLUSTERED 
(
	[transport_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transportXcollectors]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transportXcollectors](
	[alt_collector_id] [int] NULL,
	[ev_collector_id] [int] NULL,
	[transport_type_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[position] [varchar](20) NOT NULL,
	[producer_id] [int] NULL,
	[alt_collector_id] [int] NULL,
	[ev_site_id] [int] NULL,
	[ev_collector_id] [int] NULL,
	[entity_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[computer] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
	[surname_1] [varchar](70) NOT NULL,
	[surname_2] [varchar](70) NOT NULL,
	[password] [varchar](70) NOT NULL,
	[enabled] [bit] NOT NULL,
	[email] [varchar](70) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[waste_inventories_checks]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[waste_inventories_checks](
	[waste_inventory_check_id] [int] IDENTITY(1,1) NOT NULL,
	[inventory_check_type_id] [int] NOT NULL,
	[inventory_check_status_id] [int] NOT NULL,
	[waste_inventory_id] [int] NOT NULL,
	[total_quantity] [decimal](18, 4) NOT NULL,
	[real_quantity] [decimal](18, 4) NOT NULL,
	[comment] [varchar](150) NOT NULL,
	[user_1] [int] NOT NULL,
	[user_2] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[computer] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_waste_inventories_checks] PRIMARY KEY CLUSTERED 
(
	[waste_inventory_check_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[waste_movements]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[waste_movements](
	[waste_movement_id] [int] NOT NULL,
	[postime] [datetime] NOT NULL,
	[responsiblename] [varchar](80) NOT NULL,
	[signImage] [varbinary](50) NOT NULL,
	[street_id] [int] NOT NULL,
	[producer_id] [int] NULL,
	[alt_collector_id] [int] NULL,
	[ev_collector_id] [int] NULL,
	[movementType] [int] NOT NULL,
	[movement_type_id] [int] NOT NULL,
	[waste_id] [int] NOT NULL,
	[username] [varchar](70) NOT NULL,
	[computer] [varchar](70) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
 CONSTRAINT [PK_waste_movements] PRIMARY KEY CLUSTERED 
(
	[waste_movement_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[waste_operations]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[waste_operations](
	[waste_operation_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[waste_id] [int] NOT NULL,
	[waste_capacity] [decimal](18, 4) NOT NULL,
	[material_id] [int] NULL,
	[material_yield] [decimal](18, 4) NULL,
	[machinery_id] [int] NOT NULL,
	[base_cost] [decimal](18, 4) NOT NULL,
	[duration] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_waste_operations] PRIMARY KEY CLUSTERED 
(
	[waste_operation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[waste_operationsXcountries]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[waste_operationsXcountries](
	[waste_operation_id] [int] NOT NULL,
	[country_id] [int] NOT NULL,
	[aggregated_cost] [decimal](18, 4) NULL,
	[alternate_cost] [decimal](18, 4) NULL,
	[regulation_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[waste_types]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[waste_types](
	[waste_types_id] [int] NOT NULL,
	[control_word_id] [int] NOT NULL,
 CONSTRAINT [PK_waste_types] PRIMARY KEY CLUSTERED 
(
	[waste_types_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wastes]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wastes](
	[waste_id] [int] IDENTITY(1,1) NOT NULL,
	[control_word_id] [int] NOT NULL,
	[waste_types_id] [int] NOT NULL,
 CONSTRAINT [PK_wastes] PRIMARY KEY CLUSTERED 
(
	[waste_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wastes_inventories]    Script Date: 4/19/2023 8:58:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wastes_inventories](
	[waste_inventory_id] [int] IDENTITY(1,1) NOT NULL,
	[waste_id] [int] NOT NULL,
	[quantity] [decimal](18, 4) NOT NULL,
	[ev_site_id] [int] NULL,
	[contract_id] [int] NULL,
 CONSTRAINT [PK_wastes_inventories] PRIMARY KEY CLUSTERED 
(
	[waste_inventory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[alt_collectors]  WITH CHECK ADD  CONSTRAINT [FK_alt_collectors_specific_location] FOREIGN KEY([specific_location_id])
REFERENCES [dbo].[specific_location] ([specific_location_id])
GO
ALTER TABLE [dbo].[alt_collectors] CHECK CONSTRAINT [FK_alt_collectors_specific_location]
GO
ALTER TABLE [dbo].[certificationsXproducerXalt_collectors]  WITH CHECK ADD  CONSTRAINT [FK_certificationsXproducerXalt_collectors_alt_collectors] FOREIGN KEY([alt_collector_id])
REFERENCES [dbo].[alt_collectors] ([alt_collector_id])
GO
ALTER TABLE [dbo].[certificationsXproducerXalt_collectors] CHECK CONSTRAINT [FK_certificationsXproducerXalt_collectors_alt_collectors]
GO
ALTER TABLE [dbo].[certificationsXproducerXalt_collectors]  WITH CHECK ADD  CONSTRAINT [FK_certificationsXproducerXalt_collectors_certifications] FOREIGN KEY([certification_id])
REFERENCES [dbo].[certifications] ([certification_id])
GO
ALTER TABLE [dbo].[certificationsXproducerXalt_collectors] CHECK CONSTRAINT [FK_certificationsXproducerXalt_collectors_certifications]
GO
ALTER TABLE [dbo].[certificationsXproducerXalt_collectors]  WITH CHECK ADD  CONSTRAINT [FK_certificationsXproducerXalt_collectors_producers] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producers] ([producer_id])
GO
ALTER TABLE [dbo].[certificationsXproducerXalt_collectors] CHECK CONSTRAINT [FK_certificationsXproducerXalt_collectors_producers]
GO
ALTER TABLE [dbo].[channels]  WITH CHECK ADD  CONSTRAINT [FK_channels_specific_location] FOREIGN KEY([specific_location_id])
REFERENCES [dbo].[specific_location] ([specific_location_id])
GO
ALTER TABLE [dbo].[channels] CHECK CONSTRAINT [FK_channels_specific_location]
GO
ALTER TABLE [dbo].[cities]  WITH CHECK ADD  CONSTRAINT [FK_cities_state/provinces] FOREIGN KEY([state/province_id])
REFERENCES [dbo].[state/provinces] ([state/province_id])
GO
ALTER TABLE [dbo].[cities] CHECK CONSTRAINT [FK_cities_state/provinces]
GO
ALTER TABLE [dbo].[collection_cycles]  WITH CHECK ADD  CONSTRAINT [FK_collection_cycles_collection_routes] FOREIGN KEY([collection_route_id])
REFERENCES [dbo].[collection_routes] ([collections_route_id])
GO
ALTER TABLE [dbo].[collection_cycles] CHECK CONSTRAINT [FK_collection_cycles_collection_routes]
GO
ALTER TABLE [dbo].[collection_points]  WITH CHECK ADD  CONSTRAINT [FK_collection_points_collection_routes] FOREIGN KEY([collection_route_id])
REFERENCES [dbo].[collection_routes] ([collections_route_id])
GO
ALTER TABLE [dbo].[collection_points] CHECK CONSTRAINT [FK_collection_points_collection_routes]
GO
ALTER TABLE [dbo].[collection_points]  WITH CHECK ADD  CONSTRAINT [FK_collection_points_ev_sites] FOREIGN KEY([ev_site_id])
REFERENCES [dbo].[ev_sites] ([ev_site_id])
GO
ALTER TABLE [dbo].[collection_points] CHECK CONSTRAINT [FK_collection_points_ev_sites]
GO
ALTER TABLE [dbo].[collection_points]  WITH CHECK ADD  CONSTRAINT [FK_collection_points_producers] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producers] ([producer_id])
GO
ALTER TABLE [dbo].[collection_points] CHECK CONSTRAINT [FK_collection_points_producers]
GO
ALTER TABLE [dbo].[contact_types]  WITH CHECK ADD  CONSTRAINT [FK_contact_types_control_words] FOREIGN KEY([control_word_id])
REFERENCES [dbo].[control_words] ([control_word_id])
GO
ALTER TABLE [dbo].[contact_types] CHECK CONSTRAINT [FK_contact_types_control_words]
GO
ALTER TABLE [dbo].[contacts]  WITH CHECK ADD  CONSTRAINT [FK_contacts_contact_types] FOREIGN KEY([contact_type_id])
REFERENCES [dbo].[contact_types] ([contact_type_id])
GO
ALTER TABLE [dbo].[contacts] CHECK CONSTRAINT [FK_contacts_contact_types]
GO
ALTER TABLE [dbo].[contacts]  WITH CHECK ADD  CONSTRAINT [FK_contacts_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[contacts] CHECK CONSTRAINT [FK_contacts_users]
GO
ALTER TABLE [dbo].[container_maintenances]  WITH CHECK ADD  CONSTRAINT [FK_container_maintenances_container_types] FOREIGN KEY([container_type_id])
REFERENCES [dbo].[container_types] ([container_type_id])
GO
ALTER TABLE [dbo].[container_maintenances] CHECK CONSTRAINT [FK_container_maintenances_container_types]
GO
ALTER TABLE [dbo].[container_maintenances]  WITH CHECK ADD  CONSTRAINT [FK_container_maintenances_machineries] FOREIGN KEY([machinery_id])
REFERENCES [dbo].[machineries] ([machinery_id])
GO
ALTER TABLE [dbo].[container_maintenances] CHECK CONSTRAINT [FK_container_maintenances_machineries]
GO
ALTER TABLE [dbo].[containers_inventories]  WITH CHECK ADD  CONSTRAINT [FK_containers_inventories_alt_collectors] FOREIGN KEY([alt_collector_id])
REFERENCES [dbo].[alt_collectors] ([alt_collector_id])
GO
ALTER TABLE [dbo].[containers_inventories] CHECK CONSTRAINT [FK_containers_inventories_alt_collectors]
GO
ALTER TABLE [dbo].[containers_inventories]  WITH CHECK ADD  CONSTRAINT [FK_containers_inventories_container_types] FOREIGN KEY([container_type_id])
REFERENCES [dbo].[container_types] ([container_type_id])
GO
ALTER TABLE [dbo].[containers_inventories] CHECK CONSTRAINT [FK_containers_inventories_container_types]
GO
ALTER TABLE [dbo].[containers_inventories]  WITH CHECK ADD  CONSTRAINT [FK_containers_inventories_ev_collectors] FOREIGN KEY([ev_collector_id])
REFERENCES [dbo].[ev_collectors] ([ev_collector_id])
GO
ALTER TABLE [dbo].[containers_inventories] CHECK CONSTRAINT [FK_containers_inventories_ev_collectors]
GO
ALTER TABLE [dbo].[containers_inventories]  WITH CHECK ADD  CONSTRAINT [FK_containers_inventories_ev_sites] FOREIGN KEY([ev_site_id])
REFERENCES [dbo].[ev_sites] ([ev_site_id])
GO
ALTER TABLE [dbo].[containers_inventories] CHECK CONSTRAINT [FK_containers_inventories_ev_sites]
GO
ALTER TABLE [dbo].[containers_inventories]  WITH CHECK ADD  CONSTRAINT [FK_containers_inventories_producers] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producers] ([producer_id])
GO
ALTER TABLE [dbo].[containers_inventories] CHECK CONSTRAINT [FK_containers_inventories_producers]
GO
ALTER TABLE [dbo].[containers_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_containers_inventories_checks_containers_inventories] FOREIGN KEY([container_inventory_id])
REFERENCES [dbo].[containers_inventories] ([container_inventory_id])
GO
ALTER TABLE [dbo].[containers_inventories_checks] CHECK CONSTRAINT [FK_containers_inventories_checks_containers_inventories]
GO
ALTER TABLE [dbo].[containers_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_containers_inventories_checks_inventory_check_statuses] FOREIGN KEY([inventory_check_status_id])
REFERENCES [dbo].[inventory_check_statuses] ([inventory_check_statuses_id])
GO
ALTER TABLE [dbo].[containers_inventories_checks] CHECK CONSTRAINT [FK_containers_inventories_checks_inventory_check_statuses]
GO
ALTER TABLE [dbo].[containers_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_containers_inventories_checks_inventory_check_types] FOREIGN KEY([inventory_check_type_id])
REFERENCES [dbo].[inventory_check_types] ([inventory_check_type_id])
GO
ALTER TABLE [dbo].[containers_inventories_checks] CHECK CONSTRAINT [FK_containers_inventories_checks_inventory_check_types]
GO
ALTER TABLE [dbo].[containers_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_containers_inventories_checks_users] FOREIGN KEY([user_1])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[containers_inventories_checks] CHECK CONSTRAINT [FK_containers_inventories_checks_users]
GO
ALTER TABLE [dbo].[containers_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_containers_inventories_checks_users1] FOREIGN KEY([user_2])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[containers_inventories_checks] CHECK CONSTRAINT [FK_containers_inventories_checks_users1]
GO
ALTER TABLE [dbo].[contract_terms]  WITH CHECK ADD  CONSTRAINT [FK_contract_terms_alt_collectors] FOREIGN KEY([alt_collector_id])
REFERENCES [dbo].[alt_collectors] ([alt_collector_id])
GO
ALTER TABLE [dbo].[contract_terms] CHECK CONSTRAINT [FK_contract_terms_alt_collectors]
GO
ALTER TABLE [dbo].[contract_terms]  WITH CHECK ADD  CONSTRAINT [FK_contract_terms_collection_cycles] FOREIGN KEY([collection_cycle_id])
REFERENCES [dbo].[collection_cycles] ([collection_cycle_id])
GO
ALTER TABLE [dbo].[contract_terms] CHECK CONSTRAINT [FK_contract_terms_collection_cycles]
GO
ALTER TABLE [dbo].[contract_terms]  WITH CHECK ADD  CONSTRAINT [FK_contract_terms_containers_inventories] FOREIGN KEY([container_inventory_id])
REFERENCES [dbo].[containers_inventories] ([container_inventory_id])
GO
ALTER TABLE [dbo].[contract_terms] CHECK CONSTRAINT [FK_contract_terms_containers_inventories]
GO
ALTER TABLE [dbo].[contract_terms]  WITH CHECK ADD  CONSTRAINT [FK_contract_terms_contracts] FOREIGN KEY([contract_id])
REFERENCES [dbo].[contracts] ([contract_id])
GO
ALTER TABLE [dbo].[contract_terms] CHECK CONSTRAINT [FK_contract_terms_contracts]
GO
ALTER TABLE [dbo].[contract_terms]  WITH CHECK ADD  CONSTRAINT [FK_contract_terms_ev_collectors] FOREIGN KEY([ev_collector_id])
REFERENCES [dbo].[ev_collectors] ([ev_collector_id])
GO
ALTER TABLE [dbo].[contract_terms] CHECK CONSTRAINT [FK_contract_terms_ev_collectors]
GO
ALTER TABLE [dbo].[contract_terms]  WITH CHECK ADD  CONSTRAINT [FK_contract_terms_ev_sites] FOREIGN KEY([ev_site_id])
REFERENCES [dbo].[ev_sites] ([ev_site_id])
GO
ALTER TABLE [dbo].[contract_terms] CHECK CONSTRAINT [FK_contract_terms_ev_sites]
GO
ALTER TABLE [dbo].[contract_terms]  WITH CHECK ADD  CONSTRAINT [FK_contract_terms_producers] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producers] ([producer_id])
GO
ALTER TABLE [dbo].[contract_terms] CHECK CONSTRAINT [FK_contract_terms_producers]
GO
ALTER TABLE [dbo].[contract_terms]  WITH CHECK ADD  CONSTRAINT [FK_contract_terms_specific_location] FOREIGN KEY([specific_location_id])
REFERENCES [dbo].[specific_location] ([specific_location_id])
GO
ALTER TABLE [dbo].[contract_terms] CHECK CONSTRAINT [FK_contract_terms_specific_location]
GO
ALTER TABLE [dbo].[contract_terms]  WITH CHECK ADD  CONSTRAINT [FK_contract_terms_waste_operations] FOREIGN KEY([waste_operation_id])
REFERENCES [dbo].[waste_operations] ([waste_operation_id])
GO
ALTER TABLE [dbo].[contract_terms] CHECK CONSTRAINT [FK_contract_terms_waste_operations]
GO
ALTER TABLE [dbo].[contract_terms]  WITH CHECK ADD  CONSTRAINT [FK_contract_terms_waste_types] FOREIGN KEY([waste_type_id])
REFERENCES [dbo].[waste_types] ([waste_types_id])
GO
ALTER TABLE [dbo].[contract_terms] CHECK CONSTRAINT [FK_contract_terms_waste_types]
GO
ALTER TABLE [dbo].[currencies]  WITH CHECK ADD  CONSTRAINT [FK_currencies_control_words] FOREIGN KEY([control_word_id])
REFERENCES [dbo].[control_words] ([control_word_id])
GO
ALTER TABLE [dbo].[currencies] CHECK CONSTRAINT [FK_currencies_control_words]
GO
ALTER TABLE [dbo].[districts]  WITH CHECK ADD  CONSTRAINT [FK_districts_cities] FOREIGN KEY([city_id])
REFERENCES [dbo].[cities] ([city_id])
GO
ALTER TABLE [dbo].[districts] CHECK CONSTRAINT [FK_districts_cities]
GO
ALTER TABLE [dbo].[entities]  WITH CHECK ADD  CONSTRAINT [FK_entities_entity_types] FOREIGN KEY([entity_type_id])
REFERENCES [dbo].[entity_types] ([entity_type_id])
GO
ALTER TABLE [dbo].[entities] CHECK CONSTRAINT [FK_entities_entity_types]
GO
ALTER TABLE [dbo].[entity_types]  WITH CHECK ADD  CONSTRAINT [FK_entity_types_control_words] FOREIGN KEY([control_word_id])
REFERENCES [dbo].[control_words] ([control_word_id])
GO
ALTER TABLE [dbo].[entity_types] CHECK CONSTRAINT [FK_entity_types_control_words]
GO
ALTER TABLE [dbo].[ev_collectors]  WITH CHECK ADD  CONSTRAINT [FK_ev_collectors_ev_sites] FOREIGN KEY([ev_site_id])
REFERENCES [dbo].[ev_sites] ([ev_site_id])
GO
ALTER TABLE [dbo].[ev_collectors] CHECK CONSTRAINT [FK_ev_collectors_ev_sites]
GO
ALTER TABLE [dbo].[ev_sites]  WITH CHECK ADD  CONSTRAINT [FK_ev_sites_specific_location] FOREIGN KEY([specific_location_id])
REFERENCES [dbo].[specific_location] ([specific_location_id])
GO
ALTER TABLE [dbo].[ev_sites] CHECK CONSTRAINT [FK_ev_sites_specific_location]
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
ALTER TABLE [dbo].[inventory_check_statuses]  WITH CHECK ADD  CONSTRAINT [FK_inventory_check_statuses_control_words] FOREIGN KEY([control_word_id])
REFERENCES [dbo].[control_words] ([control_word_id])
GO
ALTER TABLE [dbo].[inventory_check_statuses] CHECK CONSTRAINT [FK_inventory_check_statuses_control_words]
GO
ALTER TABLE [dbo].[inventory_check_types]  WITH CHECK ADD  CONSTRAINT [FK_inventory_check_types_control_words] FOREIGN KEY([control_word_id])
REFERENCES [dbo].[control_words] ([control_word_id])
GO
ALTER TABLE [dbo].[inventory_check_types] CHECK CONSTRAINT [FK_inventory_check_types_control_words]
GO
ALTER TABLE [dbo].[invoice_details]  WITH CHECK ADD  CONSTRAINT [FK_invoice_details_invoices] FOREIGN KEY([invoice_id])
REFERENCES [dbo].[invoices] ([invoice_id])
GO
ALTER TABLE [dbo].[invoice_details] CHECK CONSTRAINT [FK_invoice_details_invoices]
GO
ALTER TABLE [dbo].[invoice_details]  WITH CHECK ADD  CONSTRAINT [FK_invoice_details_sales] FOREIGN KEY([sale_id])
REFERENCES [dbo].[sales] ([sale_id])
GO
ALTER TABLE [dbo].[invoice_details] CHECK CONSTRAINT [FK_invoice_details_sales]
GO
ALTER TABLE [dbo].[invoices]  WITH CHECK ADD  CONSTRAINT [FK_invoices_alt_collectors] FOREIGN KEY([alt_collector_id])
REFERENCES [dbo].[alt_collectors] ([alt_collector_id])
GO
ALTER TABLE [dbo].[invoices] CHECK CONSTRAINT [FK_invoices_alt_collectors]
GO
ALTER TABLE [dbo].[invoices]  WITH CHECK ADD  CONSTRAINT [FK_invoices_contracts] FOREIGN KEY([contract_id])
REFERENCES [dbo].[contracts] ([contract_id])
GO
ALTER TABLE [dbo].[invoices] CHECK CONSTRAINT [FK_invoices_contracts]
GO
ALTER TABLE [dbo].[invoices]  WITH CHECK ADD  CONSTRAINT [FK_invoices_currencies] FOREIGN KEY([currency_id])
REFERENCES [dbo].[currencies] ([currency_id])
GO
ALTER TABLE [dbo].[invoices] CHECK CONSTRAINT [FK_invoices_currencies]
GO
ALTER TABLE [dbo].[invoices]  WITH CHECK ADD  CONSTRAINT [FK_invoices_producers] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producers] ([producer_id])
GO
ALTER TABLE [dbo].[invoices] CHECK CONSTRAINT [FK_invoices_producers]
GO
ALTER TABLE [dbo].[languagesXcountries]  WITH CHECK ADD  CONSTRAINT [FK_languagesXcountries_countries] FOREIGN KEY([country_id])
REFERENCES [dbo].[countries] ([country_id])
GO
ALTER TABLE [dbo].[languagesXcountries] CHECK CONSTRAINT [FK_languagesXcountries_countries]
GO
ALTER TABLE [dbo].[languagesXcountries]  WITH CHECK ADD  CONSTRAINT [FK_languagesXcountries_languages] FOREIGN KEY([language_id])
REFERENCES [dbo].[languages] ([language_id])
GO
ALTER TABLE [dbo].[languagesXcountries] CHECK CONSTRAINT [FK_languagesXcountries_languages]
GO
ALTER TABLE [dbo].[machineriesXev_sites]  WITH CHECK ADD  CONSTRAINT [FK_machineriesXev_sites_ev_sites] FOREIGN KEY([ev_site_id])
REFERENCES [dbo].[ev_sites] ([ev_site_id])
GO
ALTER TABLE [dbo].[machineriesXev_sites] CHECK CONSTRAINT [FK_machineriesXev_sites_ev_sites]
GO
ALTER TABLE [dbo].[machineriesXev_sites]  WITH CHECK ADD  CONSTRAINT [FK_machineriesXev_sites_machineries] FOREIGN KEY([machinery_id])
REFERENCES [dbo].[machineries] ([machinery_id])
GO
ALTER TABLE [dbo].[machineriesXev_sites] CHECK CONSTRAINT [FK_machineriesXev_sites_machineries]
GO
ALTER TABLE [dbo].[materials]  WITH CHECK ADD  CONSTRAINT [FK_materials_control_words] FOREIGN KEY([control_word_id])
REFERENCES [dbo].[control_words] ([control_word_id])
GO
ALTER TABLE [dbo].[materials] CHECK CONSTRAINT [FK_materials_control_words]
GO
ALTER TABLE [dbo].[materials]  WITH CHECK ADD  CONSTRAINT [FK_materials_waste_operations] FOREIGN KEY([waste_operation_id])
REFERENCES [dbo].[waste_operations] ([waste_operation_id])
GO
ALTER TABLE [dbo].[materials] CHECK CONSTRAINT [FK_materials_waste_operations]
GO
ALTER TABLE [dbo].[materials_inventories]  WITH CHECK ADD  CONSTRAINT [FK_materials_inventories_contracts] FOREIGN KEY([contract_id])
REFERENCES [dbo].[contracts] ([contract_id])
GO
ALTER TABLE [dbo].[materials_inventories] CHECK CONSTRAINT [FK_materials_inventories_contracts]
GO
ALTER TABLE [dbo].[materials_inventories]  WITH CHECK ADD  CONSTRAINT [FK_materials_inventories_ev_sites] FOREIGN KEY([ev_site_id])
REFERENCES [dbo].[ev_sites] ([ev_site_id])
GO
ALTER TABLE [dbo].[materials_inventories] CHECK CONSTRAINT [FK_materials_inventories_ev_sites]
GO
ALTER TABLE [dbo].[materials_inventories]  WITH CHECK ADD  CONSTRAINT [FK_materials_inventories_materials] FOREIGN KEY([material_id])
REFERENCES [dbo].[materials] ([material_id])
GO
ALTER TABLE [dbo].[materials_inventories] CHECK CONSTRAINT [FK_materials_inventories_materials]
GO
ALTER TABLE [dbo].[materials_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_materials_inventories_checks_inventory_check_statuses] FOREIGN KEY([inventory_check_status_id])
REFERENCES [dbo].[inventory_check_statuses] ([inventory_check_statuses_id])
GO
ALTER TABLE [dbo].[materials_inventories_checks] CHECK CONSTRAINT [FK_materials_inventories_checks_inventory_check_statuses]
GO
ALTER TABLE [dbo].[materials_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_materials_inventories_checks_inventory_check_types] FOREIGN KEY([inventory_check_type_id])
REFERENCES [dbo].[inventory_check_types] ([inventory_check_type_id])
GO
ALTER TABLE [dbo].[materials_inventories_checks] CHECK CONSTRAINT [FK_materials_inventories_checks_inventory_check_types]
GO
ALTER TABLE [dbo].[materials_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_materials_inventories_checks_materials_inventories] FOREIGN KEY([material_inventory_id])
REFERENCES [dbo].[materials_inventories] ([material_inventory_id])
GO
ALTER TABLE [dbo].[materials_inventories_checks] CHECK CONSTRAINT [FK_materials_inventories_checks_materials_inventories]
GO
ALTER TABLE [dbo].[materials_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_materials_inventories_checks_users1] FOREIGN KEY([user_1])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[materials_inventories_checks] CHECK CONSTRAINT [FK_materials_inventories_checks_users1]
GO
ALTER TABLE [dbo].[materials_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_materials_inventories_checks_users2] FOREIGN KEY([user_2])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[materials_inventories_checks] CHECK CONSTRAINT [FK_materials_inventories_checks_users2]
GO
ALTER TABLE [dbo].[materialsXproducts]  WITH CHECK ADD  CONSTRAINT [FK_materialsXproducts_contracts] FOREIGN KEY([contract_id])
REFERENCES [dbo].[contracts] ([contract_id])
GO
ALTER TABLE [dbo].[materialsXproducts] CHECK CONSTRAINT [FK_materialsXproducts_contracts]
GO
ALTER TABLE [dbo].[materialsXproducts]  WITH CHECK ADD  CONSTRAINT [FK_materialsXproducts_materials] FOREIGN KEY([material_id])
REFERENCES [dbo].[materials] ([material_id])
GO
ALTER TABLE [dbo].[materialsXproducts] CHECK CONSTRAINT [FK_materialsXproducts_materials]
GO
ALTER TABLE [dbo].[materialsXproducts]  WITH CHECK ADD  CONSTRAINT [FK_materialsXproducts_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[materialsXproducts] CHECK CONSTRAINT [FK_materialsXproducts_products]
GO
ALTER TABLE [dbo].[producers]  WITH CHECK ADD  CONSTRAINT [FK_producers_corporations] FOREIGN KEY([corporation_id])
REFERENCES [dbo].[corporations] ([corporation_id])
GO
ALTER TABLE [dbo].[producers] CHECK CONSTRAINT [FK_producers_corporations]
GO
ALTER TABLE [dbo].[producers]  WITH CHECK ADD  CONSTRAINT [FK_producers_specific_location] FOREIGN KEY([specific_location_id])
REFERENCES [dbo].[specific_location] ([specific_location_id])
GO
ALTER TABLE [dbo].[producers] CHECK CONSTRAINT [FK_producers_specific_location]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_control_words] FOREIGN KEY([control_word_id])
REFERENCES [dbo].[control_words] ([control_word_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_control_words]
GO
ALTER TABLE [dbo].[products_inventories]  WITH CHECK ADD  CONSTRAINT [FK_products_inventories_contracts] FOREIGN KEY([contract_id])
REFERENCES [dbo].[contracts] ([contract_id])
GO
ALTER TABLE [dbo].[products_inventories] CHECK CONSTRAINT [FK_products_inventories_contracts]
GO
ALTER TABLE [dbo].[products_inventories]  WITH CHECK ADD  CONSTRAINT [FK_products_inventories_ev_sites] FOREIGN KEY([ev_site_id])
REFERENCES [dbo].[ev_sites] ([ev_site_id])
GO
ALTER TABLE [dbo].[products_inventories] CHECK CONSTRAINT [FK_products_inventories_ev_sites]
GO
ALTER TABLE [dbo].[products_inventories]  WITH CHECK ADD  CONSTRAINT [FK_products_inventories_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[products_inventories] CHECK CONSTRAINT [FK_products_inventories_products]
GO
ALTER TABLE [dbo].[products_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_products_inventories_checks_inventory_check_statuses] FOREIGN KEY([inventory_check_status_id])
REFERENCES [dbo].[inventory_check_statuses] ([inventory_check_statuses_id])
GO
ALTER TABLE [dbo].[products_inventories_checks] CHECK CONSTRAINT [FK_products_inventories_checks_inventory_check_statuses]
GO
ALTER TABLE [dbo].[products_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_products_inventories_checks_inventory_check_types] FOREIGN KEY([inventory_check_type_id])
REFERENCES [dbo].[inventory_check_types] ([inventory_check_type_id])
GO
ALTER TABLE [dbo].[products_inventories_checks] CHECK CONSTRAINT [FK_products_inventories_checks_inventory_check_types]
GO
ALTER TABLE [dbo].[products_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_products_inventories_checks_products_inventories] FOREIGN KEY([product_inventory_id])
REFERENCES [dbo].[products_inventories] ([product_inventory_id])
GO
ALTER TABLE [dbo].[products_inventories_checks] CHECK CONSTRAINT [FK_products_inventories_checks_products_inventories]
GO
ALTER TABLE [dbo].[products_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_products_inventories_checks_users1] FOREIGN KEY([user_1])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[products_inventories_checks] CHECK CONSTRAINT [FK_products_inventories_checks_users1]
GO
ALTER TABLE [dbo].[products_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_products_inventories_checks_users2] FOREIGN KEY([user_2])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[products_inventories_checks] CHECK CONSTRAINT [FK_products_inventories_checks_users2]
GO
ALTER TABLE [dbo].[region_areas]  WITH CHECK ADD  CONSTRAINT [FK_region_areas_cities] FOREIGN KEY([city_id])
REFERENCES [dbo].[cities] ([city_id])
GO
ALTER TABLE [dbo].[region_areas] CHECK CONSTRAINT [FK_region_areas_cities]
GO
ALTER TABLE [dbo].[region_areas]  WITH CHECK ADD  CONSTRAINT [FK_region_areas_countries] FOREIGN KEY([country_id])
REFERENCES [dbo].[countries] ([country_id])
GO
ALTER TABLE [dbo].[region_areas] CHECK CONSTRAINT [FK_region_areas_countries]
GO
ALTER TABLE [dbo].[region_areas]  WITH CHECK ADD  CONSTRAINT [FK_region_areas_districts] FOREIGN KEY([district_id])
REFERENCES [dbo].[districts] ([district_id])
GO
ALTER TABLE [dbo].[region_areas] CHECK CONSTRAINT [FK_region_areas_districts]
GO
ALTER TABLE [dbo].[region_areas]  WITH CHECK ADD  CONSTRAINT [FK_region_areas_regions] FOREIGN KEY([region_id])
REFERENCES [dbo].[regions] ([region_id])
GO
ALTER TABLE [dbo].[region_areas] CHECK CONSTRAINT [FK_region_areas_regions]
GO
ALTER TABLE [dbo].[region_areas]  WITH CHECK ADD  CONSTRAINT [FK_region_areas_state/provinces] FOREIGN KEY([state/province_id])
REFERENCES [dbo].[state/provinces] ([state/province_id])
GO
ALTER TABLE [dbo].[region_areas] CHECK CONSTRAINT [FK_region_areas_state/provinces]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_channels] FOREIGN KEY([channel_id])
REFERENCES [dbo].[channels] ([channel_id])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_channels]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_materials_inventories] FOREIGN KEY([material_inventory_id])
REFERENCES [dbo].[materials_inventories] ([material_inventory_id])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_materials_inventories]
GO
ALTER TABLE [dbo].[sales]  WITH CHECK ADD  CONSTRAINT [FK_sales_products_inventories] FOREIGN KEY([product_inventory_id])
REFERENCES [dbo].[products_inventories] ([product_inventory_id])
GO
ALTER TABLE [dbo].[sales] CHECK CONSTRAINT [FK_sales_products_inventories]
GO
ALTER TABLE [dbo].[specific_location]  WITH CHECK ADD  CONSTRAINT [FK_specific_location_streets] FOREIGN KEY([street_id])
REFERENCES [dbo].[streets] ([street_id])
GO
ALTER TABLE [dbo].[specific_location] CHECK CONSTRAINT [FK_specific_location_streets]
GO
ALTER TABLE [dbo].[state/provinces]  WITH CHECK ADD  CONSTRAINT [FK_state/provinces_countries] FOREIGN KEY([country_id])
REFERENCES [dbo].[countries] ([country_id])
GO
ALTER TABLE [dbo].[state/provinces] CHECK CONSTRAINT [FK_state/provinces_countries]
GO
ALTER TABLE [dbo].[streets]  WITH CHECK ADD  CONSTRAINT [FK_streets_districts] FOREIGN KEY([district_id])
REFERENCES [dbo].[districts] ([district_id])
GO
ALTER TABLE [dbo].[streets] CHECK CONSTRAINT [FK_streets_districts]
GO
ALTER TABLE [dbo].[taxes]  WITH CHECK ADD  CONSTRAINT [FK_taxes_control_words] FOREIGN KEY([control_word_id])
REFERENCES [dbo].[control_words] ([control_word_id])
GO
ALTER TABLE [dbo].[taxes] CHECK CONSTRAINT [FK_taxes_control_words]
GO
ALTER TABLE [dbo].[taxes]  WITH CHECK ADD  CONSTRAINT [FK_taxes_entities] FOREIGN KEY([entity_id])
REFERENCES [dbo].[entities] ([entity_id])
GO
ALTER TABLE [dbo].[taxes] CHECK CONSTRAINT [FK_taxes_entities]
GO
ALTER TABLE [dbo].[taxesXcontracts]  WITH CHECK ADD  CONSTRAINT [FK_taxesXcontracts_contracts] FOREIGN KEY([contract_id])
REFERENCES [dbo].[contracts] ([contract_id])
GO
ALTER TABLE [dbo].[taxesXcontracts] CHECK CONSTRAINT [FK_taxesXcontracts_contracts]
GO
ALTER TABLE [dbo].[taxesXcontracts]  WITH CHECK ADD  CONSTRAINT [FK_taxesXcontracts_taxes] FOREIGN KEY([tax_id])
REFERENCES [dbo].[taxes] ([tax_id])
GO
ALTER TABLE [dbo].[taxesXcontracts] CHECK CONSTRAINT [FK_taxesXcontracts_taxes]
GO
ALTER TABLE [dbo].[translations]  WITH CHECK ADD  CONSTRAINT [FK_traductions_control_words] FOREIGN KEY([control_word_id])
REFERENCES [dbo].[control_words] ([control_word_id])
GO
ALTER TABLE [dbo].[translations] CHECK CONSTRAINT [FK_traductions_control_words]
GO
ALTER TABLE [dbo].[translations]  WITH CHECK ADD  CONSTRAINT [FK_traductions_languages] FOREIGN KEY([language_id])
REFERENCES [dbo].[languages] ([language_id])
GO
ALTER TABLE [dbo].[translations] CHECK CONSTRAINT [FK_traductions_languages]
GO
ALTER TABLE [dbo].[transport_types]  WITH CHECK ADD  CONSTRAINT [FK_transport_types_control_words] FOREIGN KEY([control_word_id])
REFERENCES [dbo].[control_words] ([control_word_id])
GO
ALTER TABLE [dbo].[transport_types] CHECK CONSTRAINT [FK_transport_types_control_words]
GO
ALTER TABLE [dbo].[transportXcollectors]  WITH CHECK ADD  CONSTRAINT [FK_transportXcollectors_alt_collectors] FOREIGN KEY([alt_collector_id])
REFERENCES [dbo].[alt_collectors] ([alt_collector_id])
GO
ALTER TABLE [dbo].[transportXcollectors] CHECK CONSTRAINT [FK_transportXcollectors_alt_collectors]
GO
ALTER TABLE [dbo].[transportXcollectors]  WITH CHECK ADD  CONSTRAINT [FK_transportXcollectors_ev_collectors] FOREIGN KEY([ev_collector_id])
REFERENCES [dbo].[ev_collectors] ([ev_collector_id])
GO
ALTER TABLE [dbo].[transportXcollectors] CHECK CONSTRAINT [FK_transportXcollectors_ev_collectors]
GO
ALTER TABLE [dbo].[transportXcollectors]  WITH CHECK ADD  CONSTRAINT [FK_transportXcollectors_transport_types] FOREIGN KEY([transport_type_id])
REFERENCES [dbo].[transport_types] ([transport_type_id])
GO
ALTER TABLE [dbo].[transportXcollectors] CHECK CONSTRAINT [FK_transportXcollectors_transport_types]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_alt_collectors] FOREIGN KEY([alt_collector_id])
REFERENCES [dbo].[alt_collectors] ([alt_collector_id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_alt_collectors]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_entities] FOREIGN KEY([entity_id])
REFERENCES [dbo].[entities] ([entity_id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_entities]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_ev_collectors] FOREIGN KEY([ev_collector_id])
REFERENCES [dbo].[ev_collectors] ([ev_collector_id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_ev_collectors]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_ev_sites] FOREIGN KEY([ev_site_id])
REFERENCES [dbo].[ev_sites] ([ev_site_id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_ev_sites]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_producers] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producers] ([producer_id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_producers]
GO
ALTER TABLE [dbo].[waste_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_waste_inventories_checks_inventory_check_statuses] FOREIGN KEY([inventory_check_status_id])
REFERENCES [dbo].[inventory_check_statuses] ([inventory_check_statuses_id])
GO
ALTER TABLE [dbo].[waste_inventories_checks] CHECK CONSTRAINT [FK_waste_inventories_checks_inventory_check_statuses]
GO
ALTER TABLE [dbo].[waste_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_waste_inventories_checks_inventory_check_types] FOREIGN KEY([inventory_check_type_id])
REFERENCES [dbo].[inventory_check_types] ([inventory_check_type_id])
GO
ALTER TABLE [dbo].[waste_inventories_checks] CHECK CONSTRAINT [FK_waste_inventories_checks_inventory_check_types]
GO
ALTER TABLE [dbo].[waste_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_waste_inventories_checks_users1] FOREIGN KEY([user_1])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[waste_inventories_checks] CHECK CONSTRAINT [FK_waste_inventories_checks_users1]
GO
ALTER TABLE [dbo].[waste_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_waste_inventories_checks_users2] FOREIGN KEY([user_2])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[waste_inventories_checks] CHECK CONSTRAINT [FK_waste_inventories_checks_users2]
GO
ALTER TABLE [dbo].[waste_inventories_checks]  WITH CHECK ADD  CONSTRAINT [FK_waste_inventories_checks_wastes_inventories] FOREIGN KEY([waste_inventory_id])
REFERENCES [dbo].[wastes_inventories] ([waste_inventory_id])
GO
ALTER TABLE [dbo].[waste_inventories_checks] CHECK CONSTRAINT [FK_waste_inventories_checks_wastes_inventories]
GO
ALTER TABLE [dbo].[waste_movements]  WITH CHECK ADD  CONSTRAINT [FK_waste_movements_alt_collectors] FOREIGN KEY([alt_collector_id])
REFERENCES [dbo].[alt_collectors] ([alt_collector_id])
GO
ALTER TABLE [dbo].[waste_movements] CHECK CONSTRAINT [FK_waste_movements_alt_collectors]
GO
ALTER TABLE [dbo].[waste_movements]  WITH CHECK ADD  CONSTRAINT [FK_waste_movements_ev_collectors] FOREIGN KEY([ev_collector_id])
REFERENCES [dbo].[ev_collectors] ([ev_collector_id])
GO
ALTER TABLE [dbo].[waste_movements] CHECK CONSTRAINT [FK_waste_movements_ev_collectors]
GO
ALTER TABLE [dbo].[waste_movements]  WITH CHECK ADD  CONSTRAINT [FK_waste_movements_movement_types] FOREIGN KEY([movementType])
REFERENCES [dbo].[movement_types] ([movement_type])
GO
ALTER TABLE [dbo].[waste_movements] CHECK CONSTRAINT [FK_waste_movements_movement_types]
GO
ALTER TABLE [dbo].[waste_movements]  WITH CHECK ADD  CONSTRAINT [FK_waste_movements_producers] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producers] ([producer_id])
GO
ALTER TABLE [dbo].[waste_movements] CHECK CONSTRAINT [FK_waste_movements_producers]
GO
ALTER TABLE [dbo].[waste_movements]  WITH CHECK ADD  CONSTRAINT [FK_waste_movements_streets] FOREIGN KEY([street_id])
REFERENCES [dbo].[streets] ([street_id])
GO
ALTER TABLE [dbo].[waste_movements] CHECK CONSTRAINT [FK_waste_movements_streets]
GO
ALTER TABLE [dbo].[waste_movements]  WITH CHECK ADD  CONSTRAINT [FK_waste_movements_wastes] FOREIGN KEY([waste_id])
REFERENCES [dbo].[wastes] ([waste_id])
GO
ALTER TABLE [dbo].[waste_movements] CHECK CONSTRAINT [FK_waste_movements_wastes]
GO
ALTER TABLE [dbo].[waste_operations]  WITH CHECK ADD  CONSTRAINT [FK_waste_operations_machineries] FOREIGN KEY([machinery_id])
REFERENCES [dbo].[machineries] ([machinery_id])
GO
ALTER TABLE [dbo].[waste_operations] CHECK CONSTRAINT [FK_waste_operations_machineries]
GO
ALTER TABLE [dbo].[waste_operations]  WITH CHECK ADD  CONSTRAINT [FK_waste_operations_materials] FOREIGN KEY([material_id])
REFERENCES [dbo].[materials] ([material_id])
GO
ALTER TABLE [dbo].[waste_operations] CHECK CONSTRAINT [FK_waste_operations_materials]
GO
ALTER TABLE [dbo].[waste_operations]  WITH CHECK ADD  CONSTRAINT [FK_waste_operations_wastes] FOREIGN KEY([waste_id])
REFERENCES [dbo].[wastes] ([waste_id])
GO
ALTER TABLE [dbo].[waste_operations] CHECK CONSTRAINT [FK_waste_operations_wastes]
GO
ALTER TABLE [dbo].[waste_operationsXcountries]  WITH CHECK ADD  CONSTRAINT [FK_waste_operationsXcountries_countries] FOREIGN KEY([country_id])
REFERENCES [dbo].[countries] ([country_id])
GO
ALTER TABLE [dbo].[waste_operationsXcountries] CHECK CONSTRAINT [FK_waste_operationsXcountries_countries]
GO
ALTER TABLE [dbo].[waste_operationsXcountries]  WITH CHECK ADD  CONSTRAINT [FK_waste_operationsXcountries_waste_operations] FOREIGN KEY([waste_operation_id])
REFERENCES [dbo].[waste_operations] ([waste_operation_id])
GO
ALTER TABLE [dbo].[waste_operationsXcountries] CHECK CONSTRAINT [FK_waste_operationsXcountries_waste_operations]
GO
ALTER TABLE [dbo].[wastes]  WITH CHECK ADD  CONSTRAINT [FK_wastes_control_words] FOREIGN KEY([control_word_id])
REFERENCES [dbo].[control_words] ([control_word_id])
GO
ALTER TABLE [dbo].[wastes] CHECK CONSTRAINT [FK_wastes_control_words]
GO
ALTER TABLE [dbo].[wastes]  WITH CHECK ADD  CONSTRAINT [FK_wastes_wastes] FOREIGN KEY([waste_types_id])
REFERENCES [dbo].[waste_types] ([waste_types_id])
GO
ALTER TABLE [dbo].[wastes] CHECK CONSTRAINT [FK_wastes_wastes]
GO
ALTER TABLE [dbo].[wastes_inventories]  WITH CHECK ADD  CONSTRAINT [FK_wastes_inventories_ev_sites] FOREIGN KEY([ev_site_id])
REFERENCES [dbo].[ev_sites] ([ev_site_id])
GO
ALTER TABLE [dbo].[wastes_inventories] CHECK CONSTRAINT [FK_wastes_inventories_ev_sites]
GO
ALTER TABLE [dbo].[wastes_inventories]  WITH CHECK ADD  CONSTRAINT [FK_wastes_inventories_wastes] FOREIGN KEY([waste_id])
REFERENCES [dbo].[wastes] ([waste_id])
GO
ALTER TABLE [dbo].[wastes_inventories] CHECK CONSTRAINT [FK_wastes_inventories_wastes]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'if someone wants the raw product' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'materials', @level2type=N'COLUMN',@level2name=N'sale_cost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'if the product cannot be created' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'materials', @level2type=N'COLUMN',@level2name=N'purchase_cost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'quantity of material needed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'materialsXproducts', @level2type=N'COLUMN',@level2name=N'quantity'
GO
