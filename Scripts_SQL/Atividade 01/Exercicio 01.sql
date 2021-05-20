CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionaries(
	id_funcionarie BIGINT AUTO_INCREMENT,
	nome VARCHAR(40) NOT NULL,
    telefone VARCHAR (20) NOT NULL,
    dt_nascimento DATE,
    cpf VARCHAR(11),
    salario FLOAT,
    PRIMARY KEY(id_funcionarie)
);

SELECT * FROM tb_funcionaries;

INSERT INTO tb_funcionaries(nome, telefone, dt_nascimento, cpf, salario)
	VALUES ("Bruno Afonso", "11988888888", '1994-12-24', '11111111111', 3500);
    
INSERT INTO tb_funcionaries(nome, telefone, dt_nascimento, cpf, salario)
	VALUES ("Ana Paula", "11966666666", '2000-03-15', '22222222222', 1500),
    ("Maria", "11977777777", '1984-08-11', '44444444444', 5000),
    ("Jose", "11933333333", '1990-06-30', '77777777777', 1500),
    ("Caio", "11922222222", '1997-11-14', '66666666666', 1200);
    
SELECT * FROM tb_funcionaries;

SELECT * FROM tb_funcionaries WHERE salario > 2000;

SELECT * FROM tb_funcionaries WHERE salario < 2000;

UPDATE tb_funcionaries SET salario = 15000 WHERE id_funcionarie = 2;

SELECT * FROM tb_funcionaries;