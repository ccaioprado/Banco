create database dbcarrinho;
create table carrinho(
id int primary key auto_increment,
produto varchar(50) not null,
quantidade int not null,
valor varchar(50) not null
);
use dbcarrinho;

show tables;

describe carrinho;

alter table carrinho modify produto varchar(100) not null; 

-- A linha abaixo modifica o tipo de dado de um campo
-- decimal(10,2) 10 digitos com duas casas decimais
alter table carrinho modify valor decimal(10,2) not null;

-- operações matemáticas
select sum(valor*quantidade) as total from carrinho;

insert into carrinho (produto,quantidade,valor)
values('Lápis',10,1);

insert into carrinho (produto,quantidade,valor)
values('Borracha',50,0.50);

insert into carrinho (produto,quantidade,valor)
values('Estojo',40,5);

insert into carrinho (produto,quantidade,valor)
values('Sufíte',100,0.25); 

insert into carrinho (produto,quantidade,valor)
values('Apontador',70,2);

insert into carrinho (produto,quantidade,valor)
values('Branquinho',5,1.25);

insert into carrinho (produto,quantidade,valor)
values('Lapiseira',25,3);

insert into carrinho (produto,quantidade,valor)
values('Cartolina',200,2.50);

insert into carrinho (produto,quantidade,valor)
values('Almaço',65,1.15);

insert into carrinho (produto,quantidade,valor)
values('Durex',77,5.25);

select sum(valor*quantidade) as total from carrinho;

select produto from carrinho order by produto asc;