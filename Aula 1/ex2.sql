create database db_ecommerce;
use db_ecommerce;

create table tb_produto(
id bigint auto_increment unique,
codigo int,
categoria varchar(255),
produto varchar(255),
preco decimal(8,2),
cor varchar(255),
primary key(id)
);

insert into tb_produto (codigo, categoria, produto, preco, cor) values (175,"Eletrodoméstico","Geladeira",3500.00,"Branco");
insert into tb_produto (codigo, categoria, produto, preco, cor) values (98,"Informática","Celular",2500.00,"Prata");
insert into tb_produto (codigo, categoria, produto, preco, cor) values (361,"Móveis","Escrivaninha",900.00,"Vermelho");
insert into tb_produto (codigo, categoria, produto, preco, cor) values (213,"Informática","Notebook",4700.00,"Prata");
insert into tb_produto (codigo, categoria, produto, preco, cor) values (644,"Informática","Fone Bluetooth",500.00,"Preto");
insert into tb_produto (codigo, categoria, produto, preco, cor) values (198,"Eletrodoméstico","Micro-ondas",400.00,"Branco");
insert into tb_produto (codigo, categoria, produto, preco, cor) values (332,"Eletrodoméstico","Fogão",800.00,"Branco");
insert into tb_produto (codigo, categoria, produto, preco, cor) values (127,"Eletrodoméstico","Fogão",1300.00,"Branco");

select * from tb_produto;

select * from tb_produto where preco>500.00;
select * from tb_produto where preco<500.00;

update tb_produto set preco = 150.00 where id = 5;


