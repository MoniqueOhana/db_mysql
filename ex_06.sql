CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR(100) NOT NULL,
descricao VARCHAR(255),
PRIMARY KEY(id)
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome_curso VARCHAR(255) NOT NULL,
periodo VARCHAR(100),
professor VARCHAR(120),
duracao VARCHAR(100),
nivel VARCHAR(100),
valor DECIMAL (6,2),
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(nome_categoria, descricao) VALUES ("Comunicação", "Area que estuda os diversos tipos de comunicação");
INSERT INTO tb_categoria(nome_categoria, descricao) VALUES ("Idiomas", "Aprendizado de um novo idioma na prática");
INSERT INTO tb_categoria(nome_categoria, descricao) VALUES ("Finanças", "Investimento, bolsa de valores e rendimentos");
INSERT INTO tb_categoria(nome_categoria, descricao) VALUES ("Saude", "Cuidando de pessoas e de vidas");
INSERT INTO tb_categoria(nome_categoria, descricao) VALUES ("Tecnologia", "De informática pra crianças até protótipos com IA's");

INSERT INTO tb_cursos(nome_curso, periodo, professor, duracao, nivel, valor, categoria_id) VALUES ("Ingles", "Noturno", "Rafael Smith", "4 anos", "Intermediário", 5000.00, 2);
INSERT INTO tb_cursos(nome_curso, periodo, professor, duracao, nivel, valor, categoria_id) VALUES ("Desenvolvimento Web", "Matutino", "Katia Cordeiro", "1 ano", "Intermediário", 1300.00, 5);
INSERT INTO tb_cursos(nome_curso, periodo, professor, duracao, nivel, valor, categoria_id) VALUES ("Auxiliar de Enfermagem", "Matutino", "Elias Guerra", "2 anos", "Avançado", 6500.00, 4);
INSERT INTO tb_cursos(nome_curso, periodo, professor, duracao, nivel, valor, categoria_id) VALUES ("Jornalismo Investigativo", "Noturno", "Fabiana Rocha", "4 meses", "Iniciante", 500.00, 1);
INSERT INTO tb_cursos(nome_curso, periodo, professor, duracao, nivel, valor, categoria_id) VALUES ("Tesouro Direto", "Noturno", "Kaua Moreira", "2 meses", "Iniciante", 280.00, 3);
INSERT INTO tb_cursos(nome_curso, periodo, professor, duracao, nivel, valor, categoria_id) VALUES ("Pacote Office completo", "Vespertino", "Liz Almeida", "1 ano", "Avançado", 950.00, 5);
INSERT INTO tb_cursos(nome_curso, periodo, professor, duracao, nivel, valor, categoria_id) VALUES ("Primeiros Socorros", "Noturno", "Paula Lira", "3 meses", "Iniciante", 550.00, 4);
INSERT INTO tb_cursos(nome_curso, periodo, professor, duracao, nivel, valor, categoria_id) VALUES ("Redação Publicitária", "Noturno", "Jorge Raimundo", "2 meses", "Intermediário", 230.00, 1);
INSERT INTO tb_cursos(nome_curso, periodo, professor, duracao, nivel, valor, categoria_id) VALUES ("Italiano", "Matutino", "Lara Fatelli", "6 meses", "Iniciante", 680.00, 1);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE valor > 500.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome_curso LIKE "%j%";

SELECT * FROM tb_cursos INNER JOIN tb_categoria ON tb_cursos.categoria_id = tb_categoria.id;

UPDATE tb_cursos SET categoria_id = 2 WHERE id=9;

SELECT * FROM tb_cursos INNER JOIN tb_categoria ON tb_cursos.categoria_id = tb_categoria.id WHERE nome_categoria = "Saude";
