/*
Criar índices non-clustered é uma das maneiras de otimizar consultas no SQL Server, 
pois eles permitem o acesso rápido aos dados sem alterar a estrutura da tabela principal. 
Quando você inclui colunas no índice usando a opção INCLUDE, as colunas são armazenadas no próprio índice, 
melhorando a performance de leitura e evitando a necessidade de fazer leituras adicionais na tabela.
*/

CREATE NONCLUSTERED INDEX IDX_Clientes_Nome
ON Clientes (Nome);

/*
Entendendo o uso do índice:
Este índice vai melhorar a performance das consultas que filtram ou ordenam pela coluna Nome da tabela Clientes. 
Quando fazemos uma busca por nome, o SQL Server pode usar o índice para localizar os dados mais rapidamente, 
sem precisar fazer um table scan.
*/

--  Criar um índice para buscas rápidas por ClienteID e incluir colunas adicionais usadas frequentemente nas consultas, como DataPedido.
CREATE NONCLUSTERED INDEX IDX_Pedidos_ClienteID
ON Pedidos (ClienteID)
INCLUDE (DataPedido, FuncionarioID);

/* Entendendo o uso do índice:
ClienteID é a coluna usada para filtrar os pedidos, portanto, o índice é criado sobre ela.
INCLUDE adiciona DataPedido e FuncionarioID diretamente ao índice, o que significa que o SQL Server pode retornar os dados 
necessários diretamente do índice sem precisar acessar a tabela. Isso é útil em consultas que selecionam essas colunas frequentemente
*/
SELECT PedidoID, DataPedido, FuncionarioID
FROM Pedidos
WHERE ClienteID = @ClienteID;

--  Criar um índice para buscas rápidas por CategoriaID e incluir a coluna Preco, que é frequentemente utilizada em consultas.
CREATE NONCLUSTERED INDEX IDX_Produtos_CategoriaID
ON Produtos (CategoriaID)
INCLUDE (Preco);

/*
Entendendo o uso do índice: 
CategoriaID é a chave de pesquisa. Ao criar um índice sobre ela, as consultas que filtram produtos por categoria serão mais rápidas.
INCLUDE (Preco) adiciona o valor do preço diretamente no índice, permitindo que as consultas que buscam os produtos 
por categoria e preço (sem precisar de outras colunas) sejam resolvidas diretamente no índice, sem acessar a tabela inteira.
*/
SELECT ProdutoID, Nome, Preco
FROM Produtos
WHERE CategoriaID = @CategoriaID;

-- Criar um índice composto para melhorar a performance de buscas por PedidoID e ProdutoID.
CREATE NONCLUSTERED INDEX IDX_ItensPedido_PedidoID_ProdutoID
ON ItensPedido (PedidoID, ProdutoID)
INCLUDE (Quantidade, PrecoUnitario);

/* 
Entendendo o uso do índice:
O índice é composto pelas colunas PedidoID e ProdutoID. Isso melhora a performance de consultas que filtram ou fazem joins usando essas duas colunas.
INCLUDE (Quantidade, PrecoUnitario) coloca as colunas Quantidade e PrecoUnitario diretamente no índice. Isso evita uma leitura adicional da tabela 
quando consultamos essas colunas, por exemplo, em consultas que retornam itens de um pedido.
*/

SELECT ProdutoID, Quantidade, PrecoUnitario
FROM ItensPedido
WHERE PedidoID = @PedidoID AND ProdutoID = @ProdutoID;

-- O que eu não posso esquecer
/*
INCLUDE é útil quando as colunas incluídas são frequentemente usadas nas consultas, mas não são parte da cláusula de filtragem (WHERE) 
ou ordenação (ORDER BY). Isso evita a necessidade de buscar dados adicionais na tabela, melhorando o desempenho.

Índices Compostos são úteis quando você tem consultas que frequentemente filtram por mais de uma coluna. 
Um índice composto pode ser mais eficiente do que múltiplos índices simples.

A escolha de incluir colunas em um índice deve ser feita com base nas consultas mais frequentes. 
A inclusão de muitas colunas pode tornar o índice mais pesado e impactar a performance de inserções, atualizações e exclusões.
*/