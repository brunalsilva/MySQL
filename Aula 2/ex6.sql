create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment unique,
formato varchar(255),
disponibilidade boolean,
areaEstudo varchar(255),
primary key (id)
);

insert into tb_categoria(formato, disponibilidade, areaEstudo) values ("EAD",true,"Tecnologia");
insert into tb_categoria(formato, disponibilidade, areaEstudo) values ("EAD",false,"Tecnologia");
insert into tb_categoria(formato, disponibilidade, areaEstudo) values ("Presencial",true,"Comunicação");
insert into tb_categoria(formato, disponibilidade, areaEstudo) values ("Presencial",false,"Comunicação");
insert into tb_categoria(formato, disponibilidade, areaEstudo) values ("EAD",true,"Gestão");

create table tb_curso(
id bigint auto_increment unique,
nome varchar(255),
preco decimal(8,2),
duracao varchar(255),
periodo varchar(255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id) 
);

insert into tb_curso(nome,preco,duracao,periodo,categoria_id) values ("Front end",99.90,"6 meses","Manhã",1);
insert into tb_curso(nome,preco,duracao,periodo,categoria_id) values ("Back end",99.90,"8 meses","Manhã",1);
insert into tb_curso(nome,preco,duracao,periodo,categoria_id) values ("Full stack",120.99,"6 meses","Integral",2);
insert into tb_curso(nome,preco,duracao,periodo,categoria_id) values ("React",25.90,"1 mês","Noite",1);
insert into tb_curso(nome,preco,duracao,periodo,categoria_id) values ("Comunicação Empresarial",120.99,"10 meses","Noite",3);
insert into tb_curso(nome,preco,duracao,periodo,categoria_id) values ("Redator Publicitário",59.90,"3 meses","Noite",3);
insert into tb_curso(nome,preco,duracao,periodo,categoria_id) values ("SEO",139.90,"2 meses","Noite",4);
insert into tb_curso(nome,preco,duracao,periodo,categoria_id) values ("Gestão Empresarial",199.90,"8 meses","Noite",5);

select * from tb_curso;

select * from tb_curso where preco > 50;

select * from tb_curso where preco > 3 and preco < 60;

select * from tb_curso where nome like "%j%";

select tb_categoria.formato, tb_categoria.disponibilidade, tb_categoria.areaEstudo,
tb_curso.nome, tb_curso.preco, tb_curso.duracao, tb_curso.periodo, tb_curso.categoria_id
from  tb_categoria inner join tb_curso on tb_categoria.id = tb_curso.categoria_id;

select tb_categoria.formato, tb_categoria.disponibilidade, tb_categoria.areaEstudo,
tb_curso.nome, tb_curso.preco, tb_curso.duracao, tb_curso.periodo, tb_curso.categoria_id
from  tb_categoria inner join tb_curso on tb_categoria.id = tb_curso.categoria_id
where categoria_id = 3;