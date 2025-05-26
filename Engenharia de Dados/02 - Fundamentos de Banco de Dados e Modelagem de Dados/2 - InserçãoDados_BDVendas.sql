-- Inserções para Clientes
INSERT INTO Clientes (Nome, Email, Telefone) VALUES
('João Silva', 'joao@email.com', '11999990001'),
('Maria Souza', 'maria@email.com', '11999990002'),
('Carlos Oliveira', 'carlos@email.com', '11999990003'),
('Ana Costa', 'ana@email.com', '11999990004'),
('Ricardo Lima', 'ricardo@email.com', '11999990005'),
('Fernanda Torres', 'fernanda@email.com', '11999990006'),
('Lucas Mendes', 'lucas@email.com', '11999990007'),
('Patrícia Gomes', 'patricia@email.com', '11999990008'),
('Bruno Carvalho', 'bruno@email.com', '11999990009'),
('Juliana Rocha', 'juliana@email.com', '11999990010');

-- Inserções para EndereçosClientes
INSERT INTO EnderecosClientes (ClienteID, Rua, Cidade, Estado, CEP) VALUES
(1, 'Rua A, 100', 'São Paulo', 'SP', '01000-000'),
(2, 'Rua B, 200', 'Campinas', 'SP', '13000-000'),
(3, 'Rua C, 300', 'Rio de Janeiro', 'RJ', '20000-000'),
(4, 'Rua D, 400', 'Belo Horizonte', 'MG', '30000-000'),
(5, 'Rua E, 500', 'Curitiba', 'PR', '80000-000'),
(6, 'Rua F, 600', 'Porto Alegre', 'RS', '90000-000'),
(7, 'Rua G, 700', 'Recife', 'PE', '50000-000'),
(8, 'Rua H, 800', 'Salvador', 'BA', '40000-000'),
(9, 'Rua I, 900', 'Fortaleza', 'CE', '60000-000'),
(10, 'Rua J, 1000', 'Brasília', 'DF', '70000-000');

-- Inserções para Funcionários
INSERT INTO Funcionarios (Nome, Cargo, Email, DataContratacao) VALUES
('Amanda Teixeira', 'Vendedora', 'amanda@email.com', CONVERT(DATE, '10/01/2022', 103)),
('Pedro Martins', 'Gerente', 'pedro@email.com', CONVERT(DATE, '23/05/2021', 103)),
('Joana Figueiredo', 'Analista', 'joana@email.com', CONVERT(DATE, '15/02/2023', 103)),
('Thiago Lopes', 'Vendedor', 'thiago@email.com', CONVERT(DATE, '09/08/2022', 103)),
('Camila Dias', 'Assistente', 'camila@email.com', CONVERT(DATE, '20/01/2023', 103)),
('Rafael Almeida', 'Supervisor', 'rafael@email.com', CONVERT(DATE, '05/11/2020', 103)),
('Larissa Souza', 'Vendedora', 'larissa@email.com', CONVERT(DATE, '14/07/2021', 103)),
('Eduardo Ferreira', 'Gerente', 'eduardo@email.com', CONVERT(DATE, '30/09/2019', 103)),
('Renata Barros', 'Analista', 'renata@email.com', CONVERT(DATE, '10/03/2023', 103)),
('Daniel Castro', 'Vendedor', 'daniel@email.com', CONVERT(DATE, '01/12/2022', 103));

-- Inserções para Filiais
INSERT INTO Filiais (Nome, Cidade, Estado) VALUES
('Matriz SP', 'São Paulo', 'SP'),
('Unidade RJ', 'Rio de Janeiro', 'RJ'),
('Filial BH', 'Belo Horizonte', 'MG'),
('Loja POA', 'Porto Alegre', 'RS'),
('Centro Salvador', 'Salvador', 'BA'),
('Ponto Recife', 'Recife', 'PE'),
('Sucursal Fortaleza', 'Fortaleza', 'CE'),
('Estação Curitiba', 'Curitiba', 'PR'),
('Setor Brasília', 'Brasília', 'DF'),
('Filial Campinas', 'Campinas', 'SP');

