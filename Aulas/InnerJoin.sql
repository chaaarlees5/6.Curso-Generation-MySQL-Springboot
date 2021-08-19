use db_estoque;

-- select * from tb_produtos
-- inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id;

select tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
	inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id
		where tb_produtos.nome = "meias" or tb_produtos.nome = "Tenis"

-- where tb_marcas.nome = "Nike"
-- and preco < 50 and tb_produtos.nome = "Meias"
