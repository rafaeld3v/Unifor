-- FUNÇÕES ESCALARES

-- 1. Retorna nome completo do cliente em letras maiúsculas
CREATE FUNCTION fn_ClienteNomeMaiusculo(@ClienteID INT)
RETURNS NVARCHAR(200)
AS
BEGIN
    DECLARE @Nome NVARCHAR(200);
    SELECT @Nome = UPPER(Nome) FROM Clientes WHERE ClienteID = @ClienteID;
    RETURN @Nome;
END;

-- 2. Calcula o valor total de um item de pedido (quantidade * preço unitário)
CREATE FUNCTION fn_CalcularTotalItem(@Quantidade INT, @PrecoUnitario DECIMAL(10,2))
RETURNS DECIMAL(10,2)
AS
BEGIN
    RETURN @Quantidade * @PrecoUnitario;
END;

-- 3. Retorna a faixa de preço do produto
CREATE FUNCTION fn_FaixaPrecoProduto(@ProdutoID INT)
RETURNS NVARCHAR(20)
AS
BEGIN
    DECLARE @Preco DECIMAL(10,2);
    SELECT @Preco = Preco FROM Produtos WHERE ProdutoID = @ProdutoID;
    RETURN CASE WHEN @Preco > 100 THEN 'Alto' WHEN @Preco > 50 THEN 'Médio' ELSE 'Baixo' END;
END;

-- 4. Retorna o primeiro nome do cliente
CREATE FUNCTION fn_PrimeiroNome(@NomeCompleto NVARCHAR(100))
RETURNS NVARCHAR(50)
AS
BEGIN
    RETURN LEFT(@NomeCompleto, CHARINDEX(' ', @NomeCompleto + ' ') - 1);
END;

-- 5. Retorna o número total de pedidos de um cliente
CREATE FUNCTION fn_TotalPedidosCliente(@ClienteID INT)
RETURNS INT
AS
BEGIN
    DECLARE @Total INT;
    SELECT @Total = COUNT(*) FROM Pedidos WHERE ClienteID = @ClienteID;
    RETURN @Total;
END;


-- FUNÇÕES TABELADAS (TVF - Table-Valued Functions)

-- 1. Lista todos os pedidos de um cliente
CREATE FUNCTION fn_PedidosPorCliente(@ClienteID INT)
RETURNS TABLE
AS
RETURN (
    SELECT PedidoID, DataPedido, FilialID, FuncionarioID
    FROM Pedidos
    WHERE ClienteID = @ClienteID
);

-- 2. Retorna os produtos de uma categoria específica
CREATE FUNCTION fn_ProdutosPorCategoria(@CategoriaID INT)
RETURNS TABLE
AS
RETURN (
    SELECT ProdutoID, Nome, Preco
    FROM Produtos
    WHERE CategoriaID = @CategoriaID
);

-- 3. Lista os itens de pedido por ID do pedido
CREATE FUNCTION fn_ItensDoPedido(@PedidoID INT)
RETURNS TABLE
AS
RETURN (
    SELECT ip.ProdutoID, p.Nome AS Produto, ip.Quantidade, ip.PrecoUnitario
    FROM ItensPedido ip
    JOIN Produtos p ON ip.ProdutoID = p.ProdutoID
    WHERE ip.PedidoID = @PedidoID
);

-- 4. Retorna os clientes com e-mail cadastrado
CREATE FUNCTION fn_ClientesComEmail()
RETURNS TABLE
AS
RETURN (
    SELECT ClienteID, Nome, Email FROM Clientes WHERE Email IS NOT NULL
);

-- 5. Produtos com estoque abaixo do mínimo por filial
CREATE FUNCTION fn_EstoqueBaixoPorFilial(@QuantidadeMinima INT)
RETURNS TABLE
AS
RETURN (
    SELECT f.Nome AS Filial, p.Nome AS Produto, e.Quantidade
    FROM Estoque e
    JOIN Filiais f ON e.FilialID = f.FilialID
    JOIN Produtos p ON e.ProdutoID = p.ProdutoID
    WHERE e.Quantidade < @QuantidadeMinima
);


