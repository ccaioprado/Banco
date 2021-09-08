-- Pesquisar banco de dados disponíveis
show databases;

-- Selecionar um banco de dados
use dbagenda;

-- Criando um banco de dados
create database dbagenda;

-- Criando uma tabela no banco de dados
create table contatos (
id int primary key auto_increment,
nome varchar (50) not null,
fone varchar (15) not null,
email varchar (50)
);

-- Verificar tabelas disponíveis no banco
show tables;

-- Comando usado para descrever a tabela 
describe contatos;

-- Comando usado para remover uma tabela
drop table contatos;

-- Comando utilizado para alterar o nome de um campo na tabela 
alter table contatos change nome contato varchar(50) not null;

-- Comando utilizado para adicionar um novo campo á tabela 
alter table contatos add column obs varchar(250);

-- Comando usado para adicionar um novo campo em um lugar específico
alter table contatos add column fone2 varchar(15) after fone;

-- Comando usado para modificar o tipo de dado e/ou validações do campo 
alter table contatos modify column fone2 varchar(20) not null after fone;
alter table contatos modify email varchar(100) unique;

-- Comando usado para apagar um campo da tabela 
alter table contatos drop column obs;

/*
CRUD(do inglês: Create Read Update Delete)
São quatro operações básicas que podem ser realizadas em banco de dados que usam o modelo relacional

CREATE(Inserção do registro(dados) na tabela)
READ(Pesquisa dos dados na(s) tabela(s))
UPDATE(Alteração em algum resgistro da tabela)
DELETE(Exclusão de um registro da tabela)

*/

/* CRUD CREATE (insert) */

/* CRUD READ (Select) 
Selecionar todos os registros da tabela*/
select * from contatos;

insert into contatos (nome,fone,email)
values ('Bill Gates','99999-1111','bill@email.com');

insert into contatos (nome,fone)
values ('Beatriz','99999-2222');

insert into contatos (nome,fone,email)
values ('Linus Torvalds','99999-3333','linux@email.com');

insert into contatos (nome,fone,email)
values('Ana Maria','99999-44444','ana@gmail.com');

insert into contatos (nome,fone,email)
values('Benzema','99999-55555','benzema@gmail.com');

insert into contatos (nome,fone,email)
values('Bruna','99999-66666','bruna@gmail.com');

insert into contatos (nome,fone)
values('Asap Rocky','99999-77777');

insert into contatos (nome,fone)
values('Travis Scott','99999-88888');

insert into contatos (nome,fone,email)
values('Leall','99999-99999','leall@gmail.com');

insert into contatos (nome,fone,email)
values('Roddy Ricch','11111-11111','roddy@gmail.com');

-- Selecionar todos os registros em ordem alfabetica(asc desc)
select * from contatos order by nome asc;

select * from contatos order by nome desc;

-- Selecionar um registro específico 
select * from contatos where nome='Ana Maria';

-- Selecionar campos específicos da tabela
select nome from contatos;

select nome, fone from contatos order by nome asc;

-- Filtrar nomes que começam com a letra b 
select * from contatos where nome like 'B%';

select * from contatos where nome='Benzema';

-- Modificando um registro específico da tabela 
update contatos set fone='91234-8090' where id=4;
update contatos set email='bia@gmail.com' where id=2;

-- Alterando todos os dados do registro 
update contatos set nome='Willian Gates', fone='32456-9000', email='bill@outlook.com' where id=1;

-- Excluindo um registro da tabela
delete from contatos where id=4;

update contatos set nome='Flacko', fone='31243-75676', email='flacko@gmail.com' where id=6;

delete from contatos where id=2;
