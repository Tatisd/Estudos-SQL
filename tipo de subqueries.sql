--1) Informe qual é o veículo mais barato da tabela products
select *
from sales.products
where price = (select min(price) from sales.products) --min(price) = preço minimo pou seja, menor valor


-- 2) Calcule a idade média dos clientes por status profissional
with alguma_tabela as (
select --calculo da idade
	professional_status,
	(current_date - birth_date)/365 as idade --não temos a idade dos clientes somente a data de nascimento
from sales.customers
)
select
	professional_status,
	avg(idade) as idade_media
from alguma_tabela
group by professional_status


-- 3) Calcule a média de idades dos clientes por status profissional
select
	professional_status,
	avg(idade) as idade_media
from (
		select
			professional_status,
			(current_date - birth_date)/365 as idade
		from sales.customers
	 ) as alguma_tabela
group by professional_status


-- 4) Na tabela sales.funnel crie uma coluna que informe o nº de visitas acumuladas que a loja visitada recebeu até o momento

select
	fun.visit_id,
	fun.visit_page_date,
	sto.store_name,
	(
		select count(*)
		from sales.funnel as fun2
		where fun2.visit_page_date <= fun.visit_page_date
			and fun2.store_id = fun.store_id
	) as visitas_acumuladas
from sales.funnel as fun
left join sales.stores as sto
	on fun.store_id = sto.store_id
order by sto.store_name, fun.visit_page_date


