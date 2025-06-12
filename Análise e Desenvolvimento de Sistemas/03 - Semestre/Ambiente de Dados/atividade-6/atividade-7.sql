use Exercicios;
start transaction;

-- 1°questão
select usuario.Nome, contas.Descricao 'Conta', sum(movimentacao.Valor) as 'Valor total' 
FROM usuario, contas, movimentacao 
group by Nome, month(DataMovimentacao), conta 
order by Conta;

-- 2°questão


-- 3°questão


-- 4°questão


-- 5°questão

