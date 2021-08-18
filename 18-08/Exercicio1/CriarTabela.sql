use db_rh;

create table tb_funcionaries ( 
	id bigint(5) auto_increment, 
    nome varchar(20) not null, 
    idade int not null,
    turno varchar(10) not null,
    salario decimal(10,2) not null,
    
    primary key (id) 
);