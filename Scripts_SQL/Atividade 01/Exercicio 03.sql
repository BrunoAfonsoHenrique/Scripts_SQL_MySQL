CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE alunos(
	id_aluno BIGINT AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
    idade INT NOT NULL,
    genero VARCHAR(20),
    nota FLOAT NULL,
    situacao VARCHAR (15),
    PRIMARY KEY (id_aluno)
);

SELECT * FROM alunos;

INSERT INTO alunos(nome, idade, genero, nota, situacao)
	values("Bruno", 26, "Masculino", 8.5, "Aprovado"),
    ("Amanda", 19, "Feminino", 4.0, "Reprovado"),
    ("Caio", 21, "Nao declarado", 8.5, "Aprovado"),
    ("Ana", 52, "Outros", 10.0, "Aprovado"),
    ("Jeferson", 30, "Masculino", 6.0, "Aprovado"),
    ("Rosana", 24, "Feminino", 9.8, "Aprovado"),
    ("Leticia", 36, "Feminino", 2.0, "Aprovado"),
    ("Michael", 18, "Não declarado", 7.5, "Aprovado");
    
UPDATE alunos SET situacao = "Reprovado" WHERE id_aluno = 7;

SELECT * FROM alunos WHERE nota > 7;

SELECT * FROM alunos WHERE nota < 7;

SELECT * FROM alunos WHERE situacao = "Reprovado";


    