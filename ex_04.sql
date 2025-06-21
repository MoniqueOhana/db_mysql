CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
nome_classe VARCHAR(100) NOT NULL,
descricao VARCHAR(255),
arma_principal VARCHAR(100),
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome_personagem VARCHAR(100) NOT NULL,
bio_personagem VARCHAR(255),
experiencia INT,
moedas_totais INT,
itens_especiais VARCHAR(255),
quant_vitorias INT,
quant_derrotas INT,
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome_classe, descricao, arma_principal) VALUES ("Ninja", "Guerreiro furtivo, estratégico e silencioso", "Estrela ninja");
INSERT INTO tb_classes (nome_classe, descricao, arma_principal) VALUES ("Atirador", "Domínio de armas e agilidade", "Escopeta de combate");
INSERT INTO tb_classes (nome_classe, descricao, arma_principal) VALUES ("Bruxo", "Poções especiais e hacks da natureza", "Sapo venenoso");
INSERT INTO tb_classes (nome_classe, descricao, arma_principal) VALUES ("Bárbaro", "Força bruta e muita resistencia", "Martelo de pedra");
INSERT INTO tb_classes (nome_classe, descricao, arma_principal) VALUES ("Animalescos", "Traços de animais, maldade de humanos", "Escudo ancestral");

INSERT INTO tb_personagens (nome_personagem, bio_personagem, experiencia, moedas_totais, itens_especiais, quant_vitorias, quant_derrotas, classe_id) VALUES(
"Mago das Trevas", "Um mago que voltou do inferno e dominou as piores magias negras", 5700, 11700, "Sabedoria Oculta", 43, 12, 3);
INSERT INTO tb_personagens (nome_personagem, bio_personagem, experiencia, moedas_totais, itens_especiais, quant_vitorias, quant_derrotas, classe_id) VALUES(
"Bruxa Alquimista", "Capaz de envenenar, encantar e curar através de elixires encantados", 3800, 8700, "Caldeirão Energizado", 30, 21, 3);
INSERT INTO tb_personagens (nome_personagem, bio_personagem, experiencia, moedas_totais, itens_especiais, quant_vitorias, quant_derrotas, classe_id) VALUES(
"Homem de Pedra", "Revivido do fundo do mar após longos anos, ele acumulou força e muita raiva durante seus anos de descanso", 4580, 12090, "Chuva de brita", 31, 9, 4);
INSERT INTO tb_personagens (nome_personagem, bio_personagem, experiencia, moedas_totais, itens_especiais, quant_vitorias, quant_derrotas, classe_id) VALUES(
"Super Monkey", "Gorila selvagem resgatado de laboratório de neurociencia e agora sofre todos os efeitos colaterais das cruéis experiencias vividas", 6470, 21200, "Fios elétricos de alta voltagem", 53, 11, 5);
INSERT INTO tb_personagens (nome_personagem, bio_personagem, experiencia, moedas_totais, itens_especiais, quant_vitorias, quant_derrotas, classe_id) VALUES(
"Sub-zero", "Direto do Mortal Kombat, ele cansou de apanhar do Scorpion e veio apanhar em outro jogo. Um ninja clássico e muito amado", 4520, 20900, "Mãos de gelo", 38, 19, 1);
INSERT INTO tb_personagens (nome_personagem, bio_personagem, experiencia, moedas_totais, itens_especiais, quant_vitorias, quant_derrotas, classe_id) VALUES(
"John Pistoleiro", "Ex-capitão do exército Russo, John está aposentado mas não consegue ficar longe da ação", 3200, 9800, "Sniper fragmentada", 20, 11, 2);
INSERT INTO tb_personagens (nome_personagem, bio_personagem, experiencia, moedas_totais, itens_especiais, quant_vitorias, quant_derrotas, classe_id) VALUES(
"Sonya Blade", "Do universo Mortal Kombat pra cá, Sonya procurou novos confrontos e os encontrou. Vai encarar a policial mais famosa dos games?", 3900, 9040, "Pistola radioativa", 26, 10, 2);
INSERT INTO tb_personagens (nome_personagem, bio_personagem, experiencia, moedas_totais, itens_especiais, quant_vitorias, quant_derrotas, classe_id) VALUES(
"Canguru Assassino", "Direto da Austrália, ele teve uma infancia difícil e nunca controlou a revolta que corria em suas veias. Ele está sempre disposto a matar", 7590, 8000, "Luva de boxe chumbada", 21, 28, 5); 

SELECT * FROM tb_personagens WHERE experiencia > 5000;

SELECT * FROM tb_personagens WHERE moedas_totais BETWEEN 8000 AND 12000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

SELECT nome_personagem AS "Nome do Personagem", bio_personagem AS "Descrição", tb_classes.nome_classe AS "Classe do personagem", experiencia AS "XP", itens_especiais AS "Itens especiais" FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT nome_personagem AS "Nome do Personagem", bio_personagem AS "Descrição", tb_classes.nome_classe AS "Classe do personagem", experiencia AS "XP", itens_especiais AS "Itens especiais", moedas_totais AS "Moedas acumuladas", quant_vitorias AS "Quantidade de vitórias" FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE nome_classe = "Atirador";