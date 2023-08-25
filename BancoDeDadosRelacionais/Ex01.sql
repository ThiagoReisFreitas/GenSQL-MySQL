CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
tipo varchar(255) not null,
descricao varchar(255) not null,
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


INSERT INTO	tb_classes(tipo, descricao) VALUES ("Guerreiro", "Destemido guerreiro que domina a arte da espada e da armadura, protegendo os aliados e enfrentando os inimigos de frente");
INSERT INTO	tb_classes(tipo, descricao) VALUES ("Mago", "Mestre das artes arcanas, o mago manipula elementos e lança feitiços poderosos, desvendando os segredos do universo");
INSERT INTO	tb_classes(tipo, descricao) VALUES ("Clerigo", "Servo divino e curador habilidoso, o clérigo traz bênçãos e cura aos feridos, além de ser um farol de esperança nas trevas");
INSERT INTO	tb_classes(tipo, descricao) VALUES ("Ladrão", "Especialista em furtividade e agilidade, o ladrão domina a arte de desarmar armadilhas, roubar tesouros e se mover nas sombras");
INSERT INTO	tb_classes(tipo, descricao) VALUES ("Feiticeiro", "Herdeiro de conhecimentos ancestrais, o feiticeiro manipula energias místicas para moldar a realidade e desencadear poderes inimagináveis");

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


