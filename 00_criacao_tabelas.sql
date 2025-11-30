CREATE DATABASE IF NOT EXISTS sistema_escolar;
USE sistema_escolar;

CREATE TABLE aluno (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL
);

CREATE TABLE professor (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE diretor (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE turma (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    serie VARCHAR(20) NOT NULL,
    ano INT NOT NULL,
    codigo_diretor INT NOT NULL,
    FOREIGN KEY (codigo_diretor) REFERENCES diretor(codigo)
);

CREATE TABLE nota (
    idNota INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(4,2) NOT NULL,
    data DATE NOT NULL,
    codigo_aluno INT NOT NULL,
    codigo_turma INT NOT NULL,
    codigo_professor INT NOT NULL,
    FOREIGN KEY (codigo_aluno) REFERENCES aluno(codigo),
    FOREIGN KEY (codigo_turma) REFERENCES turma(codigo),
    FOREIGN KEY (codigo_professor) REFERENCES professor(codigo)
);
