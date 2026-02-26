CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores(
	PRIMARY KEY (id),
	id int AUTO_INCREMENT,
    nome varchar (255) NOT NULL,
    cargo varchar (255),
    departamento varchar (255) NOT NULL,
    tempo_empresa varchar (255) NOT NULL,
    salario decimal NOT NULL);
    
    
INSERT INTO tb_colaboradores(nome, cargo, departamento, tempo_empresa, salario)
VALUES ("Ana Souza", "Analista Financeiro", "Financeiro", "3 anos", 5800.00),
	   ("Carlos Mendes", "Desenvolvedor Júnior", "TI", "1 ano", 4200.00),
       ("Júlia Lima", "Desenvolvedora Júnior", "TI", "2 anos", 4400.00),
       ("Rafael Costa", "Coordenador de Vendas", "Comercial", "7 anos", 8500.00),
       ("Mariana Alves", "Assistente de RH", "Recursos Humanos", "2 anos", 4000.00),
       ("Pedro Henrique", "Estagiário de TI", "TI", "6 meses", 1500.00);
       
       
       -- ALTERANDO TABELA INCLUINDO LIMITE + ADICIONANDO 2 NUMEROS DECIMAIS
       ALTER TABLE tb_colaboradores MODIFY salario decimal(6, 2);
       
       -- ATT DADO TABELA
       UPDATE tb_colaboradores SET salario = 1800.00 WHERE id = 6;
	
       -- EXCLUINDO TABELA INTEIRA
       DROP TABLE tb_colaboradores;
       
       -- VISUALIZANDO COM FORMATAÇÃO DE MOEDA
       SELECT nome,
       -- |CONCAT para ADD 'R$'| FORMAT para ADD 2 casas decimais no preço e formatar a moeda | AS para dar apelido
       CONCAT('R$: ', FORMAT(salario, 2, 'pt_BR')) AS Sal FROM tb_colaboradores;
       
       -- VIZUALIZANDO COM UTILIZAÇÃO DE MAIOR E MENOR + POR ORDEM CRESCENTE 
       SELECT * FROM tb_colaboradores WHERE salario < 2000.00;
       SELECT * FROM tb_colaboradores WHERE salario > 2000.00 ORDER BY nome ASC;
       
       -- VIZUALIZANDO COM FORMATAÇÃO DE MOEDA E POR ORDEM DECRESCENTE
       SELECT nome, CONCAT('R$: ', FORMAT(salario, 2, 'pt_BR')) AS Sal FROM tb_colaboradores ORDER BY nome DESC;
	
       -- VIZUALIZANDO TODA TABELA
       SELECT * FROM tb_colaboradores;
    
    
    