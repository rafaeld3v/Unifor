USE [TransporteMaritimo];
GO

-- Inserir dados na tabela Porto
PRINT 'Inserindo dados na tabela Porto...';
INSERT INTO [dbo].[Porto] ([NomePorto], [CodigoPorto]) VALUES
('Porto de Santos', 'BRSSZ'),
('Porto de Roterdã', 'NLRTM'),
('Porto de Xangai', 'CNSHA'),
('Porto de Nova Iorque', 'USNYC'),
('Porto de Valparaíso', 'CLVAP');
GO

-- Inserir dados na tabela Navio
PRINT 'Inserindo dados na tabela Navio...';
INSERT INTO [dbo].[Navio] ([NumeroNavio], [NomeNavio], [CapacidadeKg]) VALUES
('NV001', 'Estrela do Mar', 100000.00),
('NV002', 'Oceano Azul', 150000.00),
('NV003', 'Vento Forte',   50000.00),
('NV004', 'Horizonte',     80000.00);
GO

-- Inserir dados na tabela AgenteReceptor
PRINT 'Inserindo dados na tabela AgenteReceptor...';
-- Assumindo que PortoId 1 = Santos, 2 = Roterdã, 3 = Xangai, 4 = Nova Iorque, 5 = Valparaíso
INSERT INTO [dbo].[AgenteReceptor] ([NomeAgente], [PortoId], [CodigoAgente]) VALUES
('Agente Alfa', 1, 'AG001'), -- Santos
('Agente Beta', 1, 'AG002'), -- Santos
('Agente Gama', 2, 'AG003'), -- Roterdã
('Agente Delta', 3, 'AG004'), -- Xangai
('Agente Epsilon', 4, 'AG005'); -- Nova Iorque
GO

-- Inserir dados na tabela Rota
PRINT 'Inserindo dados na tabela Rota...';
-- Assumindo NavioId 1 = Estrela do Mar, 2 = Oceano Azul, 3 = Vento Forte, 4 = Horizonte
INSERT INTO [dbo].[Rota] ([NavioId]) VALUES
(1), -- Rota 1: Estrela do Mar
(2), -- Rota 2: Oceano Azul
(3), -- Rota 3: Vento Forte
(4); -- Rota 4: Horizonte
GO

-- Inserir dados na tabela Rota_Porto
PRINT 'Inserindo dados na tabela Rota_Porto...';
-- Rota 1 (Navio 1 - Estrela do Mar): Santos -> Roterdã -> Nova Iorque
INSERT INTO [dbo].[Rota_Porto] ([RotaId], [PortoId], [OrdemVisita], [DataChegadaEstimada]) VALUES
(1, 1, 1, '2025-06-01'), -- Santos
(1, 2, 2, '2025-06-15'), -- Roterdã
(1, 4, 3, '2025-06-28'); -- Nova Iorque

-- Rota 2 (Navio 2 - Oceano Azul): Xangai -> Santos -> Valparaíso
INSERT INTO [dbo].[Rota_Porto] ([RotaId], [PortoId], [OrdemVisita], [DataChegadaEstimada]) VALUES
(2, 3, 1, '2025-06-05'), -- Xangai
(2, 1, 2, '2025-06-20'), -- Santos
(2, 5, 3, '2025-07-05'); -- Valparaíso

-- Rota 3 (Navio 3 - Vento Forte): Roterdã -> Nova Iorque -> Santos
INSERT INTO [dbo].[Rota_Porto] ([RotaId], [PortoId], [OrdemVisita], [DataChegadaEstimada]) VALUES
(3, 2, 1, '2025-06-10'), -- Roterdã
(3, 4, 2, '2025-06-25'), -- Nova Iorque
(3, 1, 3, '2025-07-10'); -- Santos

-- Rota 4 (Navio 4 - Horizonte): Santos -> Xangai
INSERT INTO [dbo].[Rota_Porto] ([RotaId], [PortoId], [OrdemVisita], [DataChegadaEstimada]) VALUES
(4, 1, 1, '2025-06-03'), -- Santos
(4, 3, 2, '2025-06-22'); -- Xangai
GO

-- Inserir dados na tabela Carga
PRINT 'Inserindo dados na tabela Carga...';
-- Cargas para alocar (NavioId IS NULL)
INSERT INTO [dbo].[Carga] ([NumeroCarga], [PesoKg], [DataMaximaDesembarque], [AgenteReceptorId], [PortoDestinoId], [DataValidade], [TemperaturaMaxima], [NavioId]) VALUES
('CARGA001', 5000.00, '2025-06-18', 1, 1, NULL, NULL, NULL), -- Destino Santos, Agente Alfa. Data limite antes de rota 2 e 3.
('CARGA002', 12000.00, '2025-06-25', 3, 2, NULL, NULL, NULL), -- Destino Roterdã, Agente Gama. Data limite antes de rota 1.
('CARGA003', 8000.00, '2025-07-01', 4, 3, '2025-07-15', 5.00, NULL), -- Destino Xangai, Agente Delta. Carga perecível/sensível. Data limite antes de rota 4.
('CARGA004', 3000.00, '2025-07-01', 5, 4, NULL, NULL, NULL), -- Destino Nova Iorque, Agente Epsilon. Data limite antes de rota 1 e 3.
('CARGA005', 7000.00, '2025-07-08', 2, 1, NULL, NULL, NULL); -- Destino Santos, Agente Beta. Data limite antes de rota 3.

-- Cargas já alocadas (para demonstrar dados existentes)
INSERT INTO [dbo].[Carga] ([NumeroCarga], [PesoKg], [DataMaximaDesembarque], [AgenteReceptorId], [PortoDestinoId], [DataValidade], [TemperaturaMaxima], [NavioId]) VALUES
('CARGA006', 20000.00, '2025-06-10', 1, 1, NULL, NULL, 1), -- Já no Navio Estrela do Mar
('CARGA007', 30000.00, '2025-06-28', 3, 2, NULL, NULL, 1), -- Já no Navio Estrela do Mar
('CARGA008', 10000.00, '2025-07-15', 4, 3, '2025-07-20', 10.00, 2); -- Já no Navio Oceano Azul
GO

PRINT 'Dados de exemplo inseridos com sucesso!';