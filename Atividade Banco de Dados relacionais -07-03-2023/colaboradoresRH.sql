CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
    nome varchar(255) not null,
    email varchar(30) not null,
    telefone char(11) not null, -- considerando apenas o DDD e o número do telefone, exemplo 11912345678
    cargo varchar(100) not null,
    salario decimal not null, 
PRIMARY KEY (id)
);
    
    INSERT INTO tb_colaboradores(nome, email, telefone, cargo, salario)	
    value("Maria", "maria@email.com","11912345671", "Auxiliar de Logística", 1800);
	INSERT INTO tb_colaboradores(nome, email, telefone, cargo, salario)	
    value("João", "joao@email.com","11912345672", "Gerente de Projetos", 6000);
    INSERT INTO tb_colaboradores(nome, email, telefone, cargo, salario)	
    value("Luis", "luis@email.com","11912345673", "Product Owner", 5000);
    INSERT INTO tb_colaboradores(nome, email, telefone, cargo, salario)	
    value("Joana", "joana@email.com","11912345674", "Diretora de Negócios", 10000);
    INSERT INTO tb_colaboradores(nome, email, telefone, cargo, salario)	
    value("Lara", "lara@email.com","11912345675", "Estagiária", 1000);
    
    SELECT * FROM tb_colaboradores;
    
	SELECT * FROM tb_colaboradores WHERE salario > 2000;
    
    SELECT * FROM tb_colaboradores WHERE salario < 2000;
    
    UPDATE tb_colaboradores SET salario = 1900 WHERE id = 1;
    
    SELECT * FROM tb_colaboradores WHERE id = 1;
