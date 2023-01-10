-- 1) Corrija a query abaixo utilizando o operador ::
select '2021-10-01'::date - '2021-02-01'::date

--para transformar todos os dados de uma coluna em data utilizando o operador ::
select nome_coluna::date
from nome_tabela

--2) Corrija a query abaixo utilizando o operador ::
select '100'::numeric - '10'::numeric

-- 3) Corrija a query abaixo utilizando o operador ::
select replace(112122::text,'1','A')

-- 4) Corrija a query abaixo utilizando a função CAST
select cast('2021-10-01' as date) - cast('2021-02-01' as date)


