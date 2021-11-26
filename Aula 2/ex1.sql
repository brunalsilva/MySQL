create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment unique,
nome varchar(255),
nivel int,
skill varchar(255),
arma varchar(255),
primary key (id)
);

insert into tb_classe(nome,nivel,skill,arma) values ("Arqueira",10,"Teletransporte","Arco e Flecha");
insert into tb_classe(nome,nivel,skill,arma) values ("Bruxa",7,"Feitiços","Machado");
insert into tb_classe(nome,nivel,skill,arma) values ("Cavaleira",13,"Telepatia","Bola de Fogo");
insert into tb_classe(nome,nivel,skill,arma) values ("Maga",9,"Invisibilidade","Lança");
insert into tb_classe(nome,nivel,skill,arma) values ("Curandeira",6,"Viagem no tempo","Congelamento");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment unique,
nome varchar(255),
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_personagem (nome,ataque,defesa,classe_id) values ("Bruna",2100,1500,1);
insert into tb_personagem (nome,ataque,defesa,classe_id) values ("Jhonatan",1500,2300,3);
insert into tb_personagem (nome,ataque,defesa,classe_id) values ("Marcela",1400,3000,2);
insert into tb_personagem (nome,ataque,defesa,classe_id) values ("Mirella",1200,2100,4);
insert into tb_personagem (nome,ataque,defesa,classe_id) values ("Karla",2100,1100,4);
insert into tb_personagem (nome,ataque,defesa,classe_id) values ("Lucas",1400,2200,5);
insert into tb_personagem (nome,ataque,defesa,classe_id) values ("Erick",1800,1300,5);
insert into tb_personagem (nome,ataque,defesa,classe_id) values ("Geisian",1200,2300,5);

select * from tb_personagem;

select * from tb_personagem where ataque >= 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "%c%";

select tb_classe.nome, tb_classe.nivel, tb_classe.skill, tb_classe.arma as classes,
tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa as personagens
from  tb_classe inner join tb_personagem on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem where classe_id = 5;

