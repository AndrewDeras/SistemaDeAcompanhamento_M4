CREATE DATABASE resilia_educacao;
USE resilia_educacao;

CREATE TABLE cursos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60),
    carga_horaria VARCHAR(60),
    preco DOUBLE
);

INSERT INTO cursos (nome, carga_horaria, preco) VALUES ("desenvolvedor web fullstack", "400", 1000.00);
INSERT INTO cursos (nome, carga_horaria, preco) VALUES ("analista de dados", "200", 900.00);

CREATE TABLE professores(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60),
    sobrenome VARCHAR(60),
    formacao VARCHAR(60)
);

INSERT INTO professores (nome, sobrenome, formacao) VALUES ("Jaqueline", "Freitas", "Desenvolvedora Web Pleno");
INSERT INTO professores (nome, sobrenome, formacao) VALUES ("Bianca", "Baptista", "Analista de dados");

CREATE TABLE alunos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60),
    sobrenome VARCHAR(60),
    cpf VARCHAR(14),
    data_nascimento DATE
);

INSERT INTO alunos (nome, sobrenome, cpf, data_nascimento) VALUES ("Joaquim", "Sales", "256.589.446-12", "2002/02/09");
INSERT INTO alunos (nome, sobrenome, cpf, data_nascimento) VALUES ("Caio", "Farias", "336.856.666-22", "1995/05/19");

CREATE TABLE turmas(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    codigo_turma VARCHAR(60),
    inicio DATE,
    fim DATE,
    curso_id INT,
    professor_id INT,
    FOREIGN KEY (curso_id) REFERENCES cursos(id),
    FOREIGN KEY (professor_id) REFERENCES professores(id)
);

INSERT INTO turmas (codigo_turma, inicio, fim, curso_id, professor_id) VALUES ("DW1001", "2023/02/02", "2023/08/05", 1, 1);
INSERT INTO turmas (codigo_turma, inicio, fim, curso_id, professor_id) VALUES ("AD1001", "2023/02/02", "2023/07/05", 2, 2);

CREATE TABLE matriculas(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    matricula VARCHAR(60),
    aluno_id INT,
    turma_id INT,
    FOREIGN KEY (aluno_id) 	REFERENCES alunos(id),
    FOREIGN KEY (turma_id) 	REFERENCES turmas(id)
);

INSERT INTO matriculas (matricula, aluno_id, turma_id) VALUES ("00001", 1, 1);
INSERT INTO matriculas (matricula, aluno_id, turma_id) VALUES ("00002", 2, 2);








