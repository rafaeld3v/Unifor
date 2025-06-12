use Exercicios;
start transaction;

-- 1°questão
select u.Nome, m.Descricao, sum(m.Valor)
from movimentacao m
inner join contas c on m.idMovimentacao = c.idConta
inner join usuario u on c.idConta = u.idUsuario

-- 2°questão


-- 3°questão


-- 4°questão


-- 5°questão

