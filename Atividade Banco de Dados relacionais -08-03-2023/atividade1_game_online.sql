-- CRIAR BANCO DE DADOS
CREATE DATABASE db_generation_game_online;

-- USA O BD
USE db_generation_game_online;

-- CRIAR A TABELA
CREATE TABLE tb_classes(
	id bigint auto_increment,
    nome varchar(255) not null,
    habilidade varchar(255),
    arma varchar(255),
    primary key (id)
);

-- INSERIR DADOS TABELA CLASSE
INSERT INTO tb_classes(nome, habilidade, arma)
VALUES ("Feiticerio", "Bola de Fogo", "Cajado");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Arqueiro", "Chuva de Flechas", "Arco e Flecha");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Druida", "Gelo", "Livro");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Guerreiro", "Excalibur", "Espada");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Curandeiro", "Ressureição", "Gaze");

SELECT * FROM tb_classes;
SELECT nome, habilidade, arma FROM tb_classes;

-- CRIAR A TABELA
CREATE TABLE tb_personagens(
	id bigint AUTO_INCREMENT,
	nome varchar(100),
	nivel int, 
	ataque int, 
	defesa int, 
	classe_id bigint,
    primary key(id),
    foreign key(classe_id) references tb_classes(id)
);

-- INSERIR DADOS TABELA tb_personagens
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Mokona", 100, 300, 100, 5);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Minseok", 100, 3000, 2800, 1);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Junmyeon", 100, 2000, 2000, 2);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Baekhyun", 10, 1000, 1500, 3);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Jongdae", 1000, 1300, 1110, 4);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Chanyeol", 500, 2300, 3000, 5);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Kyungsoo", 400, 1800, 2200, 1);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Jongin", 300, 1300, 850, 2);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Sehun", 150, 2100, 900, 3);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%Mokona%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id
WHERE tb_classes.id = 2;

SELECT * FROM tb_personagens;

 -- ALIAS (AS) - é uma clausula que permite editar o nome do campo somente na visualização da Query
SELECT 
	id AS Código, 
    nome AS Nome_Personagem,
    nivel AS Nível,
    ataque AS Ataque,
    defesa AS Defesa
FROM tb_personagens;

SELECT 
	tb_personagens.nome AS Nome_Personagem,
    tb_classes.nome AS Classe,
    ataque,
    defesa
    habilidade,
    arma    
FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;