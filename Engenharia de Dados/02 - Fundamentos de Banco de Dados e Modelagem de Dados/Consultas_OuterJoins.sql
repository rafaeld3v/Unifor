-- Nova Tabela: CampanhasPromocionais
CREATE TABLE CampanhasPromocionais (
    CampanhaID INT PRIMARY KEY IDENTITY(1,1),
    NomeCampanha NVARCHAR(100),
    DataInicio DATE,
    DataFim DATE
);

-- Inserção de 10 registros na tabela CampanhasPromocionais
INSERT INTO CampanhasPromocionais (NomeCampanha, DataInicio, DataFim) VALUES
('Verão 2025', '2025-01-01', '2025-02-28'),
('Volta às Aulas', '2025-02-01', '2025-03-15'),
('Páscoa Descontos', '2025-03-20', '2025-04-05'),
('Dia das Mães', '2025-04-20', '2025-05-12'),
('Inverno Quente', '2025-06-01', '2025-07-15'),
('Volta às Aulas 2', '2025-07-20', '2025-08-05'),
('Primavera Ofertas', '2025-09-01', '2025-10-10'),
('Black Friday', '2025-11-01', '2025-11-30'),
('Natal de Prêmios', '2025-12-01', '2025-12-25'),
('Liquida Ano Novo', '2025-12-26', '2025-12-31');

-- Exemplo de LEFT JOIN com CampanhasPromocionais (clientes com ou sem pedidos em campanhas)
SELECT c.Nome, p.PedidoID, cp.NomeCampanha
FROM Clientes c
LEFT JOIN Pedidos p ON c.ClienteID = p.ClienteID
LEFT JOIN CampanhasPromocionais cp ON MONTH(p.DataPedido) BETWEEN MONTH(cp.DataInicio) AND MONTH(cp.DataFim);

-- Exemplo de RIGHT JOIN com CampanhasPromocionais (todas campanhas, com ou sem pedidos)
SELECT cp.NomeCampanha, p.PedidoID, c.Nome AS Cliente
FROM CampanhasPromocionais cp
RIGHT JOIN Pedidos p ON MONTH(p.DataPedido) BETWEEN MONTH(cp.DataInicio) AND MONTH(cp.DataFim)
RIGHT JOIN Clientes c ON c.ClienteID = p.ClienteID;

-- Exemplo de FULL OUTER JOIN com CampanhasPromocionais
SELECT c.Nome AS Cliente, p.PedidoID, cp.NomeCampanha
FROM Clientes c
FULL OUTER JOIN Pedidos p ON c.ClienteID = p.ClienteID
FULL OUTER JOIN CampanhasPromocionais cp ON MONTH(p.DataPedido) BETWEEN MONTH(cp.DataInicio) AND MONTH(cp.DataFim);
