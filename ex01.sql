CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255),
salario DECIMAL(7,2) NOT NULL,
setor VARCHAR(50),
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, email, salario, setor) 
VALUES ("Reginaldo Medeiros", "reginaldomedeiros13@gmail.com", 2700.00, "Marketing");

INSERT INTO tb_colaboradores(nome, email, salario, setor)
VALUES ("Michael Scott", "michaelscott@dundermifflin.com", "3500.00", "Gerencia");

INSERT INTO tb_colaboradores(nome, email, salario, setor)
VALUES ("Carina Ramos", "carinar@gmail.com", "2100.00", "Administrativo");

INSERT INTO tb_colaboradores(nome, email, salario, setor)
VALUES ("Ernesto Souza", "ernestos_souza@gmail.com", 1900.00, "Portaria");

INSERT INTO tb_colaboradores(nome, email, salario, setor)
VALUES ("Juliana Oliveira", "juoliveira1@gmail.com", 1900, "Recepção");

INSERT INTO tb_colaboradores(nome, email, salario, setor)
VALUES ("Alisson Fagundes", "afagundes@gmail.com", 3100, "Tesouraria");

INSERT INTO tb_colaboradores(nome, email, salario, setor)
VALUES ("Roberta Andrade", "roberta_andrade@gmail.com", 2850, "Marketing");

INSERT INTO tb_colaboradores(nome, email, salario, setor)
VALUES ("Mariana Lins", "marilins21@gmail.com", 2300, "Administrativo");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET email = "ernestos_souza12@gmail.com" WHERE id = 4;