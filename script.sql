USE [Caso3BaesI]
GO
/****** Object:  Table [dbo].[cambios]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cambios](
	[cambioId] [int] IDENTITY(1,1) NOT NULL,
	[modificadot] [decimal](8, 8) NOT NULL,
 CONSTRAINT [PK_cambios] PRIMARY KEY CLUSTERED 
(
	[cambioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cambiosLogs]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cambiosLogs](
	[cambioLogId] [int] IDENTITY(1,1) NOT NULL,
	[creadoEn] [datetime] NOT NULL,
	[ultimaActualizacion] [datetime] NOT NULL,
 CONSTRAINT [PK_cambiosLogs] PRIMARY KEY CLUSTERED 
(
	[cambioLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[desechos]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[desechos](
	[desechosId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_desechos] PRIMARY KEY CLUSTERED 
(
	[desechosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empresasRecolectoras]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empresasRecolectoras](
	[empresaRecolectoraId] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_empresasRecolectoras] PRIMARY KEY CLUSTERED 
(
	[empresaRecolectoraId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[entregas]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entregas](
	[entregaId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_entregas] PRIMARY KEY CLUSTERED 
(
	[entregaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flotillas]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flotillas](
	[flotillaId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_flotillas] PRIMARY KEY CLUSTERED 
(
	[flotillaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[horarios]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[horarios](
	[horarioId] [int] IDENTITY(1,1) NOT NULL,
	[fechaInicio] [datetime] NOT NULL,
	[fechaFinal] [datetime] NOT NULL,
 CONSTRAINT [PK_horarios] PRIMARY KEY CLUSTERED 
(
	[horarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idiomas]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idiomas](
	[idiomaId] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_idiomas] PRIMARY KEY CLUSTERED 
(
	[idiomaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logEventos]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logEventos](
	[logEvento] [int] NOT NULL,
	[createdAt] [datetime] NOT NULL,
	[computer] [varchar](20) NOT NULL,
	[username] [varchar](20) NOT NULL,
	[checksum] [varbinary](150) NOT NULL,
	[description] [varchar](100) NOT NULL,
	[reference_id1] [bigint] NOT NULL,
	[reference_id2] [bigint] NOT NULL,
	[value1] [varchar](60) NOT NULL,
	[value2] [varchar](60) NOT NULL,
 CONSTRAINT [PK_logEventos] PRIMARY KEY CLUSTERED 
(
	[logEvento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monedas]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monedas](
	[monedaId] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[simbolo] [varchar](1) NOT NULL,
 CONSTRAINT [PK_monedas] PRIMARY KEY CLUSTERED 
(
	[monedaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[niveles]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[niveles](
	[nivelId] [int] IDENTITY(1,1) NOT NULL,
	[nombreNivel] [varchar](20) NOT NULL,
 CONSTRAINT [PK_niveles] PRIMARY KEY CLUSTERED 
(
	[nivelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[origenes]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[origenes](
	[origenId] [int] IDENTITY(1,1) NOT NULL,
	[nombreOrigen] [varchar](20) NOT NULL,
 CONSTRAINT [PK_origenes] PRIMARY KEY CLUSTERED 
(
	[origenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paises]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paises](
	[paisId] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[continente] [varchar](30) NOT NULL,
 CONSTRAINT [PK_paises] PRIMARY KEY CLUSTERED 
(
	[paisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productores]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productores](
	[productorId] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_productores] PRIMARY KEY CLUSTERED 
(
	[productorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[productoId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[productoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[recipientes]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recipientes](
	[recipienteId] [int] IDENTITY(1,1) NOT NULL,
	[capacidad] [decimal](8, 3) NOT NULL,
	[medida] [varchar](50) NOT NULL,
	[disponible] [bit] NOT NULL,
	[estado] [varchar](30) NOT NULL,
 CONSTRAINT [PK_recipientes] PRIMARY KEY CLUSTERED 
(
	[recipienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[recipientesXEntregas]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recipientesXEntregas](
	[recipienteXEntregaId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_recipientesXEntregas] PRIMARY KEY CLUSTERED 
(
	[recipienteXEntregaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sedes]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sedes](
	[sedeId] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[localizacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_sedes] PRIMARY KEY CLUSTERED 
(
	[sedeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoObjetos]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoObjetos](
	[tipoObjetoId] [int] IDENTITY(1,1) NOT NULL,
	[nombreObjeto] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tipoObjetos] PRIMARY KEY CLUSTERED 
(
	[tipoObjetoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tiposDesechos]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tiposDesechos](
	[tipoDesechoId] [int] IDENTITY(1,1) NOT NULL,
	[tipoDesechoNombre] [varchar](50) NOT NULL,
	[tratable] [bit] NOT NULL,
	[reciclable] [bit] NOT NULL,
 CONSTRAINT [PK_tiposDesechos] PRIMARY KEY CLUSTERED 
(
	[tipoDesechoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tiposEventos]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tiposEventos](
	[tipoEventoId] [int] IDENTITY(1,1) NOT NULL,
	[nombreTipo] [varchar](50) NULL,
 CONSTRAINT [PK_tiposEventos] PRIMARY KEY CLUSTERED 
(
	[tipoEventoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tratamientos]    Script Date: 4/7/2023 9:18:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tratamientos](
	[tratamientoId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tratamientos] PRIMARY KEY CLUSTERED 
(
	[tratamientoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[recipientes] ADD  CONSTRAINT [DF_recipientes_estado]  DEFAULT ('nuevo') FOR [estado]
GO
ALTER TABLE [dbo].[cambios]  WITH CHECK ADD  CONSTRAINT [FK_cambios_cambiosLogs] FOREIGN KEY([cambioId])
REFERENCES [dbo].[cambiosLogs] ([cambioLogId])
GO
ALTER TABLE [dbo].[cambios] CHECK CONSTRAINT [FK_cambios_cambiosLogs]
GO
ALTER TABLE [dbo].[desechos]  WITH CHECK ADD  CONSTRAINT [FK_desechos_tiposDesechos] FOREIGN KEY([desechosId])
REFERENCES [dbo].[tiposDesechos] ([tipoDesechoId])
GO
ALTER TABLE [dbo].[desechos] CHECK CONSTRAINT [FK_desechos_tiposDesechos]
GO
ALTER TABLE [dbo].[entregas]  WITH CHECK ADD  CONSTRAINT [FK_entregas_empresasRecolectoras] FOREIGN KEY([entregaId])
REFERENCES [dbo].[empresasRecolectoras] ([empresaRecolectoraId])
GO
ALTER TABLE [dbo].[entregas] CHECK CONSTRAINT [FK_entregas_empresasRecolectoras]
GO
ALTER TABLE [dbo].[entregas]  WITH CHECK ADD  CONSTRAINT [FK_entregas_flotillas] FOREIGN KEY([entregaId])
REFERENCES [dbo].[flotillas] ([flotillaId])
GO
ALTER TABLE [dbo].[entregas] CHECK CONSTRAINT [FK_entregas_flotillas]
GO
ALTER TABLE [dbo].[entregas]  WITH CHECK ADD  CONSTRAINT [FK_entregas_horarios] FOREIGN KEY([entregaId])
REFERENCES [dbo].[horarios] ([horarioId])
GO
ALTER TABLE [dbo].[entregas] CHECK CONSTRAINT [FK_entregas_horarios]
GO
ALTER TABLE [dbo].[entregas]  WITH CHECK ADD  CONSTRAINT [FK_entregas_productores] FOREIGN KEY([entregaId])
REFERENCES [dbo].[productores] ([productorId])
GO
ALTER TABLE [dbo].[entregas] CHECK CONSTRAINT [FK_entregas_productores]
GO
ALTER TABLE [dbo].[entregas]  WITH CHECK ADD  CONSTRAINT [FK_entregas_recipientesXEntregas] FOREIGN KEY([entregaId])
REFERENCES [dbo].[recipientesXEntregas] ([recipienteXEntregaId])
GO
ALTER TABLE [dbo].[entregas] CHECK CONSTRAINT [FK_entregas_recipientesXEntregas]
GO
ALTER TABLE [dbo].[logEventos]  WITH CHECK ADD  CONSTRAINT [FK_logEventos_tiposEventos] FOREIGN KEY([logEvento])
REFERENCES [dbo].[tiposEventos] ([tipoEventoId])
GO
ALTER TABLE [dbo].[logEventos] CHECK CONSTRAINT [FK_logEventos_tiposEventos]
GO
ALTER TABLE [dbo].[paises]  WITH CHECK ADD  CONSTRAINT [FK_paises_idiomas] FOREIGN KEY([paisId])
REFERENCES [dbo].[idiomas] ([idiomaId])
GO
ALTER TABLE [dbo].[paises] CHECK CONSTRAINT [FK_paises_idiomas]
GO
ALTER TABLE [dbo].[paises]  WITH CHECK ADD  CONSTRAINT [FK_paises_monedas] FOREIGN KEY([paisId])
REFERENCES [dbo].[monedas] ([monedaId])
GO
ALTER TABLE [dbo].[paises] CHECK CONSTRAINT [FK_paises_monedas]
GO
ALTER TABLE [dbo].[productores]  WITH CHECK ADD  CONSTRAINT [FK_productores_sedes] FOREIGN KEY([productorId])
REFERENCES [dbo].[sedes] ([sedeId])
GO
ALTER TABLE [dbo].[productores] CHECK CONSTRAINT [FK_productores_sedes]
GO
ALTER TABLE [dbo].[recipientes]  WITH CHECK ADD  CONSTRAINT [FK_recipientes_desechos] FOREIGN KEY([recipienteId])
REFERENCES [dbo].[desechos] ([desechosId])
GO
ALTER TABLE [dbo].[recipientes] CHECK CONSTRAINT [FK_recipientes_desechos]
GO
ALTER TABLE [dbo].[recipientesXEntregas]  WITH CHECK ADD  CONSTRAINT [FK_recipientesXEntregas_recipientes] FOREIGN KEY([recipienteXEntregaId])
REFERENCES [dbo].[recipientes] ([recipienteId])
GO
ALTER TABLE [dbo].[recipientesXEntregas] CHECK CONSTRAINT [FK_recipientesXEntregas_recipientes]
GO
