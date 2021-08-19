use db_generation_game_online;

create table tb_classe ( 
	id bigint(10) auto_increment, 
    raca varchar(30) not null, 
    atk_distancia boolean,
    voa boolean,
    
    primary key (id) 
);

create table tb_personagem ( 
	id bigint(10) auto_increment, 
    nome varchar(30) not null, 
    nivel bigint(4),
    ataque bigint(3),
    agilidade bigint(3),
    defesa bigint(3),
    classe_id bigint(3),
    
    primary key (id), foreign key (classe_id) references tb_classe (id)  
);

select * from tb_classe;
select * from tb_personagem;

insert into tb_classe(raca, atk_distancia, voa) 
values ("Orc", false, false);
insert into tb_classe(raca, atk_distancia, voa)
values ("Elfo", true, true);
insert into tb_classe(raca, atk_distancia, voa)
values ("Humano", true, false);
insert into tb_classe(raca, atk_distancia, voa) 
values ("Máquina", true, false);
insert into tb_classe(raca, atk_distancia, voa) 
values ("Mago", true, false);

insert into tb_personagem(nome, nivel, ataque, agilidade, defesa, classe_id) 
values ("Jujuba", 12, 200, 800, 1200, 2);
insert into tb_personagem(nome, nivel, ataque, agilidade, defesa, classe_id)
values ("Marceline", 15, 1200, 900, 700, 5);
insert into tb_personagem(nome, nivel, ataque, agilidade, defesa, classe_id)
values ("Beemo", 8, 400, 900, 900, 4);
insert into tb_personagem(nome, nivel, ataque, agilidade, defesa, classe_id)
values ("Leech", 17, 2300, 1400, 900, 1);
insert into tb_personagem(nome, nivel, ataque, agilidade, defesa, classe_id)
values ("Finn", 14, 1300, 1600, 1200, 3);
insert into tb_personagem(nome, nivel, ataque, agilidade, defesa, classe_id)
values ("Jake", 16, 1800, 1000, 1800, 1);

select * from tb_classe;
select * from tb_personagem;

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa >= 1000 and defesa <= 2000;
select * from tb_personagem where nome like "%c%";

select * from tb_classe
	inner join tb_personagem on tb_personagem.classe_id = tb_classe.id;
    
select raca, nome, nivel, ataque, defesa, agilidade, atk_distancia, voa from tb_classe
	inner join tb_personagem on tb_personagem.classe_id = tb_classe.id
		where raca = "Orc";