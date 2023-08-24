CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
tipo varchar(255) not null,
primary key(id)
);

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
ataque int not null,
defesa int not null,
classe_id bigint not null,
primary key(id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);


INSERT INTO	tb_classes(tipo) VALUES ("Guerreiro");
INSERT INTO	tb_classes(tipo) VALUES ("Mago");
INSERT INTO	tb_classes(tipo) VALUES ("Clerigo");
INSERT INTO	tb_classes(tipo) VALUES ("Ladrão");
INSERT INTO	tb_classes(tipo) VALUES ("Feiticeiro");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ("Gregorio", 10000, 300, 1);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ("Materon", 4000, 4000, 2);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ("Xanadària", 700, 2000, 3);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ("Robson", 30, 50, 4);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ("Yanuray", 1999, 500, 5);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ("Romulo",20000 ,4000, 5);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ("Remo", 5000, 20, 2);
INSERT INTO tb_personagens(nome, ataque, defesa, classe_id) VALUES ("Adalberto", 300, 300, 3);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE ataque BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "c%";

SELECT tb_personagens.nome ,tb_personagens.ataque, tb_personagens.defesa, tb_classes.tipo FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;
SELECT tb_personagens.nome, tb_classes.tipo FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE tipo="Mago";


