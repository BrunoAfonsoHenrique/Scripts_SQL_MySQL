CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE produtos(
	id_produto BIGINT AUTO_INCREMENT,
    nome VARCHAR (50) NOT NULL,
    quantidade INT NOT NULL,
    preco FLOAT (10,2) NOT NULL,
    tipo VARCHAR (20) NOT NULL,
    PRIMARY KEY(id_produto)
);

SELECT * FROM produtos;

INSERT INTO produtos (nome, quantidade, preco, tipo) 
VALUES ("Geladeira", 6, 1800.65, "Eletrodomestico");

INSERT INTO produtos (nome, quantidade, preco, tipo) 
VALUES ("IPhone", 200, 4778, "Smartphone"),
	("TV Samsung", 18, 2200, "Televisores"),
    ("Notebook", 3, 3574, "Computador"),
    ("Caderno", 33, 14.35, "Papelaria"),
    ("Camiseta", 7, 60, "Roupas"),
    ("Tenis Adidas", 12, 430, "Calçados"),
    ("Harry Potter", 34, 2, "Livros");
    
SELECT * FROM produtos;

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = 34 WHERE id_produto = 8;

UPDATE produtos SET quantidade = 2 WHERE id_produto = 8;

UPDATE produtos SET nome = "PC Gamer 5000" WHERE id_produto = 4;

SELECT * FROM produtos;


