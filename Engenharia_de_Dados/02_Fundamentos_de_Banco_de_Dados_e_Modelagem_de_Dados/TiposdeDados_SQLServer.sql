-- Tabela de Tipos de Dados do SQL Server
CREATE TABLE TiposDadosSQLServer (
    Categoria VARCHAR(50),
    Tipo VARCHAR(50),
    Tamanho VARCHAR(30),
    Descricao VARCHAR(255)
);

-- Inserções de exemplos de tipos numéricos
INSERT INTO TiposDadosSQLServer (Categoria, Tipo, Tamanho, Descricao) VALUES
('Numérico', 'INT', '4 bytes', 'Inteiro de -2.147.483.648 a 2.147.483.647'),
('Numérico', 'BIGINT', '8 bytes', 'Inteiro grande'),
('Numérico', 'SMALLINT', '2 bytes', 'Inteiro pequeno'),
('Numérico', 'TINYINT', '1 byte', 'Inteiro de 0 a 255'),
('Numérico', 'DECIMAL(p,s)', 'Variável', 'Número decimal com precisão definida'),
('Numérico', 'NUMERIC(p,s)', 'Variável', 'Igual ao DECIMAL'),
('Numérico', 'FLOAT', '8 bytes', 'Número de ponto flutuante (alta precisão)'),
('Numérico', 'REAL', '4 bytes', 'Número de ponto flutuante (menor precisão)');

-- Inserções de tipos de data/hora
INSERT INTO TiposDadosSQLServer (Categoria, Tipo, Tamanho, Descricao) VALUES
('Data/Hora', 'DATE', '-', 'Somente a data (aaaa-mm-dd)'),
('Data/Hora', 'DATETIME', '-', 'Data e hora até milissegundos'),
('Data/Hora', 'DATETIME2', '-', 'Data e hora com precisão ajustável'),
('Data/Hora', 'SMALLDATETIME', '-', 'Data e hora com menos precisão'),
('Data/Hora', 'TIME', '-', 'Somente hora');

-- Inserções de tipos de texto
INSERT INTO TiposDadosSQLServer (Categoria, Tipo, Tamanho, Descricao) VALUES
('Texto', 'CHAR(n)', 'Fixo', 'Texto com tamanho fixo'),
('Texto', 'VARCHAR(n)', 'Variável', 'Texto com tamanho variável'),
('Texto', 'VARCHAR(MAX)', 'Até 2GB', 'Texto longo'),
('Texto', 'TEXT', 'Depreciado', 'Use VARCHAR(MAX) no lugar'),
('Texto', 'NCHAR(n)', 'Unicode', 'Texto Unicode com tamanho fixo'),
('Texto', 'NVARCHAR(n)', 'Unicode', 'Texto Unicode com tamanho variável');

-- Inserções de tipos lógicos
INSERT INTO TiposDadosSQLServer (Categoria, Tipo, Tamanho, Descricao) VALUES
('Lógico', 'BIT', '-', 'Booleano (0 ou 1)');

-- Inserções de tipos identificadores
INSERT INTO TiposDadosSQLServer (Categoria, Tipo, Tamanho, Descricao) VALUES
('Identificador', 'UNIQUEIDENTIFIER', '-', 'Identificador global único (GUID)');
