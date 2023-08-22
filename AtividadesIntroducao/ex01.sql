CREATE DATABASE db_recursoshumanos;
USE db_recursoshumanos;

CREATE TABLE tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
cargo varchar(255) not null,
salario float not null,
primary key (id)
);

INSERT INTO tb_funcionarios(nome, idade, cargo, salario) values ("Thiago Reis", 23, "Desenvolvedor Java", 10000);
INSERT INTO tb_funcionarios(nome, idade, cargo, salario) values ("José Cicero", 55, "Representante Comercial", 5000);
INSERT INTO tb_funcionarios(nome, idade, cargo, salario) values ("Deize Cristina", 52, "Contadora", 3500);
INSERT INTO tb_funcionarios(nome, idade, cargo, salario) values ("Humberto Vieira", 30, "Empacotador", 1200);
INSERT INTO tb_funcionarios(nome, idade, cargo, salario) values ("Marcos dos Santos", 18, "Carga e Descarga", 1500);

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = 2000 WHERE id = 2;