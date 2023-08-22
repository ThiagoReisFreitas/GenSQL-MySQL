CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nomeProduto varchar(255) not null,
categoria varchar(255) not null,
estoque int,
preco decimal(6,2) not null,
primary key(id)
);

INSERT INTO tb_produtos(nomeProduto, categoria, estoque, preco) values ("Samsung Book", "Notebook", 7, 1829);
INSERT INTO tb_produtos(nomeProduto, categoria, estoque, preco) values ("Samsung Galaxy", "Smartphone", 10, 999);
INSERT INTO tb_produtos(nomeProduto, categoria, estoque, preco) values ("Nada Pode Me Ferir", "Livro", 40, 49.92);
INSERT INTO tb_produtos(nomeProduto, categoria, estoque, preco) values ("G7 Macaron", "Console", 3, 186);
INSERT INTO tb_produtos(nomeProduto, categoria, estoque, preco) values ("Porta Moeda", "Acessorio", 10, 4.87);
INSERT INTO tb_produtos(nomeProduto, categoria, estoque, preco) values ("Strength lmp 5ATM", "Smartwatch", 4, 389.90);
INSERT INTO tb_produtos(nomeProduto, categoria, estoque, preco) values ("Air Fryer", "Fritadeira", 47, 439.81);
INSERT INTO tb_produtos(nomeProduto, categoria, estoque, preco) values ("Focus One", "Fone Bluetooth", 60, 193.41);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco < 500;

SELECT * FROM tb_produtos WHERE preco > 500;

UPDATE tb_produtos SET preco = 500 WHERE id=6;



