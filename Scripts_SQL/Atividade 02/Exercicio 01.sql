CREATE DATABASE db_generation_game;

USE db_generation_game;

CREATE TABLE tb_classes(
	id_classe INT AUTO_INCREMENT NOT NULL,
	categoria_classe VARCHAR(20) NOT NULL,
    regiao VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_classe)
);

INSERT INTO tb_classes(categoria_classe, regiao)
	values("mago", "montanhas"),
    ("mercador", "cidade"),
    ("gatuno", "floresta"),
    ("elfo", "florestas magicas"),
    ("monstro", "montanhas sombrias");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagem(
	id_personagem INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(20) NOT NULL,
    ataque FLOAT NOT NULL,
    defesa FLOAT NOT NULL,
    arma VARCHAR(30) NOT NULL,
    poder varchar(30) not null,
    fk_classe_id INT NOT NULL,
	PRIMARY KEY (id_personagem),
    FOREIGN KEY (fk_classe_id) REFERENCES tb_classes (id_classe)
);


INSERT INTO tb_personagem(nome, ataque, defesa, arma, poder, fk_classe_id)
	VALUES("gandalf", 2638, 3000, "Gajado magico", "raios de magia", 1),
    ("gato de botas", 163, 300, "Espada", "Cortar rapidamente", 2),
    ("coelho pernalonga", 6000, 12000, "Tinta poderosa", "Lapis magico", 3),
    ("magi", 2500, 2500, "Flauta magica", "Ondas sonoras da morte", 1),
    ("legolas", 1868, 800, "Arco e flechas","Flechas afiada", 4),
    ("godzilla", 10000, 12000, "Megafone atomico","Raio Atomico", 5),
    ("harry potter", 1900, 1980, "Varinha", "Raio magico brilhoso", 1),
    ("zé das vendas", 26000, 19000, "panela eletrica", "Paneladas fortes", 2);


SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "C%";

SELECT * FROM tb_classes INNER JOIN tb_personagem 
	ON tb_classes.id_classe = tb_personagem.fk_classe_id;