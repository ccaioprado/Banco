/** 
	Infox
*/







create database dbinfox;

use dbinfox;

create table usuarios(
id int primary key auto_increment,
usuario varchar(50) not null,
login varchar(10) not null unique,
senha varchar(10)
);

describe usuarios;

insert into usuarios(usuario, login, senha)
values('Caio', 'Admin','1234');

select * from usuarios;

-- Armazenando um campo com criptografia 
insert into usuarios (usuario, login, senha)
values('Gustavo','gustavow',md5('12345'));

insert into usuarios (usuario, login, senha)
values('Higor','higor@gmail.com',md5('54321'));

insert into usuarios (usuario, login, senha)
values('Lucas','lucas@gmail.com',md5('44455'));

insert into usuarios (usuario, login, senha)
values('Conceição','conceicao@gmail.com',md5('657890'));

insert into usuarios (usuario, login, senha)
values('Luis','luis@gmail.com',md5('33231'));

alter table usuarios modify column senha varchar(250);

alter table usuarios modify column login varchar(250);


-- Tabela de clientes (clientes da assistência técnica)
create table clientes(
idcli int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null
);

describe clientes;

-- Tabela de ordem de serviços
create table tbOs(
os int primary key auto_increment, 
equipamento varchar (250) not null,
defeito varchar (250) not null,
dataOs timestamp default current_timestamp,
statusOs varchar (50) not null,
valor decimal (10,2) not null,
idcli int not null,
foreign key(idcli) references clientes (idcli)
);

insert into clientes (nome,fone) values('Kelly Cristina','31256-2222');
insert into clientes (nome,fone) values('José de Assis','91234-1111');

insert into tbOs(equipamento,defeito,statusOs,valor,idcli)
values('Notebook Lenovo modelo','Não liga','Orçamento',80,1);

insert into tbOs(equipamento,defeito,statusOs,valor,idcli)
values('PC Positivo','Formatação do Windows','Aprovado',80,2);

select * from tbOs;

select * from clientes;


