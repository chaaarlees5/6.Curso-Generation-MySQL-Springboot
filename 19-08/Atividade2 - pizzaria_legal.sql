create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria ( 
	id bigint(10) auto_increment, 
    rodizio boolean, 
    delivery boolean not null,
    promocional boolean,
    
    primary key (id) 
);

create table tb_pizza ( 
	id bigint(10) auto_increment, 
    sabor varchar(30) not null, 
    tamanho varchar(20) not null,
    preco decimal(5,2),
    azeitona boolean,
    id_categoria bigint(10),
    
    primary key (id), foreign key (id_categoria) references tb_categoria (id)  
);

select * from tb_pizza, tb_categoria;

insert into tb_categoria(rodizio, delivery, promocional) 
values (true, false, false);
insert into tb_categoria(rodizio, delivery, promocional) 
values (true, false, true);
insert into tb_categoria(rodizio, delivery, promocional) 
values (false, true, false);
insert into tb_categoria(rodizio, delivery, promocional) 
values (false, true, true);

insert into tb_pizza(sabor, tamanho, preco, azeitona, id_categoria) 
values ("Mussarela", "Média", 32.8, false, 2);
insert into tb_pizza(sabor, tamanho, preco, azeitona, id_categoria) 
values ("Calabresa", "Pequena", 24, true, 3);
insert into tb_pizza(sabor, tamanho, preco, id_categoria) 
values ("Atum", "Média", 51.4, 4);
insert into tb_pizza(sabor, tamanho, preco, azeitona, id_categoria) 
values ("4 Queijos", "Grande", 48.2, true, 4);
insert into tb_pizza(sabor, tamanho, preco, azeitona, id_categoria) 
values ("Camarão", "Pequena", 35.5, true, 1);

select * from tb_pizza, tb_categoria;

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco >= 29 and preco <= 60;
select * from tb_pizza where sabor like "%c%";

select * from tb_categoria
	inner join tb_pizza on tb_pizza.id_categoria = tb_categoria.id;
    
select rodizio, delivery, promocional, sabor, tamanho, preco from tb_categoria
	inner join tb_pizza on tb_pizza.id_categoria = tb_categoria.id
		where tamanho = "média";
        