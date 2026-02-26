CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE tb_produtos( PRIMARY KEY (id), id BIGINT AUTO_INCREMENT, nome VARCHAR(255) NOT NULL, 
categoria VARCHAR (255) NOT NULL, preco DECIMAL(6, 2) NOT NULL, estoque INT NOT NULL);

INSERT INTO tb_produtos (nome, categoria, preco, estoque) VALUES
('Sutiã Rendado com Bojo', 'Lingerie Feminina', 79.90, 40),
('Calcinha Fio Dental em Microfibra', 'Lingerie Feminina', 29.90, 60),
('Conjunto Lingerie Renda Luxo', 'Lingerie Feminina', 149.90, 25),
('Cueca Boxer Algodão Premium', 'Lingerie Masculina', 39.90, 70),
('Body Sensual em Tule', 'Lingerie Feminina', 119.90, 20),
('Pijama Short Doll Cetim', 'Moda Íntima', 89.90, 35),
('Robe Feminino em Renda', 'Moda Íntima', 139.90, 15),
('Meia-Calça Fio 40', 'Acessórios Íntimos', 24.90, 80);
INSERT INTO tb_produtos (nome, categoria, preco, estoque) VALUES
('Corset Luxo Bordado à Mão', 'Lingerie Premium', 599.90, 10),
('Kit 10 Conjuntos Lingerie Renda Premium', 'Lingerie Premium', 1299.90, 5);


UPDATE tb_produtos SET preco = 1550.99, estoque = 10 WHERE id = 10;


SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

SELECT * FROM tb_produtos;
 