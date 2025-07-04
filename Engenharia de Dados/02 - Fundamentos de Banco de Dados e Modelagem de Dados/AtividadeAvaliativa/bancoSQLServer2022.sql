USE [master]
GO
/****** Object:  Database [TransporteMaritimo]    Script Date: 5/14/2025 5:38:21 PM ******/
CREATE DATABASE [TransporteMaritimo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TransporteMaritimo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TransporteMaritimo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TransporteMaritimo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TransporteMaritimo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TransporteMaritimo] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TransporteMaritimo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TransporteMaritimo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET ARITHABORT OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TransporteMaritimo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TransporteMaritimo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TransporteMaritimo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TransporteMaritimo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET RECOVERY FULL 
GO
ALTER DATABASE [TransporteMaritimo] SET  MULTI_USER 
GO
ALTER DATABASE [TransporteMaritimo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TransporteMaritimo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TransporteMaritimo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TransporteMaritimo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TransporteMaritimo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TransporteMaritimo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TransporteMaritimo', N'ON'
GO
ALTER DATABASE [TransporteMaritimo] SET QUERY_STORE = ON
GO
ALTER DATABASE [TransporteMaritimo] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TransporteMaritimo]
GO
/****** Object:  UserDefinedFunction [dbo].[CalcularCargaNavio]    Script Date: 5/14/2025 5:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Função para calcular a carga atual do navio
CREATE FUNCTION [dbo].[CalcularCargaNavio] (@NavioId INT)
RETURNS DECIMAL(18, 2)
AS
BEGIN
    DECLARE @CargaAtual DECIMAL(18, 2);

    SELECT @CargaAtual = ISNULL(SUM(PesoKg), 0)
    FROM Carga
    WHERE NavioId = @NavioId;

    RETURN @CargaAtual;
END;
GO
/****** Object:  Table [dbo].[AgenteReceptor]    Script Date: 5/14/2025 5:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgenteReceptor](
	[AgenteReceptorId] [int] IDENTITY(1,1) NOT NULL,
	[NomeAgente] [varchar](100) NOT NULL,
	[PortoId] [int] NOT NULL,
	[CodigoAgente] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AgenteReceptorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CodigoAgente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carga]    Script Date: 5/14/2025 5:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carga](
	[CargaId] [int] IDENTITY(1,1) NOT NULL,
	[NumeroCarga] [varchar](20) NOT NULL,
	[PesoKg] [decimal](18, 2) NOT NULL,
	[DataMaximaDesembarque] [date] NOT NULL,
	[AgenteReceptorId] [int] NOT NULL,
	[PortoDestinoId] [int] NOT NULL,
	[DataValidade] [date] NULL,
	[TemperaturaMaxima] [decimal](5, 2) NULL,
	[NavioId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CargaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NumeroCarga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Navio]    Script Date: 5/14/2025 5:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Navio](
	[NavioId] [int] IDENTITY(1,1) NOT NULL,
	[NumeroNavio] [varchar](20) NOT NULL,
	[NomeNavio] [varchar](100) NOT NULL,
	[CapacidadeKg] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NavioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NumeroNavio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Porto]    Script Date: 5/14/2025 5:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Porto](
	[PortoId] [int] IDENTITY(1,1) NOT NULL,
	[NomePorto] [varchar](100) NOT NULL,
	[CodigoPorto] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PortoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CodigoPorto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rota]    Script Date: 5/14/2025 5:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rota](
	[RotaId] [int] IDENTITY(1,1) NOT NULL,
	[NavioId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RotaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rota_Porto]    Script Date: 5/14/2025 5:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rota_Porto](
	[RotaId] [int] NOT NULL,
	[PortoId] [int] NOT NULL,
	[OrdemVisita] [int] NOT NULL,
	[DataChegadaEstimada] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[RotaId] ASC,
	[PortoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AgenteReceptor]  WITH CHECK ADD FOREIGN KEY([PortoId])
REFERENCES [dbo].[Porto] ([PortoId])
GO
ALTER TABLE [dbo].[Carga]  WITH CHECK ADD FOREIGN KEY([AgenteReceptorId])
REFERENCES [dbo].[AgenteReceptor] ([AgenteReceptorId])
GO
ALTER TABLE [dbo].[Carga]  WITH CHECK ADD FOREIGN KEY([NavioId])
REFERENCES [dbo].[Navio] ([NavioId])
GO
ALTER TABLE [dbo].[Carga]  WITH CHECK ADD FOREIGN KEY([PortoDestinoId])
REFERENCES [dbo].[Porto] ([PortoId])
GO
ALTER TABLE [dbo].[Rota]  WITH CHECK ADD FOREIGN KEY([NavioId])
REFERENCES [dbo].[Navio] ([NavioId])
GO
ALTER TABLE [dbo].[Rota_Porto]  WITH CHECK ADD FOREIGN KEY([PortoId])
REFERENCES [dbo].[Porto] ([PortoId])
GO
ALTER TABLE [dbo].[Rota_Porto]  WITH CHECK ADD FOREIGN KEY([RotaId])
REFERENCES [dbo].[Rota] ([RotaId])
GO
ALTER TABLE [dbo].[Carga]  WITH CHECK ADD CHECK  (([PesoKg]>(0)))
GO
ALTER TABLE [dbo].[Navio]  WITH CHECK ADD CHECK  (([CapacidadeKg]>(0)))
GO
/****** Object:  StoredProcedure [dbo].[AlocarCargas]    Script Date: 5/14/2025 5:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Procedure para alocar cargas
CREATE PROCEDURE [dbo].[AlocarCargas]
AS
BEGIN
    -- Declaração das variáveis
    DECLARE @CargaId INT, @PortoDestinoId INT, @DataMaximaDesembarque DATE, @PesoCarga DECIMAL(18, 2), @NavioId INT;

    -- Cursor para percorrer as cargas não alocadas
    DECLARE carga_cursor CURSOR FOR
    SELECT CargaId, PortoDestinoId, DataMaximaDesembarque, PesoKg
    FROM Carga
    WHERE NavioId IS NULL;

    OPEN carga_cursor;
    FETCH NEXT FROM carga_cursor INTO @CargaId, @PortoDestinoId, @DataMaximaDesembarque, @PesoCarga;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Lógica para encontrar um navio adequado
        SELECT TOP 1 @NavioId = r.NavioId
        FROM Rota_Porto rp
        JOIN Rota r ON rp.RotaId = r.RotaId
        JOIN Navio n ON r.NavioId = n.NavioId
        WHERE rp.PortoId = @PortoDestinoId
          AND rp.DataChegadaEstimada <= @DataMaximaDesembarque
          AND n.CapacidadeKg >= dbo.CalcularCargaNavio(r.NavioId) + @PesoCarga
        ORDER BY rp.OrdemVisita;

        IF @NavioId IS NOT NULL
        BEGIN
            UPDATE Carga SET NavioId = @NavioId WHERE CargaId = @CargaId;
        END

        FETCH NEXT FROM carga_cursor INTO @CargaId, @PortoDestinoId, @DataMaximaDesembarque, @PesoCarga;
    END

    CLOSE carga_cursor;
    DEALLOCATE carga_cursor;
END;
GO
USE [master]
GO
ALTER DATABASE [TransporteMaritimo] SET  READ_WRITE 
GO
