--1) Insira uma coluna na tabela sales.customers com a idade do cliente
alter table sales.customers --altera a tabela e add adiciona a coluna diferente de insert into que adiciona dados
add customer_age int

select * from sales.customers limit 10  --para verificar se a coluna foi inserida enrtetanto tudo null

update sales.customers  --atualiza a tabela criada anteriormente e utilizando a função que foi criada
set customer_age = datediff('years', birth_date, current_date) --datediff em ano e quero que seja a diferença entre birth_date e a data atual
where true --atualiza todas as linhas


-- 2) Altere o tipo da coluna customer_age de inteiro para varchar
alter table sales.customers
alter column customer_age type varchar

select customer_age from sales.customers limit 10

-- 3) Renomeie o nome da coluna "customer_age" para "age"
alter table sales.customers
rename column customer_age to age

select age from sales.customers limit 10

-- 4) Delete a coluna "age"
alter table sales.customers
drop column age

select age from sales.customers limit 10

