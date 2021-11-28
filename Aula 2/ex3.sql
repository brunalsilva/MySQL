create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment unique,
codigo int,
secao varchar(255),
estoque boolean,
primary key (id)
);

insert into tb_categoria(codigo,secao,estoque) values (43,"Medicamentos",true);
insert into tb_categoria(codigo,secao,estoque) values (99,"Infantil",true);
insert into tb_categoria(codigo,secao,estoque) values (97,"Infantil",false);
insert into tb_categoria(codigo,secao,estoque) values (21,"Cosméticos",true);
insert into tb_categoria(codigo,secao,estoque) values (40,"Medicamentos",false);

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment unique,
nome varchar(255),
preco decimal(8,2),
promocao boolean,
quantidade int,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produtos(nome,preco,promocao,quantidade,categoria_id) values ("Shampoo TráLáLá", 12.99, false, 80, 2);
insert into tb_produtos(nome,preco,promocao,quantidade,categoria_id) values ("Lenço Johnson&Johnson", 18.50, true, 47, 2);
insert into tb_produtos(nome,preco,promocao,quantidade,categoria_id) values ("Buscofem Cápsula", 15.60, false, 119, 1);
insert into tb_produtos(nome,preco,promocao,quantidade,categoria_id) values ("Dorflex Sinus", 21.99, false, 0, 5);
insert into tb_produtos(nome,preco,promocao,quantidade,categoria_id) values ("Demaquilante L'oreal bifásico", 38.90, false, 58, 4);
insert into tb_produtos(nome,preco,promocao,quantidade,categoria_id) values ("Hidratante Neutrogena", 58.90, false, 93, 4);
insert into tb_produtos(nome,preco,promocao,quantidade,categoria_id) values ("Lactopurga", 8.99, true, 110, 1);
insert into tb_produtos(nome,preco,promocao,quantidade,categoria_id) values ("Buscopan Comprimido", 18.90, true, 25, 1);

select * from tb_produtos where preco>50.00;
select * from tb_produtos where preco>=3 and preco <=60;
select * from tb_produtos where nome like "%b%";

select tb_categoria.codigo, tb_categoria.secao, tb_categoria.estoque,
tb_produtos.nome, tb_produtos.preco, tb_produtos.promocao, tb_produtos.quantidade, tb_produtos.categoria_id
from  tb_categoria inner join tb_produtos on tb_categoria.id = tb_produtos.categoria_id;

select tb_categoria.codigo, tb_categoria.secao, tb_categoria.estoque,
tb_produtos.nome, tb_produtos.preco, tb_produtos.promocao, tb_produtos.quantidade, tb_produtos.categoria_id
from  tb_categoria inner join tb_produtos on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.id = 2;