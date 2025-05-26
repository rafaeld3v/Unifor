
--- ###  **Boas Práticas para Inserção (`INSERT`)**

-- 1. **Especifique os nomes das colunas**:  
-Evite `INSERT INTO tabela VALUES (...)` — sempre declare os nomes das colunas para evitar erros se a estrutura mudar.

-- 2. **Use transações para múltiplos inserts**:  
   Para garantir consistência, encapsule conjuntos de inserções com `BEGIN TRANSACTION` e `COMMIT`.

-- 3. **Valide dados antes de inserir**:  
   Utilize `CHECK`, `NOT NULL`, e `DEFAULT` nas colunas e valide dados na aplicação ou com triggers.

-- 4. **Use `TRY...CATCH` para tratamento de erros**:
  
   BEGIN TRY
       INSERT INTO Clientes (Nome, Email, Telefone) VALUES ('Novo Nome', 'email@dominio.com', '11999990011');
   END TRY
   BEGIN CATCH
       PRINT 'Erro: ' + ERROR_MESSAGE();
   END CATCH

-- 5. **Evite duplicidade**:  
   Use restrições `UNIQUE` ou `EXISTS` para prevenir dados duplicados.

-- Adicionando uma restrição UNIQUE
ALTER TABLE Clientes
ADD CONSTRAINT UQ_Clientes_Email UNIQUE (Email);

-- Evitando duplicidade com EXISTS
IF NOT EXISTS (
    SELECT 1 FROM Clientes WHERE Email = 'novo@email.com'
)
BEGIN
    INSERT INTO Clientes (Nome, Email, Telefone)
    VALUES ('Novo Cliente', 'novo@email.com', '11988887777');
END
ELSE
BEGIN
    PRINT 'Cliente com este e-mail já existe.';
END;


-- ### **Boas Práticas para Atualização (`UPDATE`)**

-- 1. **Sempre use cláusula `WHERE` com cuidado**:  
   Falta de `WHERE` pode atualizar todos os registros acidentalmente.

-- 2. **Verifique o número de registros afetados**:
   
   UPDATE Produtos
   SET Preco = Preco * 1.10
   WHERE CategoriaID = 1;

   PRINT @@ROWCOUNT; -- mostra quantas linhas foram alteradas

-- 3. **Use `OUTPUT` para ver alterações**:
   
   UPDATE Produtos
   SET Preco = Preco * 1.10
   OUTPUT inserted.ProdutoID, inserted.Preco
   WHERE CategoriaID = 1;
   
-- 4. **Faça backup ou log das alterações críticas** com triggers ou tabelas de histórico.

-- 5. **Evite atualizações em massa sem testes em ambiente de homologação**.


-- ### **Boas Práticas para Exclusão (`DELETE`)**

-- 1. **Nunca use `DELETE` sem `WHERE` a menos que seja intencional**:
   
   DELETE FROM Pedidos WHERE PedidoID = 100;
   
-- 2. **Considere usar `SOFT DELETE`** com uma coluna como `Ativo BIT`:
   UPDATE Clientes SET Ativo = 0 WHERE ClienteID = 5;
   
-- 3. **Use transações em exclusões múltiplas**:
   
   COMMIT;
   
-- 4. **Verifique dependências com `FOREIGN KEY`** para evitar erros ou exclusões em cascata indesejadas.

-- 5. **Log de exclusão**: mantenha histórico em uma tabela separada ou em arquivos de log.
