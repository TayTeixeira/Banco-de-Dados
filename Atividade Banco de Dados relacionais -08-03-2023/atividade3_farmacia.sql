CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria(
	id bigint AUTO_INCREMENT,
    tipo varchar(255) not null,
    quantidade double,
    PRIMARY KEY(id)
);
CREATE TABLE tb_produtos(
	id bigint AUTO_INCREMENT,
    marca varchar(255) not null,
    nome varchar(255) not null,
    avaliacao float,
    preco decimal,
    PRIMARY KEY(id)
);
ALTER TABLE tb_produtos ADD categoria_id bigint; 
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id);

INSERT INTO tb_categoria (tipo, quantidade) 
values("Condicionador", 32);
INSERT INTO tb_categoria (tipo, quantidade) 
values("Anticoncepcional", 25);
INSERT INTO tb_categoria (tipo, quantidade) 
values("Absorvente", 40);
INSERT INTO tb_categoria (tipo, quantidade) 
values("Curativo", 24);
INSERT INTO tb_categoria(tipo, quantidade) 
values("Sabonete", 12);


INSERT INTO tb_produtos (marca, nome, avaliacao, preco, categoria_id) 
values("Skala", "Mais cachos", 4.2, 12.50, 1);
INSERT INTO tb_produtos (marca, nome, avaliacao, preco, categoria_id) 
values("Seda", "Mais lisos", 4.1, 27.00, 1);
INSERT INTO tb_produtos (marca, nome, avaliacao, preco, categoria_id) 
values("Bayer", "Diane 35", 4.0, 30.00, 1);
INSERT INTO tb_produtos (marca, nome, avaliacao, preco, categoria_id) 
values("Libbs", "Iumi", 4.7, 27.00, 2);
INSERT INTO tb_produtos (marca, nome, avaliacao, preco, categoria_id) 
values("Always", "Super proteção", 4.8, 13.50, 3);
INSERT INTO tb_produtos (marca, nome, avaliacao, preco, categoria_id) 
values("Intimus", "noturno", 4.9, 20.00, 3);
INSERT INTO tb_produtos (marca, nome, avaliacao, preco, categoria_id) 
values("Principia", "gel de limpeza", 4.2, 151.90, 4);
INSERT INTO tb_produtos (marca, nome, avaliacao, preco, categoria_id) 
values("Vichy", "Normaderm", 4.5, 160.00, 4);
INSERT INTO tb_produtos (marca, nome, avaliacao, preco, categoria_id) 
values("Avène", "Cleanance", 4.3, 158.90, 4);
INSERT INTO tb_produtos (marca, nome, avaliacao, preco, categoria_id) 
values("La Roche-Posay","Effaclar Concentrado", 5.0, 178.90, 4);


-- Verificando as planilhas --
SELECT * FROM tb_produtos;
SELECT * FROM tb_categoria;
SELECT * FROM tb_produtos WHERE preco >50;
SELECT * FROM tb_produtos WHERE preco> 50 AND preco<60;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- Juntandas as duas planilhas --
SELECT * FROM tb_produtos
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

-- Puxando só os produtos de Desodorante
SELECT * FROM tb_produtos
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id WHERE categoria_id =1;