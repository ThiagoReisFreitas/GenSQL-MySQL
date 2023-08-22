create database db_escola;
use db_escola;

create table tb_aluno(
id int auto_increment,
nome varchar(255) not null,
nota1 float not null,
nota2 float not null,
media float,
primary key(id)
);

delimiter //
create trigger calc_media before insert on tb_aluno
for each row
begin
	set new.media = (new.nota1 + new.nota2)/2;
end;//
delimiter ;

insert into tb_aluno(nome, nota1, nota2) values ("Paulo", 2, 3);
insert into tb_aluno(nome, nota1, nota2) values ("Roberto", 7, 5);
insert into tb_aluno(nome, nota1, nota2) values ("Mauro", 1, 8);
insert into tb_aluno(nome, nota1, nota2) values ("Augusto", 5, 6);
insert into tb_aluno(nome, nota1, nota2) values ("Carlos", 2, 2);
insert into tb_aluno(nome, nota1, nota2) values ("Thigo", 10, 9);
insert into tb_aluno(nome, nota1, nota2) values ("Marcos", 3, 3);
insert into tb_aluno(nome, nota1, nota2) values ("Gustavo", 9, 8);

select * from tb_aluno;

select * from tb_aluno where nota1 > 7 or nota2 > 7;
select * from tb_aluno where nota1 < 7 or nota2 < 7;

update tb_aluno set nota2 = 10 where id = 2

