use db_escola;

create table tb_estudantes ( 
	matricula bigint(10) auto_increment, 
    aluno varchar(30) not null, 
    idade bigint(3) not null,
    serie varchar(3),
    nota decimal(10,1) not null,
    
    primary key (matricula) 
);