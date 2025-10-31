use Exercicios;
start transaction;

-- 1°questão
select * from Usuario where day(DataNascimento) = 29 and  month(DataNascimento) = 3;

-- 2°questão
select Nome, datediff(curdate(), DataNascimento) as 'Dias de Vida' from Usuario;

-- 3°questão
select Usuario.Nome, Contas.* from Usuario join Contas on idUsuario = Usuario_idUsuario;

-- 4°questão
select sum(Valor) as 'Soma dos Valores' from movimentacao where year(DataMovimentacao) = 2019;

-- 5°questão
select Usuario.idUsuario, Usuario.Nome, sum(movimentacao.Valor) as 'Soma dos valores'
from Usuario 
join Contas on idUsuario = Usuario_idUsuario
join movimentacao on idConta = Contas_idConta
where Usuario.idUsuario = 1;

-- 6°quesstão
select month(DataMovimentacao) as 'Mês Movimentação',
	avg(Valor) as 'Média dos valores', 
	max(Valor) as 'Maior valor', 
	min(Valor) as 'Menor valor'
from movimentacao
where year(DataMovimentacao) = 2019
group by month(DataMovimentacao);

-- 7°questão
select Contas.Descricao, movimentacao.* 
from movimentacao join Contas on Contas_idConta = idConta;

-- 8°questão
select * from Usuario where Bairro = 'Fortaleza';