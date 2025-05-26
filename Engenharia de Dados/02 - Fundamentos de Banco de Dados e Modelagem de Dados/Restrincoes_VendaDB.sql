
-- Adicionando chave primária nas tabelas


-- ALTERAÇÕES COM CHECK CONSTRAINTS

-- Produtos: Preço positivo
ALTER TABLE Produtos
ADD CONSTRAINT CHK_Produtos_Preco_Positive CHECK (Preco > 0);

-- Estoque: Quantidade não negativa
ALTER TABLE Estoque
ADD CONSTRAINT CHK_Estoque_Quantidade_NaoNegativa CHECK (Quantidade >= 0);

-- ItensPedido: Quantidade e PreçoUnitario positivos
ALTER TABLE ItensPedido
ADD CONSTRAINT CHK_ItensPedido_Quantidade_Positive CHECK (Quantidade > 0),
    CONSTRAINT CHK_ItensPedido_PrecoUnitario_Positive CHECK (PrecoUnitario > 0);

-- Pagamentos: ValorPago positivo
ALTER TABLE Pagamentos
ADD CONSTRAINT CHK_Pagamentos_ValorPago_Positive CHECK (ValorPago > 0);
