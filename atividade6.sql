CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria (
	id bigint auto_increment,
	cliente varchar(255),
    idade int,
    endereco varchar(255),
	
	primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_curso(
	id bigint auto_increment,
	item varchar(255),
    material int,
    preco int,
	categoria_id bigint,

	primary key(id),
	foreign key(categoria_id) references tb_categoria (id)
);

SELECT * FROM tb_curso;

INSERT INTO tb_categoria(cliente, idade, endereco) VALUES ("Ana", 30, "Rua do sabão, 99");
INSERT INTO tb_categoria(cliente, idade, endereco) VALUES ("Joana", 18, "Avenida linda, 2");
INSERT INTO tb_categoria(cliente, idade, endereco) VALUES ("Lucas", 60, "Rua Saboia, 3, apto 1");
INSERT INTO tb_categoria(cliente, idade, endereco) VALUES ("Adriano", 80, "Rua das estrelas, 101");
INSERT INTO tb_categoria(cliente, idade, endereco) VALUES ("Rita", 23, "Travessa das flores, 4, apto 12");

INSERT INTO tb_curso(item, material, preco, categoria_id) VALUES ("HTML", 100, 1200, 1);
INSERT INTO tb_curso(item, material, preco, categoria_id) VALUES ("Python", 100, 800, 2);
INSERT INTO tb_curso(item, material, preco, categoria_id) VALUES ("Java", 100, 500, 3);
INSERT INTO tb_curso(item, material, preco, categoria_id) VALUES ("Excel", 100, 50, 4);
INSERT INTO tb_curso(item, material, preco, categoria_id) VALUES ("Java", 100, 500, 5);


SELECT * FROM tb_curso WHERE preco > 50;

SELECT * FROM tb_curso WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_curso WHERE item LIKE "%j%";

SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_categoria.id = tb_curso.id;

SELECT item FROM tb_curso;