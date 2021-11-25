create database db_rh;
use db_rh;

create table tb_func (
id bigint auto_increment unique,
codigo int,
nome varchar(255) not null,
idade int,
departamento varchar(255) not null,
cargo varchar(255) not null,
primary key (id)
);

insert into tb_func (codigo,nome,idade,departamento,cargo) values (422,"Bruna",24,"Tecnologia","Desenvolvedora Back End");
insert into tb_func (codigo,nome,idade,departamento,cargo) values (131,"Monica",43,"Comunicação","Gerente de Comunicação");
insert into tb_func (codigo,nome,idade,departamento,cargo) values (296,"Sueli",32,"Recursos Humanos","Analista de RH");
insert into tb_func (codigo,nome,idade,departamento,cargo) values (197,"Alexandre",28,"Tecnologia","Product Owner");

select * from tb_func;

alter table tb_func add salario decimal(8,2);

update tb_func set salario = 4000.00 where id=1;
update tb_func set salario = 12000.00 where id=2;
update tb_func set salario = 1800.00 where id=3;
update tb_func set salario = 8000.00 where id=4;

select * from tb_func where salario>2000.00;
select * from tb_func where salario<2000.00;














