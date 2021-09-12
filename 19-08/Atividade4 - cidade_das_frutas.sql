create database cidade_das_frutas;

use cidade_das_frutas;

create table tb_categoria ( 
	id int(10) auto_increment, 
    tipo varchar(15) not null,
    descricao varchar(150),
    delivery boolean not null,
    
    primary key (id) 
);

create table tb_produto ( 
	id int(10) auto_increment, 
    nome varchar(30) not null, 
	validade date,
    preco decimal(5,2) not null,
	numero_serie int(20),
    id_categoria int(10),
    
    primary key (id), foreign key (id_categoria) references tb_categoria (id)  
);

select * from tb_categoria;
select * from tb_produto;

insert into tb_categoria(tipo, descricao, delivery) values 
("Frutas", "Extremamente importantes em nossa alimentação. Alimento rico em fibras, vitaminas e sais minerais.", true),
("Legumes", "Plantas em que a parte comestível são frutos ou sementes.", true),
("Verduras", "Plantas em que a parte comestível são as folhas, as flores ou as hastes.", true),
("Limpeza", "Produtos de limpeza são utilizados para vários fins, como limpeza, desinfecção e conservação de ambientes domésticos ou coletivos.", false),
("Decoração", "Produtos decorativos para a sua casa.", false);

insert into tb_produto(nome, validade, preco, numero_serie, id_categoria) 
values ("Laranja", '2021-09-25', 2.99, 3454526, 1);
insert into tb_produto(nome, validade, preco, numero_serie, id_categoria) 
values ("Goiaba", '2021-10-04', 4.5, 1275694, 1);
insert into tb_produto(nome, preco, numero_serie, id_categoria) 
values ("Quadro", 57.9, 2865724, 5);
insert into tb_produto(nome, preco, numero_serie, id_categoria) 
values ("Pá", 89.45, 7123569, 4);
insert into tb_produto(nome, validade, preco, numero_serie, id_categoria) 
values ("Abobrinha", "2021-09-30", 12.99, 1539575, 2);
insert into tb_produto(nome, validade, preco, numero_serie, id_categoria) 
values ("Escarola", "2021-09-24", 1.99, 2867815, 3);
insert into tb_produto(nome, preco, numero_serie, id_categoria) 
values ("Vaso", 56.5, 8795263, 5);
insert into tb_produto(nome, validade, preco, numero_serie, id_categoria) 
values ("Quiabo", "2021-10-31", 8.50, 1359845, 2);

select * from tb_categoria;
select * from tb_produto;

select * from tb_produto where preco > 50;
select * from tb_produto where preco >= 3 and preco <= 60;
select * from tb_produto where nome like "%c%";

select * from tb_categoria
	inner join tb_produto on tb_produto.id_categoria = tb_categoria.id;
    
select nome, descricao, validade, delivery codigo_barras, preco from tb_categoria
	inner join tb_produto on tb_produto.id_categoria = tb_categoria.id
		where tipo = "Legumes";
        