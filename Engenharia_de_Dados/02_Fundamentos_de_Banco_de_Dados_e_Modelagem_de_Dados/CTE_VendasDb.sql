

-- Consulta com CTE - Nível Básico
-- Lista o total de pedidos por cliente com mais de um pedido:


WITH TotalPedidosPorCliente AS (
    SELECT ClienteID, COUNT(*) AS QuantidadePedidos
    FROM Pedidos
    GROUP BY ClienteID
)
SELECT c.Nome, t.QuantidadePedidos
FROM TotalPedidosPorCliente t
JOIN Clientes c ON c.ClienteID = t.ClienteID
WHERE t.QuantidadePedidos > 1
ORDER BY t.QuantidadePedidos DESC;

--- Consulta com CTE - Nível Intermediário
--- Mostra os produtos com suas quantidades totais vendidas e a média de vendas, usando uma CTE com agregação:

WITH VendasPorProduto AS (
    SELECT ProdutoID, SUM(Quantidade) AS TotalVendido
    FROM ItensPedido
    GROUP BY ProdutoID
)
SELECT p.Nome AS Produto, v.TotalVendido,
       AVG(v.TotalVendido) OVER() AS MediaVendas
FROM VendasPorProduto v
JOIN Produtos p ON p.ProdutoID = v.ProdutoID
ORDER BY v.TotalVendido DESC;
