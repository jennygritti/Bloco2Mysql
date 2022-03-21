CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
	id bigint auto_increment,
	cliente varchar(255),
    endereco varchar(255),
	pagamento varchar(255),
	
	primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
	id bigint auto_increment,
	sabor varchar(255),
    quantidade int,
    preco int,
    tamanho varchar(255),
	categoria_id bigint,

	primary key(id),
	foreign key(categoria_id) references tb_categoria (id)
);

SELECT * FROM tb_pizza;

INSERT INTO tb_categoria(cliente, endereco, pagamento) VALUES ("Ana", "Rua do sabão, 99", "Cartao");
INSERT INTO tb_categoria(cliente, endereco, pagamento) VALUES ("Joana", "Avenida linda, 2", "Dinheiro");
INSERT INTO tb_categoria(cliente, endereco, pagamento) VALUES ("Lucas", "Rua Saboia, 3, apto 1", "Pix");
INSERT INTO tb_categoria(cliente, endereco, pagamento) VALUES ("Adriano", "Rua das estrelas, 101", "Cartao");
INSERT INTO tb_categoria(cliente, endereco, pagamento) VALUES ("Rita", "Travessa das flores, 4, apto 12", "Pix");

INSERT INTO tb_pizza(sabor, quantidade, preco, tamanho, categoria_id) VALUES ("Calabresa", 1, 25, "Normal",1);
INSERT INTO tb_pizza(sabor, quantidade, preco, tamanho, categoria_id) VALUES ("Frango com catupiry", 1, 18, "Pequena",2);
INSERT INTO tb_pizza(sabor, quantidade, preco, tamanho, categoria_id) VALUES ("Brocolis com queijo e Namorado", 2, 60, "Normal",3);
INSERT INTO tb_pizza(sabor, quantidade, preco, tamanho, categoria_id) VALUES ("Portuguesa e mussarela", 4, 140, "Normal",4);
INSERT INTO tb_pizza(sabor, quantidade, preco, tamanho, categoria_id) VALUES ("Mussarela", 1, 25, "Normal",5);

SELECT * FROM tb_pizza WHERE preco > 45;

SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;

SELECT * FROM tb_pizza WHERE sabor LIKE "%c%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id;

SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_pizza.categoria_id = tb_categoria.id WHERE tb_categoria.id = 3;
