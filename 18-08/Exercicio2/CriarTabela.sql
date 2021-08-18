use db_ecommerce;

create table tb_produtos ( 
	serie bigint(10) auto_increment, 
    produto varchar(30) not null, 
    marca varchar(20) not null,
    cor varchar(10),
    preco decimal(10,2) not null,
    
    primary key (serie) 
);