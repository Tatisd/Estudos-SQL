-- 1)Crie uma função chamada DATEDIFF para calcular a diferença entre duas datas em dias, semanas, meses, anos
--continuação do datediff

select datediff('weeks', '2018-06-01', current_date)
--criando a função para atender o datediff
create function datediff(unidade varchar, data_inicial date, data_final date) --criar, dar nome a função e definir variáveis de entrada
returns integer		--variáveis de saída													      
language sql		--informar a linguagem que essa função deve ser lida
as           --escrever o script da função entre $$
$$               
	select
		case
			when unidade in ('d', 'day', 'days') then (data_final - data_inicial) --d, day, ou days é o que achamos que o usuário poderá escrever referente a dia
			when unidade in ('w', 'week', 'weeks') then (data_final - data_inicial)/7
			when unidade in ('m', 'month', 'months') then (data_final - data_inicial)/30
			when unidade in ('y', 'year', 'years') then (data_final - data_inicial)/365
			end as diferenca
$$

select datediff('days', '2021-02-04', current_date)

--2) Delete a função DATEDIFF criada no exercício anterior

drop function datediff


