--1) Crie uma tabela chamada customers_age com o id e a idade dos clientes. Chame-a de temp_tables.customers_age

select
	customer_id,
	datediff('years', birth_date, current_date) idade_cliente
	into temp_tables.customers_age
from sales.customers

select *
from temp_tables.customers_age

-- 2) Crie uma tabela com a tradução dos status profissionais dos clientes. Chame-a de temp_tables.profissoes

select distinct professional_status
from sales.customers

create table temp_tables.profissoes (
	professional_status varchar,
	status_profissional varchar
)

insert into temp_tables.profissoes
(professional_status, status_profissional)

values
('freelancer', 'freelancer'),
('retired', 'aposentado(a)'),
('clt', 'clt'),
('self_employed', 'autônomo(a)'),
('other', 'outro'),
('businessman', 'empresário(a)'),
('civil_servant', 'funcionário público(a)'),
('student', 'estudante')

select * from temp_tables.profissoes

-- 3) Delete a tabela temp_tables.profissoes

drop table temp_tables.profissoes




