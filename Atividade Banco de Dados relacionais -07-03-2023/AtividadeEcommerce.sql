CREATE DATABASE db_Ecommerce;

USE db_Ecommerce;

CREATE TABLE tb_produtosEcommerce(
	sku varchar(100),
    nomeProduto varchar(100) not null,
    quantidade int not null,
    categoria varchar(100) not null, -- considerando apenas o DDD e o número do telefone, exemplo 11912345678
    avaliacao float,
    preco float not null, 
PRIMARY KEY (sku)
);

INSERT INTO tb_produtosEcommerce(sku, nomeProduto, quantidade, categoria, avaliacao, preco)	
value("AB5789" ,"Panela de Pressão", 25,"Cozinha", 4.4, 150);
INSERT INTO tb_produtosEcommerce(sku, nomeProduto, quantidade, categoria, avaliacao, preco)
value("BB5789","Macbook Pro 2023", 5,"Eletrônicos", 4.7, 28000);
INSERT INTO tb_produtosEcommerce(sku, nomeProduto, quantidade, categoria, avaliacao, preco)
value("CB5789","Secador de Cabelo Profissional", 12,"Beleza", 4.3, 450);
INSERT INTO tb_produtosEcommerce(sku, nomeProduto, quantidade, categoria, avaliacao, preco)
value("DB5789","Iphone 14", 10,"Eletrônicos", 4.2, 7000);
INSERT INTO tb_produtosEcommerce(sku, nomeProduto, quantidade, categoria, avaliacao, preco)
value("EB5789","Wilson Raquete Tênis", 9,"Esportes", 4.0, 200);
INSERT INTO tb_produtosEcommerce(sku, nomeProduto, quantidade, categoria, avaliacao, preco)
value("FB5789","Vaso de Planta Plástico grande", 45,"Jardinagem", 4.6, 120);
INSERT INTO tb_produtosEcommerce(sku, nomeProduto, quantidade, categoria, avaliacao, preco)
value("GB5789","Fralda para bebês", 50,"Bebês", 4.5, 80);
INSERT INTO tb_produtosEcommerce(sku, nomeProduto, quantidade, categoria, avaliacao, preco)	
value("HB5789","Microondas", 8,"Eletrodomésticos", 4.2, 2000);

SELECT * FROM tb_produtosEcommerce;
    
SELECT * FROM tb_produtosEcommerce WHERE preco > 500;
    
SELECT * FROM tb_produtosEcommerce WHERE preco < 500;

UPDATE tb_produtosEcommerce SET preco = 1750 WHERE sku = "HB5789";
    