CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;
-- criando as tabelas --
CREATE TABLE tb_categoria(
	id bigint AUTO_INCREMENT,
    tipo varchar(255) not null,
    caracteristica varchar(100) not null,
	PRIMARY KEY(id)
);
CREATE TABLE tb_pizza(
	id bigint AUTO_INCREMENT,
    nome varchar(255) not null,
	preco int,
    tamanho varchar(100),
    alergenico varchar(255) not null,
    PRIMARY KEY(id)
);
-- Criação da chave secundária --
ALTER TABLE tb_pizza ADD categoria_id bigint; 
ALTER TABLE tb_pizza ADD CONSTRAINT fk_pizza 
FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id);

-- Inserindo os tipos de pizza--
INSERT INTO tb_categoria (tipo, caracteristica) values("2 sabores", "Vegana");
INSERT INTO tb_categoria (tipo, caracteristica) values("Salgada", "Vegetariana");
INSERT INTO tb_categoria (tipo, caracteristica) values("2 sabores", "Carnes");
INSERT INTO tb_categoria (tipo, caracteristica) values("Doce", "Zero açúcar");
INSERT INTO tb_categoria (tipo, caracteristica) values("Salgada", "Tradicional");

-- Inserindo as pizzas--
INSERT INTO tb_pizza (nome, preco, tamanho, alergenico, categoria_id) values("Abobrinha", 104.90, "grande", "Sem lactose", 2);
INSERT INTO tb_pizza (nome, preco, tamanho, alergenico, categoria_id) values("Alho poró vegan",102.90,"grande", "Sem carnes", 2);
INSERT INTO tb_pizza (nome, preco, tamanho, alergenico, categoria_id) values("Atum",101.90,"grande", "Sem glúten", 2);
INSERT INTO tb_pizza (nome, preco, tamanho, alergenico, categoria_id) values("Bacon",96.90,"grande", "Sem lactose", 2);
INSERT INTO tb_pizza (nome, preco, tamanho, alergenico, categoria_id) values("Baiana",98.90,"grande", "Sem ovos", 1);
INSERT INTO tb_pizza (nome, preco, tamanho, alergenico, categoria_id) values("Brócolis",47.90,"broto", "Sem glúten", 3);
INSERT INTO tb_pizza (nome, preco, tamanho, alergenico, categoria_id) values("Calabresa",49.90,"broto", "Sem lactose", 4);
INSERT INTO tb_pizza (nome, preco, tamanho, alergenico, categoria_id) values("Brigatone",89.90,"grande", "Sem leite", 5);

-- Verificando as planilhas --
SELECT * FROM tb_pizza;
SELECT * FROM tb_categoria;
SELECT * FROM tb_pizza WHERE preco> 45;
SELECT * FROM tb_pizza WHERE preco> 50 AND preco<100;
SELECT * FROM tb_pizza WHERE nome LIKE "%M%" ORDER BY nome ASC;

-- Juntandas as duas planilhas --
SELECT * FROM tb_pizza
INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.categoria_id;

-- Puxando só as pizzas doces --
SELECT * FROM tb_pizza
INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.categoria_id WHERE categoria_id =3;