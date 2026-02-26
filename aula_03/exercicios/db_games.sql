CREATE DATABASE db_valorant;

USE db_valorant;

CREATE TABLE tb_classes (
    id INT  AUTO_INCREMENT,
    nome_classe VARCHAR(30) NOT NULL,
    descricao TEXT NOT NULL,
    foco_tatico VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_classes (nome_classe, descricao, foco_tatico) VALUES
('Duelista',
 'Especialistas em combate direto e entrada agressiva nos pontos.',
 'Entrada agressiva'),
('Controlador',
 'Responsáveis por controlar áreas do mapa utilizando habilidades de bloqueio de visão.',
 'Controle de área'),
('Sentinela',
 'Especialistas em defesa e proteção da equipe.',
 'Suporte defensivo'),
('Iniciador',
 'Agentes focados em coletar informações e preparar o time para avançar.',
 'Coleta de informação'),
('Sentinela',
 'Classe voltada para auxílio estratégico e fortalecimento da equipe.',
 'Apoio estratégico');
 
 SELECT * FROM tb_classes;

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT,
    nome_agente VARCHAR(255) NOT NULL,
    funcao VARCHAR(255) NOT NULL,
    nacionalidade VARCHAR(255) NOT NULL,
    habilidade_especial VARCHAR(255) NOT NULL,
    id_classe INT,
    PRIMARY KEY (id),
	FOREIGN KEY (id_classe)
	REFERENCES tb_classes(id)
    ON UPDATE CASCADE
	ON DELETE RESTRICT
);

INSERT INTO tb_personagens (nome_agente, funcao, nacionalidade, habilidade_especial)
VALUES
('Jett', 'Duelista', 'Sul-Coreana', 'Mobilidade aérea e controle de vento'),
('Sova', 'Iniciador', 'Russa', 'Reconhecimento e rastreamento com arco tecnológico'),
('Sage', 'Sentinela', 'Chinesa', 'Cura e ressuscitação de aliados'),
('Phoenix', 'Duelista', 'Britânica', 'Manipulação de fogo e regeneração'),
('Cypher', 'Sentinela', 'Marroquina', 'Vigilância e coleta de informações estratégicas');

select * from tb_personagens; 

-- UTILIZANDO IN PARA VERIFICAR SE EXISTE UM OU OUTRO 
SELECT * FROM tb_personagens
WHERE funcao IN ('Duelista', 'Controlador');

-- LIKE PARA VISUALIZAR TODO DADO QUE ESTEJA COMEÇANDO OU TERMINANDO COM A LETA 'C'
SELECT * FROM tb_personagens
WHERE nome_agente LIKE '%C%';

SELECT *
FROM tb_personagens p
INNER JOIN tb_classes c 
ON p.id = c.id;

SELECT 
    *
FROM tb_personagens p
INNER JOIN tb_classes c 
    ON p.id = c.id
WHERE c.nome_classe = 'Sentinela';




DROP TABLE tb_personagens;
DROP TABLE tb_classes;
DROP DATABASE db_valorant;