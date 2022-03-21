CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
	id bigint auto_increment,
	cliente varchar(255),
    idade int,
    endereco varchar(255),
	
	primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id bigint auto_increment,
	item varchar(255),
    quantidade int,
    preco int,
	categoria_id bigint,

	primary key(id),
	foreign key(categoria_id) references tb_categoria (id)
);

SELECT * FROM tb_produto;

INSERT INTO tb_categoria(cliente, idade, endereco) VALUES ("Ana", 30, "Rua do sabão, 99");
INSERT INTO tb_categoria(cliente, idade, endereco) VALUES ("Joana", 18, "Avenida linda, 2");
INSERT INTO tb_categoria(cliente, idade, endereco) VALUES ("Lucas", 60, "Rua Saboia, 3, apto 1");
INSERT INTO tb_categoria(cliente, idade, endereco) VALUES ("Adriano", 80, "Rua das estrelas, 101");
INSERT INTO tb_categoria(cliente, idade, endereco) VALUES ("Rita", 23, "Travessa das flores, 4, apto 12");

INSERT INTO tb_produto(item, quantidade, preco, categoria_id) VALUES ("Desodorante", 1, 10, 1);
INSERT INTO tb_produto(item, quantidade, preco, categoria_id) VALUES ("Gilete", 1, 15, 2);
INSERT INTO tb_produto(item, quantidade, preco, categoria_id) VALUES ("Rémedio", 1, 120, 3);
INSERT INTO tb_produto(item, quantidade, preco, categoria_id) VALUES ("Fio dental", 2, 23, 4);
INSERT INTO tb_produto(item, quantidade, preco, categoria_id) VALUES ("Bala", 4, 18, 5);


SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE item LIKE "%b%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id;

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.categoria_id = tb_categoria.id WHERE tb_categoria.id = 2;
