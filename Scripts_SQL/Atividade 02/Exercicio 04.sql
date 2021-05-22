CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT,
    tipo_categoria VARCHAR(80) NOT NULL,
    PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria(tipo_categoria) VALUES
	("Moveis"),
    ("Iluminacao"),
    ("Jardinagem"),
    ("Construcao"),
    ("Tintas"),
    ("Decoracao");

CREATE TABLE tb_produto(
	id_produto INT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    preco FLOAT NOT NULL,
    quantidade INT NOT NULL,
    fk_categoria INT NOT NULL,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_produto(nome, preco, quantidade, fk_categoria)
	VALUES ("Abajur", 347, 5, 2),
    ("Cimento", 347, 20, 4),
    ("Papel de parede", 42, 17, 6),
    ("Carpete florido", 721.45, 5, 6),
    ("Azulejo", 2000, 60, 4),
    ("Vaso", 32, 40, 3),
    ("Tinta impermavel", 220, 2, 5),
    ("Sofa", 4000, 3, 1);
    
SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "C%";

SELECT * FROM tb_produto INNER JOIN tb_categoria
	ON tb_produto.fk_categoria = tb_categoria.id_categoria
    WHERE tipo_categoria LIKE "Decoracao" GROUP BY nome;

