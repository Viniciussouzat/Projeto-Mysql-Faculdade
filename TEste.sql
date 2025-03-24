create database supermercado;
use supermercado;

create table bairro(
baicod int not null auto_increment primary key,
baidesc varchar(50) not null
);

insert into bairro(baicod,baidesc)
values (1, 'Centro'),  
(2, 'Jardim das Flores'),  
(3, 'Vila Nova'),  
(4, 'São José');

create table funcionario(
funcod int not null auto_increment primary key,
funcpf varchar (11) not null,
funtelefone varchar (20) not null,
funemail varchar (50) not null,
funnome varchar (100) not null
);

insert into funcionario(funcod,funcpf,funtelefone,funemail,funnome)
values 
('1', '12345678900', '(11) 91234-5678', 'joao.silva@email.com', 'João Silva'),  
( '2','98765432100', '(21) 97654-3210', 'maria.souza@email.com', 'Maria Souza'),  
( '3','45612378900', '(31) 99876-5432', 'carlos.oliveira@email.com', 'Carlos Oliveira'),  
( '4','78932145600', '(41) 96543-2109', 'ana.lima@email.com', 'Ana Lima');

create table cliente(
clicod int not null auto_increment primary key,
clinome varchar (100) not null,
clibaicod int not null,
foreign key (clibaicod) references bairro (baicod)
);

insert into cliente(clicod,clinome, clibaicod)
values (1, 'Carlos Andrade','1'),  
(2, 'Fernanda Lima', '2'),  
(3, 'João Pereira', '3'),  
(4, 'Mariana Souza', '4');


create table produto(
procod int not null auto_increment primary key,
prodesc varchar (50) not null,
provalor double not null,
prodtv date,
procatcod int not null,
foreign key(procatcod) references categoria(catcod)
);

insert into produto(procod, prodesc, provalor,prodtv, procatcod)
values (5, 'Notebook Dell', 4500.00, '2024-03-25','3'),  
(2, 'Smartphone Samsung', 2500.00, '2024-03-11','2'),  
(3, 'Monitor LG 24"', 1200.00, '2024-03-10','1'),  
(4, 'Teclado Mecânico', 350.00, '2024-03-15','3');

create table categoria (
catcod int not null auto_increment primary key,
catdesc varchar (30) not null
);

insert into categoria(catcod, catdesc) 
VALUES  
(1, 'Eletrônicos'),  
(2, 'Roupas'),  
(3, 'Alimentos'),  
(4, 'Móveis');

create table compra(
comcod int not null auto_increment primary key,
comdt date not null,
comqtd int not null,
procod int not null,
clicod int not null,
foreign key (procod) references produto (procod),
foreign key (clicod) references cliente(clicod)
);
insert into compra(comdt,comqtd,procod,clicod)
values('2025-04-13', 10, 2, 3),
('2025-04-10', 2, 1,2),
('2025-04-23', 4, 4,1),
('2025-04-25', 1, 3,4);

select*from compra;
select*from cliente;
select*from funcionario;
select*from produto;
select*from bairro;
select*from categoria;


