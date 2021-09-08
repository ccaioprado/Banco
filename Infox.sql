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