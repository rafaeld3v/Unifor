-- Lista todos os clientes com e-mail cadastrados.
CREATE PROCEDURE sp_ListarClientesComEmail
AS
BEGIN
    SELECT ClienteID, Nome, Email
    FROM Clientes
    WHERE Email IS NOT NULL
    ORDER BY Nome;
END;

EXEC sp_ListarClientesComEmail;

-- Lista todos os clientes com pedidos
CREATE OR ALTER PROCEDURE sp_SelecionarClientesComPedidos
AS
BEGIN
    SELECT c.ClienteID, c.Nome, p.PedidoID, p.DataPedido
    FROM Clientes c
    INNER JOIN Pedidos p ON c.ClienteID = p.ClienteID;
END;
GO

EXEC sp_SelecionarClientesComPedidos;

-- Insere um novo produto em uma categoria existente.
CREATE PROCEDURE sp_InserirNovoProduto
    @Nome NVARCHAR(100),
    @Preco DECIMAL(10,2),
    @CategoriaID INT
AS
BEGIN
    INSERT INTO Produtos (Nome, Preco, CategoriaID)
    VALUES (@Nome, @Preco, @CategoriaID);
END;

EXEC sp_InserirNovoProduto
    @Nome = 'Camiseta Polo',
    @Preco = 79.90,
    @CategoriaID = 2;

-- Atualizar preço de um produto
CREATE OR ALTER PROCEDURE sp_AtualizarPrecoProduto
    @ProdutoID INT,
    @NovoPreco DECIMAL(10,2)
AS
BEGIN
    UPDATE Produtos
    SET Preco = @NovoPreco
    WHERE ProdutoID = @ProdutoID;
END;
GO

-- Exemplo: atualizar o preço do ProdutoID = 1 para R$ 89.90
EXEC sp_AtualizarPrecoProduto @ProdutoID = 1, @NovoPreco = 89.90;

CREATE OR ALTER PROCEDURE sp_ExcluirPedidosAntigos
    @DataLimite DATE
AS
BEGIN
    DELETE FROM Pagamentos
    WHERE PedidoID IN (
        SELECT PedidoID FROM Pedidos WHERE DataPedido < @DataLimite
    );

    DELETE FROM ItensPedido
    WHERE PedidoID IN (
        SELECT PedidoID FROM Pedidos WHERE DataPedido < @DataLimite
    );

    DELETE FROM Pedidos
    WHERE DataPedido < @DataLimite;
END;
GO

-- Exemplo: excluir pedidos anteriores a 2024-01-01
EXEC sp_ExcluirPedidosAntigos @DataLimite = '2024-01-01';


/* Se existir pedido para o cliente no dia atual, atualiza a filial.
Senão, insere um novo pedido.
Também permite deletar um pedido de cliente por ID (opcional). */

CREATE PROCEDURE sp_GerenciarPedidoCliente
    @ClienteID INT,
    @FuncionarioID INT,
    @FilialID INT,
    @ExcluirPedidoID INT = NULL  -- se informado, realiza DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- DELETE (opcional)
    IF @ExcluirPedidoID IS NOT NULL
    BEGIN
        DELETE FROM Pedidos
        WHERE PedidoID = @ExcluirPedidoID AND ClienteID = @ClienteID;
    END;

    -- Verifica se já há pedido hoje
    IF EXISTS (
        SELECT 1
        FROM Pedidos
        WHERE ClienteID = @ClienteID AND CAST(DataPedido AS DATE) = CAST(GETDATE() AS DATE)
    )
    BEGIN
        -- Atualiza filial do pedido atual
        UPDATE Pedidos
        SET FilialID = @FilialID
        WHERE ClienteID = @ClienteID AND CAST(DataPedido AS DATE) = CAST(GETDATE() AS DATE);
    END
    ELSE
    BEGIN
        -- Insere novo pedido
        INSERT INTO Pedidos (ClienteID, FuncionarioID, FilialID)
        VALUES (@ClienteID, @FuncionarioID, @FilialID);
    END;

    -- Retorna pedidos atuais do cliente
    SELECT PedidoID, DataPedido, FilialID
    FROM Pedidos
    WHERE ClienteID = @ClienteID
    ORDER BY DataPedido DESC;
END;

/* 
Cenário 1
Inserir ou atualizar um pedido (sem excluir)
Se você não informar o parâmetro @ExcluirPedidoID, a procedure irá:

Verificar se já existe um pedido para hoje:
Se sim, atualiza a filial.
Se não, insere um novo pedido.
*/

EXEC sp_GerenciarPedidoCliente
    @ClienteID = 3,
    @FuncionarioID = 2,
    @FilialID = 1;

/* Cenário 2
Excluir um pedido existente
Se você informar o parâmetro @ExcluirPedidoID, a procedure irá:

Excluir o pedido com o ID informado, desde que pertença ao cliente informado.
*/

EXEC sp_GerenciarPedidoCliente
    @ClienteID = 3,
    @FuncionarioID = 2,
    @FilialID = 1,
    @ExcluirPedidoID = 10;


