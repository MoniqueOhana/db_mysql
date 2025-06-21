CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR(100) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(100) NOT NULL,
preco DECIMAL (5,2),
marca VARCHAR(100),
quantidade INT,
tamanho VARCHAR (100),
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome_categoria) VALUES ("Medicamentos");
INSERT INTO tb_categorias(nome_categoria) VALUES ("Cosméticos");
INSERT INTO tb_categorias(nome_categoria) VALUES ("Cuidados com a pele");
INSERT INTO tb_categorias(nome_categoria) VALUES ("Cuidados com o bebe");
INSERT INTO tb_categorias(nome_categoria) VALUES ("Vitaminas e Suplementos");
INSERT INTO tb_categorias(nome_categoria) VALUES ("Primeiros Socorros");
INSERT INTO tb_categorias(nome_categoria) VALUES ("Cuidado com os cabelos");

INSERT INTO tb_produtos(nome_produto, preco, marca, quantidade, tamanho, categorias_id) VALUES ("Fralda Descartável Premium", 36.90, "Huggies", 48, "G", 4);
INSERT INTO tb_produtos(nome_produto, preco, marca, quantidade, tamanho, categorias_id) VALUES ("Multivitamínico A-Z", 28.90, "Naturalis", 30, "120mg", 5);
INSERT INTO tb_produtos(nome_produto, preco, marca, quantidade, tamanho, categorias_id) VALUES ("Batom líquido", 12.80, "Fenzza", 1, "20ml", 2);
INSERT INTO tb_produtos(nome_produto, preco, marca, quantidade, tamanho, categorias_id) VALUES ("Protetor Solar 50fps", 41.50, "Nivea", 1, "300ml", 3);
INSERT INTO tb_produtos(nome_produto, preco, marca, quantidade, tamanho, categorias_id) VALUES ("Shampoo Camomila", 18.90, "Phytoervas", 1, "250ml", 7);
INSERT INTO tb_produtos(nome_produto, preco, marca, quantidade, tamanho, categorias_id) VALUES ("Paracetamol", 7.50, "Dorflex", 10, "400mg", 1);
INSERT INTO tb_produtos(nome_produto, preco, marca, quantidade, tamanho, categorias_id) VALUES ("Biotina", 32.50, "Macrophytus", 60, "90mg", 5);
INSERT INTO tb_produtos(nome_produto, preco, marca, quantidade, tamanho, categorias_id) VALUES ("Hidratante Corporal", 38.30, "Neutrogena", 1, "400ml", 3);
INSERT INTO tb_produtos(nome_produto, preco, marca, quantidade, tamanho, categorias_id) VALUES ("Creme de hidratação", 21.00, "Dove", 1, "300ml", 7);
INSERT INTO tb_produtos(nome_produto, preco, marca, quantidade, tamanho, categorias_id) VALUES ("Pomada para assaduras", 15.90, "Hipoglós", 1, "150g", 4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE nome_categoria = "Cuidado com os cabelos";

