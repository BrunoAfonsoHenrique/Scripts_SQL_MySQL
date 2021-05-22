CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id_categoria INT AUTO_INCREMENT,
    nome_categoria VARCHAR (50) NOT NULL,
    preco FLOAT NOT NULL,
    validade_pizza DATE NOT NULL,
    PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categorias(nome_categoria, preco, validade_pizza)
	VALUES("pizza vegana", 137, "2021-05-23"),
    ("pizza frita", 32, "2021-05-23"),
    ("pizza havaina", 68, "2021-05-25"),
    ("pizza diet", 87, "2021-05-22"),
    ("Cone em pizza", 55, "2021-05-22");
    
CREATE TABLE tb_pizza(
	id_venda INT AUTO_INCREMENT,
    hora_venda TIME NOT NULL,
    tipo_entrega VARCHAR(30),
    metodo_pagamento VARCHAR (30),
    complemento VARCHAR (10),
    fk_categorias INT,
    PRIMARY KEY (id_venda),
    FOREIGN KEY (fk_categorias) REFERENCES tb_categorias(id_categoria)
);

DROP TABLE tb_categorias; /* testando exclusão de tabela com referência (ERRO) */

INSERT INTO tb_pizza(hora_venda, tipo_entrega , metodo_pagamento, complemento,fk_categorias)
	values("19:34:00", "envio motoboy", "debito", "sim",1),
    ("19:34:00", "envio motoboy", "debito", "sim",2),
    ("22:47:00", "retirada local", "credito", "nao",2),
    ("20:03:00", "retirada local", "debito", "sim",3),
    ("18:17:34", "envio motoboy", "credito", "nao",3),
    ("23:11:45", "envio motoboy", "credito", "nao",4),
    ("23:24:13", "retirada local", "credito", "sim",5),
    ("01:04:38", "envio motoboy", "debito", "sim",1);

SELECT * FROM tb_categorias 
	LEFT JOIN tb_pizza ON tb_categorias.id_categoria = tb_pizza.id_venda
    WHERE preco > 45
    UNION
    SELECT * FROM tb_categorias 
	RIGHT JOIN tb_pizza ON tb_categorias.id_categoria = tb_pizza.id_venda
    WHERE preco > 45;

SELECT * FROM tb_categorias WHERE preco > 45;

SELECT * FROM tb_categorias 
	INNER JOIN tb_pizza ON tb_categorias.id_categoria = tb_pizza.id_venda
    WHERE preco BETWEEN 29 AND 60;

SELECT * FROM tb_categorias WHERE preco BETWEEN 29 AND 60;

SELECT id_categoria, nome_categoria, preco FROM tb_categorias
	WHERE nome_categoria LIKE "C%";
    
SELECT * FROM tb_categorias 
	INNER JOIN tb_pizza ON tb_categorias.id_categoria = tb_pizza.fk_categorias;

SELECT * FROM tb_categorias INNER JOIN tb_pizza
	ON tb_categorias. id_categoria = tb_pizza.fk_categorias
    WHERE nome_categoria LIKE "Pizza diet" GROUP BY nome_categoria;

    