-- Inserções para CategoriasProduto
INSERT INTO CategoriasProduto (NomeCategoria) VALUES
('Eletrônicos'),
('Vestuário'),
('Alimentos'),
('Móveis'),
('Livros'),
('Brinquedos'),
('Informática'),
('Cosméticos'),
('Esportes'),
('Ferramentas');

-- Inserções para Produtos
INSERT INTO Produtos (Nome, Preco, CategoriaID) VALUES
('Notebook Lenovo', 3500.00, 1),
('Camisa Polo', 80.00, 2),
('Chocolate', 5.50, 3),
('Sofá 3 lugares', 1500.00, 4),
('Livro SQL Server', 120.00, 5),
('Boneca Barbie', 99.90, 6),
('Mouse Gamer', 150.00, 7),
('Shampoo Anticaspa', 25.00, 8),
('Bola de Futebol', 60.00, 9),
('Chave de Fenda', 18.00, 10);

-- Inserções para Estoque
INSERT INTO Estoque (ProdutoID, FilialID, Quantidade) VALUES
(1, 1, 15),
(2, 2, 30),
(3, 3, 50),
(4, 4, 10),
(5, 5, 20),
(6, 6, 25),
(7, 7, 40),
(8, 8, 35),
(9, 9, 60),
(10, 10, 12);

-- Inserções para Pedidos
INSERT INTO Pedidos (ClienteID, FuncionarioID, DataPedido, FilialID) VALUES
(1, 1, CONVERT(DATE, '10/01/2024', 103), 1),
(2, 2, CONVERT(DATE, '11/01/2024', 103), 2),
(3, 3, CONVERT(DATE, '12/01/2024', 103), 3),
(4, 4, CONVERT(DATE, '13/01/2024', 103), 4),
(5, 5, CONVERT(DATE, '14/01/2024', 103), 5),
(6, 6, CONVERT(DATE, '15/01/2024', 103), 6),
(7, 7, CONVERT(DATE, '16/01/2024', 103), 7),
(8, 8, CONVERT(DATE, '17/01/2024', 103), 8),
(9, 9, CONVERT(DATE, '18/01/2024', 103), 9),
(10, 10, CONVERT(DATE, '19/01/2024', 103), 10);

-- Inserções para ItensPedido
INSERT INTO ItensPedido (PedidoID, ProdutoID, Quantidade, PrecoUnitario) VALUES
(1, 1, 1, 3500.00),
(2, 2, 2, 80.00),
(3, 3, 5, 5.50),
(4, 4, 1, 1500.00),
(5, 5, 1, 120.00),
(6, 6, 3, 99.90),
(7, 7, 1, 150.00),
(8, 8, 2, 25.00),
(9, 9, 1, 60.00),
(10, 10, 2, 18.00);

-- Inserções para Pagamentos
INSERT INTO Pagamentos (PedidoID, ValorPago, MetodoPagamento, DataPagamento) VALUES
(1, 3500.00, 'Cartão de Crédito', CONVERT(DATE, '10/01/2024', 103)),
(2, 160.00, 'Boleto', CONVERT(DATE, '11/01/2024', 103)),
(3, 27.50, 'Pix', CONVERT(DATE, '12/01/2024', 103)),
(4, 1500.00, 'Cartão de Débito', CONVERT(DATE, '13/01/2024', 103)),
(5, 120.00, 'Pix', CONVERT(DATE, '14/01/2024', 103)),
(6, 299.70, 'Cartão de Crédito', CONVERT(DATE, '15/01/2024', 103)),
(7, 150.00, 'Boleto', CONVERT(DATE, '16/01/2024', 103)),
(8, 50.00, 'Pix', CONVERT(DATE, '17/01/2024', 103)),
(9, 60.00, 'Dinheiro', CONVERT(DATE, '18/01/2024', 103)),
(10, 36.00, 'Cartão de Débito', CONVERT(DATE, '19/01/2024', 103));
