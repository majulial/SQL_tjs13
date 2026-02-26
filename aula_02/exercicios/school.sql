CREATE DATABASE school;

USE school;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    serie VARCHAR(20) NOT NULL,
    media_geral DECIMAL(4,2) NOT NULL
);

INSERT INTO students (nome, data_nascimento, serie, media_geral) VALUES
('Ana Souza Lima', '2008-03-15', '9º Ano', 8.5),
('Bruno Almeida Costa', '2007-07-22', '1º Ano EM', 7.8),
('Camila Fernandes Rocha', '2009-01-10', '8º Ano', 9.2),
('Diego Martins Silva', '2006-11-05', '2º Ano EM', 6.9),
('Eduarda Santos Melo', '2008-05-30', '9º Ano', 8.0),
('Felipe Oliveira Ramos', '2007-09-18', '1º Ano EM', 7.5),
('Gabriela Pereira Alves', '2006-12-02', '3º Ano EM', 9.0),
('Henrique Carvalho Dias', '2009-04-25', '8º Ano', 8.3);

UPDATE students SET media_geral = 5.5 WHERE id = 8 OR id = 5;

SELECT nome, media_geral FROM students WHERE media_geral > 7;
SELECT nome, media_geral FROM students WHERE media_geral < 7;