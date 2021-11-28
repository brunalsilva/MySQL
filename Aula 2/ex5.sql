create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment unique,
secao varchar(255),
delivery boolean,
estoque boolean,
primary key (id)
);

insert into tb_categoria(secao,delivery,estoque) values ("Cozinha",true,true);
insert into tb_categoria(secao,delivery,estoque) values ("Quarto",true,false);
insert into tb_categoria(secao,delivery,estoque) values ("Sala",true,true);
insert into tb_categoria(secao,delivery,estoque) values ("Sala",false,true);
insert into tb_categoria(secao,delivery,estoque) values ("Lavanderia",true,true);

create table tb_produto(
id bigint auto_increment unique,
nome varchar(255),
preco decimal(8,2),
quantidade int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome,preco,quantidade,categoria_id) values ("Armário",199.90,12,1);
insert into tb_produto(nome,preco,quantidade,categoria_id) values ("Colchão",680.90,4,2);
insert into tb_produto(nome,preco,quantidade,categoria_id) values ("Porta de vidro",1299.00,23,4);
insert into tb_produto(nome,preco,quantidade,categoria_id) values ("Cômoda",80.99,7,3);
insert into tb_produto(nome,preco,quantidade,categoria_id) values ("Cortina blackout",39.90,33,3);
insert into tb_produto(nome,preco,quantidade,categoria_id) values ("Tapete quadriculado",19.90,6,1);
insert into tb_produto(nome,preco,quantidade,categoria_id) values ("Aquecedor à gas",850.00,47,5);
insert into tb_produto(nome,preco,quantidade,categoria_id) values ("Varal de teto",399.00,28,5);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco > 3 and preco < 60;

select * from tb_produto where nome like "%c%";

select tb_categoria.secao, tb_categoria.estoque, tb_categoria.delivery,
tb_produto.nome, tb_produto.quantidade, tb_produto.preco, tb_produto.categoria_id
from  tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;

select tb_categoria.secao, tb_categoria.estoque, tb_categoria.delivery,
tb_produto.nome, tb_produto.quantidade, tb_produto.preco, tb_produto.categoria_id
from  tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id
where categoria_id = 3;