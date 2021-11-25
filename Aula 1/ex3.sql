create database db_escola;
use db_escola;

create table tb_alunos(
id bigint auto_increment unique,
ano varchar(255),
periodo varchar(255),
nome varchar(255),
sobrenome varchar(255),
nascimento date not null,
primary key(id)
);

insert into tb_alunos (ano,periodo,nome,sobrenome,nascimento) values (1,"manhã","Anna","Luzia","2007/03/14");
insert into tb_alunos (ano,periodo,nome,sobrenome,nascimento) values (1,"manhã","Juliana","Martins","2007/01/23");
insert into tb_alunos (ano,periodo,nome,sobrenome,nascimento) values (1,"tarde","Gustavo","Silva","2007/07/01");
insert into tb_alunos (ano,periodo,nome,sobrenome,nascimento) values (1,"tarde","Larissa","Gonzalez","2007/09/29");
insert into tb_alunos (ano,periodo,nome,sobrenome,nascimento) values (2,"manhã","Sabrina","Gomes","2006/05/24");
insert into tb_alunos (ano,periodo,nome,sobrenome,nascimento) values (2,"manhã","Tiago","Menezes","2006/12/06");
insert into tb_alunos (ano,periodo,nome,sobrenome,nascimento) values (3,"manhã","Rebeca","Garcia","2005/01/11");
insert into tb_alunos (ano,periodo,nome,sobrenome,nascimento) values (3,"manhã","Lucas","Angelino","2005/08/18");

select * from tb_alunos;

alter table tb_alunos add nota int;

update tb_alunos set nota=8 where id=1;
update tb_alunos set nota=4 where id=2;
update tb_alunos set nota=10 where id=3;
update tb_alunos set nota=6 where id=4;
update tb_alunos set nota=7 where id=5;
update tb_alunos set nota=3 where id=6;
update tb_alunos set nota=9 where id=7;
update tb_alunos set nota=5 where id=8;

select * from tb_alunos where nota>7;
select * from tb_alunos where nota<7;

update tb_alunos set sobrenome = "Reis" where id=4;