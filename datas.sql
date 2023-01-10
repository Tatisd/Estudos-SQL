-- 1) Calcule a data de hoje mais 10 unidades (dias, semanas, meses, horas)
select current_date + 10 --current_date seleciona a data atual. Colocando + 10 ele vai somar mais 10 dias automaticamente
select (current_date + interval '10 weeks')::date --interval da resultado com data e hora. Colocando ::date ele resulta somente a data
select (current_date + interval '10 months')::date
select current_date + interval '10 hours'

-- 2) Calcule quantas visitas ocorreram por mês no site da empresa usando trunc

--vai mostrar quantas visitas teve por data:
select visit_page_date, count(*)
from sales.funnel
group by visit_page_date
order by visit_page_date desc

select
	date_trunc('month', visit_page_date)::date as visit_page_month,
	count(*)
from sales.funnel
group by visit_page_month
order by visit_page_month desc

-- 3) Calcule qual é o dia da semana que mais recebe visitas ao site (extract)
select
	extract('dow' from visit_page_date) as dia_da_semana, --dow: day of week. Domingo é 0 assim por diante
	count(*)
from sales.funnel
group by dia_da_semana
order by dia_da_semana

-- 4) Calcule a diferença entre hoje e '2018-06-01', em dias, semanas, meses e anos.

select (current_date - '2018-06-01') --resultado será dado em dias
select (current_date - '2018-06-01')/7 --resultado em semanas (7 dias na semana)
select (current_date - '2018-06-01')/30 --resultado em meses (30 dias no mes)
select (current_date - '2018-06-01')/365 --resultado em anos (365 dias no ano)

select datediff('weeks', '2018-06-01', current_date) --usando o datediff eu especifico em qual unidade eu quero a
													 --resposta mas tem que criar uma função


