-- CONSULTAS USANDO O BANCO VendasDB

-- Consulta 1: Iniciante - Seleciona todos os clientes com email cadastrado
SELECT Nome, Email
FROM Clientes
WHERE Email IS NOT NULL
ORDER BY Nome;

-- Consulta 2: Intermediária - Total de produtos por categoria
SELECT cp.NomeCategoria, COUNT(p.ProdutoID) AS TotalProdutos
FROM CategoriasProduto cp
JOIN Produtos p ON cp.CategoriaID = p.CategoriaID
GROUP BY cp.NomeCategoria
HAVING COUNT(p.ProdutoID) > 0
ORDER BY TotalProdutos DESC;

-- Consulta 3: Avançada - Quantidade de pedidos por funcionário em cada filial
SELECT f.Nome AS Funcionario, fi.Nome AS Filial, COUNT(p.PedidoID) AS QtdePedidos
FROM Pedidos p
JOIN Funcionarios f ON p.FuncionarioID = f.FuncionarioID
JOIN Filiais fi ON p.FilialID = fi.FilialID
GROUP BY f.Nome, fi.Nome
HAVING COUNT(p.PedidoID) > 1
ORDER BY QtdePedidos DESC;

-- Consulta 4: Soma total de valores pagos por método de pagamento
SELECT MetodoPagamento, SUM(ValorPago) AS TotalRecebido
FROM Pagamentos
GROUP BY MetodoPagamento
ORDER BY TotalRecebido DESC;

-- Consulta 5: Maior valor de pagamento registrado
SELECT MAX(ValorPago) AS MaiorPagamento
FROM Pagamentos;

-- Consulta 6: Menor valor de pagamento registrado
SELECT MIN(ValorPago) AS MenorPagamento
FROM Pagamentos;

-- Consulta 7: Contagem de clientes com nome contendo "Silva"
SELECT COUNT(*) AS TotalSilvas
FROM Clientes
WHERE Nome LIKE '%Silva%';

-- Consulta 8: Ranqueamento de produtos mais vendidos (por quantidade total nos itens de pedido)
SELECT p.Nome AS Produto, SUM(ip.Quantidade) AS TotalVendido,
       RANK() OVER (ORDER BY SUM(ip.Quantidade) DESC) AS Posicao
FROM ItensPedido ip
JOIN Produtos p ON ip.ProdutoID = p.ProdutoID
GROUP BY p.Nome;

-- Consulta 9: Total de produtos em estoque por filial
SELECT fi.Nome AS Filial, SUM(e.Quantidade) AS TotalEstoque
FROM Estoque e
JOIN Filiais fi ON e.FilialID = fi.FilialID
GROUP BY fi.Nome;

-- Consulta 10: Produtos com estoque menor que 10 unidades
SELECT p.Nome AS Produto, f.Nome AS Filial, e.Quantidade
FROM Estoque e
JOIN Produtos p ON e.ProdutoID = p.ProdutoID
JOIN Filiais f ON e.FilialID = f.FilialID
WHERE e.Quantidade < 10
ORDER BY e.Quantidade ASC;

-- CRIANDO VIEWS
-- View 1: Iniciante - Lista de clientes com e-mail cadastrado
CREATE VIEW vw_ClientesComEmail AS
SELECT Nome, Email
FROM Clientes
WHERE Email IS NOT NULL;

-- View 2: Intermediária - Total de produtos por categoria
CREATE VIEW vw_TotalProdutosPorCategoria AS
SELECT cp.NomeCategoria, COUNT(p.ProdutoID) AS TotalProdutos
FROM CategoriasProduto cp
JOIN Produtos p ON cp.CategoriaID = p.CategoriaID
GROUP BY cp.NomeCategoria
HAVING COUNT(p.ProdutoID) > 0;

-- View 3: Avançada - Ranking de produtos mais vendidos
CREATE VIEW vw_RankingProdutosMaisVendidos AS
SELECT p.Nome AS Produto, SUM(ip.Quantidade) AS TotalVendido,
       RANK() OVER (ORDER BY SUM(ip.Quantidade) DESC) AS Posicao
FROM ItensPedido ip
JOIN Produtos p ON ip.ProdutoID = p.ProdutoID
GROUP BY p.Nome;