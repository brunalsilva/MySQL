create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment unique,
tipo varchar(255),
lactose boolean,
gluten boolean,
primary key (id)
);

insert into tb_categoria(tipo,lactose,gluten) values ("Vegana",false,false);
insert into tb_categoria(tipo,lactose,gluten) values ("Vegana",false,true);
insert into tb_categoria(tipo,lactose,gluten) values ("Vegetariana",false,false);
insert into tb_categoria(tipo,lactose,gluten) values ("Vegetariana",true,true);
insert into tb_categoria(tipo,lactose,gluten) values ("Premium",true,true);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment unique,
nome varchar(255),
preco decimal(8,2),
tempoPreparo varchar(255),
promocao boolean,
categoria_id bigint,
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza(nome,preco,tempoPreparo,promocao,categoria_id) values ("Marguerita",45.99,"30min",false,4);
insert into tb_pizza(nome,preco,tempoPreparo,promocao,categoria_id) values ("Mussarela",28.50,"15min",true,4);
insert into tb_pizza(nome,preco,tempoPreparo,promocao,categoria_id) values ("Atum",36.90,"20min",false,5);
insert into tb_pizza(nome,preco,tempoPreparo,promocao,categoria_id) values ("Portuguesa",39.99,"35min",false,5);
insert into tb_pizza(nome,preco,tempoPreparo,promocao,categoria_id) values ("Calabresa",24.50,"20min",true,5);
insert into tb_pizza(nome,preco,tempoPreparo,promocao,categoria_id) values ("Rúcula",32.50,"15min",true,1);
insert into tb_pizza(nome,preco,tempoPreparo,promocao,categoria_id) values ("Brócolis",36.99,"25min",false,2);
insert into tb_pizza(nome,preco,tempoPreparo,promocao,categoria_id) values ("Camarão",68.99,"28min",false,5);

select * from tb_pizza where preco > 45.00;
select * from tb_pizza where preco between 29.00 and 60.00;
select * from tb_pizza where nome like "%c%";

select tb_categoria.tipo, tb_categoria.lactose, tb_categoria.gluten,
tb_pizza.nome, tb_pizza.preco, tb_pizza.tempoPreparo, tb_pizza.promocao
from  tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id;

select tb_categoria.tipo, tb_categoria.lactose, tb_categoria.gluten,
tb_pizza.nome, tb_pizza.preco, tb_pizza.tempoPreparo, tb_pizza.promocao
from  tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id 
where categoria_id = 1 or categoria_id = 2;