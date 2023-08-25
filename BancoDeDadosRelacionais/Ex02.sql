CREATE DATABASE db_pizza_legal;
USE db_pizza_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_pizza(
id bigint auto_increment,
nome varchar(255) not null,
descrição varchar(255) not null,
preco float not null,
primary key(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
    ("Calabresa", "Uma clássica combinação de calabresa defumada e queijo derretido."),
    ("Margherita", "Uma homenagem à rainha da Itália, com tomates, mozzarella e manjericão fresco."),
    ("Quatro Queijos", "Uma explosão de sabores com uma mistura de queijos selecionados."),
    ("Frango com Catupiry", "A cremosidade do catupiry combinada com frango desfiado."),
    ("Pepperoni", "A pedida certa para quem gosta do sabor picante do pepperoni.");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizza (nome, descrição, preco) VALUES
    ("Pizza Calabresa", "Calabresa defumada, queijo derretido e molho de tomate.", 50.00),
    ("Pizza Margherita", "Tomates frescos, mozzarella e manjericão.", 200.00),
    ("Pizza Quatro Queijos", "Combinação de queijo cheddar, mozzarella, parmesão e gorgonzola.", 30.50),
    ("Pizza Frango Catupiry", "Frango desfiado, catupiry e temperos especiais.", 75.50),
    ("Pizza Pepperoni", "Pepperoni fatiado e queijo derretido.", 60.00),
    ("Pizza Vegana", "Legumes frescos e queijo vegano.", 99.00),
    ("Pizza Doce de Chocolate", "Chocolate derretido e coberturas doces.", 46.00),
    ("Pizza Mediterrânea", "Azeitonas, tomate seco e queijo feta.", 26.00);
    
SELECT * FROM tb_pizza;

ALTER TABLE tb_pizza ADD categoria_id bigint;
ALTER TABLE tb_pizza ADD CONSTRAINT fk_pizza_categoria FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id);

UPDATE tb_pizza SET categoria_id=1 WHERE id=1;
UPDATE tb_pizza SET categoria_id=2 WHERE id=2;
UPDATE tb_pizza SET categoria_id=3 WHERE id=3;
UPDATE tb_pizza SET categoria_id=4 WHERE id=4;
UPDATE tb_pizza SET categoria_id=5 WHERE id=5;
UPDATE tb_pizza SET categoria_id=5 WHERE id=6;
UPDATE tb_pizza SET categoria_id=5 WHERE id=7;

SELECT nome, preco FROM tb_pizza WHERE preco > 45;

SELECT nome, preco FROM tb_pizza WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizza WHERE nome LIKE "%m%";

SELECT tb_pizza.nome, tb_pizza.preco, tb_categorias.nome FROM tb_pizza INNER JOIN tb_categorias ON tb_pizza.categoria_id = tb_categorias.id;

SELECT tb_pizza.nome, tb_pizza.preco, tb_categorias.nome FROM tb_pizza INNER JOIN tb_categorias ON tb_pizza.categoria_id = tb_categorias.id WHERE tb_categorias.nome = "Pepperoni";
