 CREATE DATABASE cool_pizzaria;
 
 USE cool_pizzaria;
 
 CREATE TABLE tb_categorias (
     PRIMARY KEY (id_categoria),
    id_categoria INT AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    faixa_preco VARCHAR(50) NOT NULL
);
 
 CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT,
    nome_pizza VARCHAR(120) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    tamanho VARCHAR(30) NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id_pizza),
	FOREIGN KEY (id_categoria)
	REFERENCES tb_categorias(id_categoria)
);
 
 
DROP TABLE tb_personagens;
DROP TABLE tb_classes;
DROP DATABASE cool_pizzaria;

 -- INSERINDO VALORES A TABELA CATEGORIAS
 INSERT INTO tb_categorias (nome_categoria, descricao, faixa_preco) VALUES
('Tradicional', 'Pizzas com sabores clássicos e mais consumidos.', 'Intermediária'),
('Premium', 'Pizzas com ingredientes selecionados e especiais.', 'Gourmet'),
('Doce', 'Pizzas com recheios doces e coberturas especiais.', 'Intermediária'),
('Vegetariana', 'Pizzas preparadas sem ingredientes de origem animal (exceto laticínios).', 'Intermediária'),
('Especial da Casa', 'Pizzas exclusivas com receitas próprias da pizzaria.', 'Gourmet');
 
 -- INSERINDO VALORES NA TABELA PIZZAS
 INSERT INTO tb_pizzas (nome_pizza, descricao, preco, tamanho, id_categoria) VALUES
('Pizza Calabresa', 'Calabresa com cebola e azeitonas', 39.90, 'Média', 1),
('Pizza Margherita', 'Mussarela, tomate e manjericão', 42.50, 'Grande', 1),
('Pizza Quatro Queijos', 'Mussarela, provolone, parmesão e gorgonzola', 55.00, 'Grande', 2),
('Pizza Frango com Catupiry', 'Frango desfiado com catupiry', 49.90, 'Média', 2),
('Pizza Chocolate', 'Chocolate ao leite com morangos', 47.00, 'Média', 3),
('Pizza Banana com Canela', 'Banana, açúcar e canela', 45.00, 'Grande', 3),
('Pizza Vegetariana Especial', 'Brócolis, palmito, champignon e tomate seco', 52.00, 'Grande', 4),
('Pizza Suprema da Casa', 'Mix de carnes nobres e molho especial', 65.00, 'Família', 5);


-- VISUALIZAÇÃO
SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

--  LIKE UTILIZADO PARA VISUALIZAR DADOS ONDE COMECEM E TERMINEM COM 'M'
SELECT * FROM tb_pizzas
WHERE nome_pizza LIKE '%M%';

-- UTILIZANDO INNER JOIN PARA JUNTAR AS DUAS TABELAS - ON CONDIÇÃO DE JUNÇÃO
SELECT * FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria;

SELECT * FROM tb_pizzas p
INNER JOIN tb_categorias c
    ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';
