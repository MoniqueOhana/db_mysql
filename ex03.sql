CREATE DATABASE db_escolinha;

USE db_escolinha;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
sala INT,
nota DECIMAL(3,1),
serie VARCHAR(10),
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, sala, nota, serie) VALUES ("Akin Limeira", 5, 10.0, "3ª");
INSERT INTO tb_estudantes(nome, sala, nota, serie) VALUES ("Maite Zuzzi", 1, 10.0, "1ª");
INSERT INTO tb_estudantes(nome, sala, nota, serie) VALUES ("Bernardo Castro", 5, 8.0, "3ª");
INSERT INTO tb_estudantes(nome, sala, nota, serie) VALUES ("Gabrieli Moreira", 3, 6.0, "2ª");
INSERT INTO tb_estudantes(nome, sala, nota, serie) VALUES ("Alexandre Freitas", 1, 7.0, "1ª");
INSERT INTO tb_estudantes(nome, sala, nota, serie) VALUES ("Nathália Queiroz", 2, 4.0, "1ª");
INSERT INTO tb_estudantes(nome, sala, nota, serie) VALUES ("Tatiana Morais", 5, 10.0, "3ª");
INSERT INTO tb_estudantes(nome, sala, nota, serie) VALUES ("Peter Salazar", 2, 5.5, "1ª");
INSERT INTO tb_estudantes(nome, sala, nota, serie) VALUES ("Julio Ambrosio", 4, 8.0, "2ª");
INSERT INTO tb_estudantes(nome, sala, nota, serie) VALUES ("Thalia Vianna", 3, 8.5, "2ª");

SELECT * FROM tb_estudantes WHERE nota > 7;

SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 6.0 WHERE id = 9;
