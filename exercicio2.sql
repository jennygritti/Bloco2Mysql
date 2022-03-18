create database db_ecommerce;

use db_ecommerce;

 create table tb_produtos(
	id bigint auto_increment,
    item varchar(50),
    preco int,
    peso int,
    estoque int,
    desconto int,
    
    primary key(id)
);

select * from tb_produtos;

insert into tb_produtos(item, preco, peso, estoque, desconto) values ("Jaqueta", 600, 1000, 5 ,0);
insert into tb_produtos(item, preco, peso, estoque, desconto) values ("vestido", 100, 800, 2 ,0);

select * from tb_produtos where preco < 500;
select * from tb_produtos where preco >= 500;