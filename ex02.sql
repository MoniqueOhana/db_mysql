CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
tamanho VARCHAR(3),
marca VARCHAR(50),
preco DECIMAL(6,2),
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, tamanho, marca, preco) VALUES ("Jaqueta", "GG", "Ralph Lauren", 690.00);
INSERT INTO tb_produtos(nome, tamanho, marca, preco) VALUES ("Camiseta", "P", "Adidas", 149.90);
INSERT INTO tb_produtos(nome, tamanho, marca, preco) VALUES ("Calça", "42", "Zara", 129.90);
INSERT INTO tb_produtos(nome, marca, preco) VALUES ("Cachecol", "MCD", 85.00);
INSERT INTO tb_produtos(nome, tamanho, marca, preco) VALUES ("Blusa", "M", "Oakley", 349.90);
INSERT INTO tb_produtos(nome, tamanho, marca, preco) VALUES ("Jaqueta", "G", "Puma", 450.00);
INSERT INTO tb_produtos(nome, tamanho, marca, preco) VALUES ("Calça", "40", "Khelf", 249.90);
INSERT INTO tb_produtos(nome, tamanho, marca, preco) VALUES ("Camiseta", "GG", "Zara", 89.90);
INSERT INTO tb_produtos(nome, tamanho, marca, preco) VALUES ("Camiseta", "M", "Diamond", 179.90);
INSERT INTO tb_produtos(nome, tamanho, marca, preco) VALUES ("Biquini", "M", "Roxy", 139.90);
INSERT INTO tb_produtos(nome, tamanho, marca, preco) VALUES ("Camiseta", "GG", "Vans", 139.90);
INSERT INTO tb_produtos(nome, tamanho, marca, preco) VALUES ("Blusa", "G", "Vans", 399.90);

ALTER TABLE tb_produtos MODIFY nome VARCHAR(255) NOT NULL;

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2) NOT NULL;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 502.00 WHERE id = 6;