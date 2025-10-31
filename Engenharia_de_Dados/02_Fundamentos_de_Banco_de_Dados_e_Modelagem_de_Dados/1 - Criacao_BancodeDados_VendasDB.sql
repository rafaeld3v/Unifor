-- Criação do Banco de Dados
CREATE DATABASE VendasDB;
GO

USE VendasDB;
GO

-- Criação da Sequence para ClienteID
CREATE SEQUENCE Seq_ClienteID
    START WITH 1
    INCREMENT BY 1;
GO

-- 1. Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY DEFAULT NEXT VALUE FOR Seq_ClienteID,
    Nome NVARCHAR(100),
    Email NVARCHAR(100),
    Telefone NVARCHAR(20)
);

-- 2. EndereçosClientes
CREATE TABLE EnderecosClientes (
    EnderecoID INT PRIMARY KEY IDENTITY(1,1),
    ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID),
    Rua NVARCHAR(100),
    Cidade NVARCHAR(50),
    Estado NVARCHAR(50),
    CEP NVARCHAR(15)
);

-- 3. Funcionários
CREATE TABLE Funcionarios (
    FuncionarioID INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100),
    Cargo NVARCHAR(50),
    Email NVARCHAR(100),
    DataContratacao DATE
);

-- 4. Filiais
CREATE TABLE Filiais (
    FilialID INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100),
    Cidade NVARCHAR(50),
    Estado NVARCHAR(50)
);

-- 5. CategoriasProduto
CREATE TABLE CategoriasProduto (
    CategoriaID INT PRIMARY KEY IDENTITY(1,1),
    NomeCategoria NVARCHAR(100)
);

-- 6. Produtos
CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100),
    Preco DECIMAL(10,2),
    CategoriaID INT FOREIGN KEY REFERENCES CategoriasProduto(CategoriaID)
);

-- 7. Estoque
CREATE TABLE Estoque (
    EstoqueID INT PRIMARY KEY IDENTITY(1,1),
    ProdutoID INT FOREIGN KEY REFERENCES Produtos(ProdutoID),
    FilialID INT FOREIGN KEY REFERENCES Filiais(FilialID),
    Quantidade INT
);

-- 8. Pedidos
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY IDENTITY(1,1),
    ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID),
    FuncionarioID INT FOREIGN KEY REFERENCES Funcionarios(FuncionarioID),
    DataPedido DATETIME DEFAULT GETDATE(),
    FilialID INT FOREIGN KEY REFERENCES Filiais(FilialID)
);

-- 9. ItensPedido
CREATE TABLE ItensPedido (
    ItemPedidoID INT PRIMARY KEY IDENTITY(1,1),
    PedidoID INT FOREIGN KEY REFERENCES Pedidos(PedidoID),
    ProdutoID INT FOREIGN KEY REFERENCES Produtos(ProdutoID),
    Quantidade INT,
    PrecoUnitario DECIMAL(10,2)
);

-- 10. Pagamentos
CREATE TABLE Pagamentos (
    PagamentoID INT PRIMARY KEY IDENTITY(1,1),
    PedidoID INT FOREIGN KEY REFERENCES Pedidos(PedidoID),
    ValorPago DECIMAL(10,2),
    MetodoPagamento NVARCHAR(50),
    DataPagamento DATETIME DEFAULT GETDATE()
);


