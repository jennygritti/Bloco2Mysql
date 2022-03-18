create database db_escola;

use db_escola;

 create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(50),
    idade int,
    genero varchar(10),
    anoLetivo varchar(10),
    notaPort int,
    
    primary key(id)
);

select * from tb_estudantes;

insert into tb_estudantes(nome, idade, genero, anoLetivo, notaPort) values ("Jamile", 12, "Feminino", "Sétimo ano", 6);
insert into tb_estudantes(nome, idade, genero, anoLetivo, notaPort) values ("Bruno", 12, "Masculino", "Sétimo ano", 7);

select * from tb_estudantes where notaPort < 7;
select * from tb_estudantes where notaPort >= 7;