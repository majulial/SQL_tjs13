CREATE DATABASE db_quitanda; -- Criando banco

USE db_quitanda;

CREATE TABLE tb_produtos( -- Criando tabela
id bigint AUTO_INCREMENT, -- BIGINT (inteiro grande que comporta diversos valores inteiros
nome varchar(255) NOT NULL, -- Suporta 16 milhões de caractéres | NOT NULL - obriga o campo nome a ser preenchido
quantidade int, -- INT inteiro
data_validade date, -- Formato que armazena a data limite
preco decimal NOT NULL, -- Formato que aceita casas decimais com mais precisão (mais utilizado em valores monetários
PRIMARY KEY (id)
);

DROP TABLE tb_produtos; -- Excluindo tabela inteira 

-- Inserindo um único registro
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("tomate", 1000, "2026-03-21", 8.99);

-- Inserindo vários registros
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("banana", 11000, "2026-03-24", 12.99),
	   ("morango", 5000, "2030-05-15", 22.00),
       ("alface", 500, "2028-01-24", 6.40),
       ("beterraba", 14000, "2026-05-24", 9.50);
 -- *******************************************************************      

 
select * from tb_produtos; -- Visualizando tabela 

SELECT * FROM tb_produtos WHERE preco > 10.00;

SELECT * FROM tb_produtos WHERE preco < 10.00;

-- OR Utilizado nas situações: TRUE = TRUE (Se as duas opções tiverem), FALSE = TRUE, TRUE = FALSE (No caso um ou outro)

SELECT * FROM tb_produtos WHERE nome = "banana" OR preco > 20.00;

 -- AND Apenas utilizado no caso se as duas opções forem TRUE = TRUE,
 -- ou seja, se as duas opções tiverem, caso contrário não aparece,
 -- mesmo se uma das opções existirem.
 
SELECT * FROM tb_produtos WHERE nome = "banana" AND preco > 20.00;

-- Visualizar apenas produtos diferentes

SELECT * FROM tb_produtos WHERE nome != "banana";

-- Formatando para visualizar data em brasileiro e preço na moeda pt-BR.
 --                    |Formatando a saida da data| Dando apelido para a data (necessário)
SELECT nome, DATE_FORMAT(data_validade, '%d/%m/%Y') AS Data_Validade,
-- |CONCAT para ADD 'R$'| FORMAT para ADD 2 casas decimais no preço e formatar a moeda | AS para dar apelido
 CONCAT('R$: ', FORMAT(preco, 2, 'pt_BR')) AS Preco FROM tb_produtos;
 -- *******************************************************************  
-- Alterando os valores ta tabela (nome, preço e etc)
UPDATE  tb_produtos SET preco = 8.99 WHERE  id = 1 OR id = 2; 


DELETE FROM tb_produtos WHERE id = 2;

SET SQL_SAFE_UPDATES = 0; -- Retirando trava de segurança do MySQL (Trocando 0 por 1, volta a trava)

-- COMANDOS ESTRUTURAIS

ALTER TABLE  tb_produtos MODIFY preco decimal(6, 2); -- ALTER TABLE apenas modifica a estrutura da tabela 
-- Alterando seção de uma tabela incluindo limite de até 6 números com os 2 últimos sendo decimais 


ALTER TABLE tb_produtos ADD descricao varchar(500); -- ADD  atributos a tabela 

-- Alterando nome do atributo da tabela 
ALTER TABLE tb_produtos CHANGE descricao descricao_produto varchar(500);

ALTER TABLE tb_produtos DROP descricao; -- Excluindo atributo (seção) da tabela

