-- 1. Relatório: Cargas por Porto
SELECT 
    'Cargas por Porto' AS Relacionamento,
    p.NomePorto,
    COUNT(c.CargaId) AS Total_Cargas,
    SUM(c.PesoKg) AS Peso_Total
FROM Porto p
LEFT JOIN Carga c ON p.PortoId = c.PortoDestinoId
GROUP BY p.NomePorto;
GO

-- 2. Relatório: Cargas por Navio
SELECT 
    'Cargas por Navio' AS Relacionamento,
    n.NomeNavio,
    COUNT(c.CargaId) AS Total_Cargas,
    SUM(c.PesoKg) AS Peso_Total
FROM Navio n
LEFT JOIN Carga c ON n.NavioId = c.NavioId
GROUP BY n.NomeNavio;
GO

-- 3. Relatório: Cargas por Navio e Porto com filtros
SELECT 
    n.NomeNavio,
    p.NomePorto AS PortoDestino,
    COUNT(c.CargaId) AS TotalCargas,
    SUM(c.PesoKg) AS PesoTotalCargas,
    AVG(c.PesoKg) AS PesoMedioCargas
FROM Navio n
JOIN Carga c ON n.NavioId = c.NavioId
JOIN Porto p ON c.PortoDestinoId = p.PortoId
GROUP BY n.NomeNavio, p.NomePorto
HAVING SUM(c.PesoKg) > 1000
ORDER BY PesoTotalCargas DESC;
GO

-- 4. View: vw_navios
CREATE VIEW vw_navios AS 
SELECT 
    n.NomeNavio,
    c.PesoKg
FROM Navio n
LEFT JOIN Carga c ON n.NavioId = c.NavioId;
GO

-- 5. View: vw_DetalhesCargasNavios
CREATE VIEW [dbo].[vw_DetalhesCargasNavios] AS
SELECT 
    c.CargaId,
    c.NumeroCarga,
    c.PesoKg,
    c.DataMaximaDesembarque,
    n.NomeNavio,
    n.NumeroNavio,
    p.NomePorto AS PortoDestino,
    ar.NomeAgente AS AgenteReceptor
FROM Carga c
LEFT JOIN Navio n ON c.NavioId = n.NavioId
LEFT JOIN Porto p ON c.PortoDestinoId = p.PortoId
LEFT JOIN AgenteReceptor ar ON c.AgenteReceptorId = ar.AgenteReceptorId;
GO
