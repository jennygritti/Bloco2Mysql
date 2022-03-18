create database db_rh;

use db_rh;

 create table tb_funcionaries(
	id bigint auto_increment,
    nome varchar(30),
    idade int,
    email varchar(50),
    salario int,
    funcao varchar (50),
    
    primary key(id)
);

select * from tb_funcionaries;

insert into tb_funcionaries(nome, idade, email, salario, funcao) values ("Joana", 27, "joana@gmail.com", 2000 ,"Dev Junior");
insert into tb_funcionaries(nome, idade, email, salario, funcao) values ("Simone", 20, "simone@gmail.com", 1500 ,"Trainee");

select * from tb_funcionaries where salario < 2000;
select * from tb_funcionaries where salario >= 2000;