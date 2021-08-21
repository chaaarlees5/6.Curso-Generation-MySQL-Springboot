create database farmacia_do_bem;

use farmacia_do_bem;

create table tb_categoria ( 
	id int(10) auto_increment, 
    requer_receita boolean, 
    delivery boolean not null,
    lote boolean,
    
    primary key (id) 
);

create table tb_produto ( 
	id int(10) auto_increment, 
    nome varchar(30) not null, 
	validade date not null,
    preco decimal(5,2),
	codigo_barras int(20),
    id_categoria int(10),
    
    primary key (id), foreign key (id_categoria) references tb_categoria (id)  
);

select * from tb_categoria;
select * from tb_produto;

insert into tb_categoria(requer_receita, delivery, lote) values 
(true, false, true),
(true, true, true),
(false, false, true),
(false, true, true);

insert into tb_produto(nome, validade, preco, codigo_barras, id_categoria) 
values ("Alprazolam", '2022-08-25', 54.8, 465654, 1);
insert into tb_produto(nome, validade, preco, codigo_barras, id_categoria) 
values ("Carbolithium", '2023-12-04', 70, 1234567894, 2);
insert into tb_produto(nome, validade, preco, codigo_barras, id_categoria) 
values ("Cataflam", "2021-06-30", 32, 999999999, 4);
insert into tb_produto(nome, validade, preco, codigo_barras, id_categoria) 
values ("Engov", "2021-12-20", 1.85, 465456465, 3);
insert into tb_produto(nome, validade, preco, codigo_barras, id_categoria) 
values ("Rinossoro", "2024-05-31", 12, 654654894, 3);

select * from tb_categoria;
select * from tb_produto;

select * from tb_produto where preco > 50;
select * from tb_produto where preco >= 3 and preco <= 60;
select * from tb_produto where nome like "%b%";

select * from tb_categoria
	inner join tb_produto on tb_produto.id_categoria = tb_categoria.id;
    
select nome, validade, requer_receita, codigo_barras, preco from tb_categoria
	inner join tb_produto on tb_produto.id_categoria = tb_categoria.id
		where requer_receita = true;
        