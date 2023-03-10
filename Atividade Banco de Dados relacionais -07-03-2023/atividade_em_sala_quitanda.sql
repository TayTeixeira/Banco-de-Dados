CREATE DATABASE db_quitanda;
USE db_quitanda;

-- Models
CREATE TABLE tb_categoria(
    id bigint auto_increment,
    descricao varchar(255) not null,
    primary key (id)
);

CREATE TABLE tb_produtos(
    id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal not null,
    PRIMARY KEY (id)
);

ALTER TABLE tb_produtos ADD categoria_id bigint;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categoria
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);

ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

-- INSERTIONS

INSERT INTO tb_categoria (descricao) values ("Fruta");
INSERT INTO tb_categoria (descricao) values ("Verdura");
INSERT INTO tb_categoria (descricao) values ("Legume");
INSERT INTO tb_categoria (descricao) values ("grãos");

INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("tomate",100, 8.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("laranja",50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("banana",200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("uva",1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("pêra",500, 2.99);
INSERT INTO tb_produtos(nome, quantidade, preco,categoria_id) 
values ("pimentao",10, 6.00,1);
INSERT INTO tb_produtos(
    nome, quantidade, preco, categoria_id
) values("Agrião", 15, 3.00, 2);

INSERT INTO tb_produtos(
    nome, quantidade, preco, categoria_id
) values("Cenoura", 18, 3.50, 3);

-- UPDATES
UPDATE tb_produtos SET preco = 12.99 WHERE id = 7;

-- DElETES
DELETE FROM tb_produtos WHERE id = 6;

-- SELECTS

SELECT * FROM tb_categoria;

-- INNER JOIN (A intersects B)
SELECT * from tb_produtos
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

-- LEFT JOIN (A intersects B, but only the items from A)
SELECT * from tb_produtos
LEFT JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

-- RIGHT JOIN (A intersects B, but only the items from B)
SELECT * from tb_produtos
RIGHT JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;