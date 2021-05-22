CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT,
    tipo_categoria VARCHAR(80) NOT NULL,
    PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria(tipo_categoria) VALUES
	("Medicamento referencia"),
    ("Medicamento generico"),
    ("Medicamento similar"),
    ("Medicamento similar intercambiavel"),
    ("Cosmeticos");
    
CREATE TABLE tb_produto(
	id_produto INT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    data_fabricacao DATE NOT NULL,
    data_validade DATE NOT NULL,
    preco FLOAT NOT NULL,
    quantidade INT NOT NULL,
    laboratorio VARCHAR(30) NOT NULL,
    fk_categoria INT NOT NULL,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_produto(nome, data_fabricacao, data_validade, preco, quantidade, laboratorio, fk_categoria)
	VALUES ("Cabazred", "2021-05-23", "2021-09-11", 6000, 5, "Doctor Reddy's", 1),
    ("Cabergolina", "2020-07-01", "2021-11-08", 23.99, 32, "Nova Química", 1),
    ("Hidratante Nivea", "2020-02-14", "2022-11-08", 27, 3, "Nivea", 5),
    ("Dorflex", "2021-01-9", "2021-12-30", 6.30, 16, "Sanofi Aventis", 2),
    ("Bepantol", "2020-07-26", "2023-05-03", 60, 80, "Bayer", 3),
    ("Protetor solar", "2020-01-01", "2021-03-01", 64, 13, "La Roche", 5),
    ("Shampoo", "2020-04-28", "2023-12-01", 8.90, 7, "Johnson e johnson",5),
    ("Tinta de cabelo", "2021-02-17", "2022-02-17", 36, 19, "Loreal", 5),
    ("Diclofenaco potassico", "2021-07-03", "2022-11-05", 36, 19, "Cimed", 4);
    
SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "B%";
    
SELECT * FROM tb_produto INNER JOIN tb_categoria
	ON tb_produto.fk_categoria = tb_categoria.id_categoria
    GROUP BY nome;
    
SELECT * FROM tb_produto INNER JOIN tb_categoria
	ON tb_produto.fk_categoria = tb_categoria.id_categoria
    WHERE tipo_categoria LIKE "Cosmeticos" GROUP BY nome;

    


