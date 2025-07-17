-- Seleciona todos para visualizar

SELECT * FROM TABELA_DE_PRODUTOS;

-- Mostra todas as diferentes marcas que não repetem

SELECT DISTINCT MARCA FROM TABELA_DE_PRODUTOS;

-- Classifica os produtos como: Produto Caro, Produto em Conta e Produto Barato

SELECT NOME, PRECO,
  (CASE WHEN PRECO >= 3000 THEN 'PRODUTO CARO'
        WHEN PRECO >= 1600 AND PRECO < 3000 THEN 'PRODUTO EM CONTA'
        ELSE 'PRODUTO BARATO'
        END) AS CLASSIFICACAO_PRODUTO
FROM TABELA_DE_PRODUTOS;

-- Filtra por data cadastrada

SELECT NOME, MARCA, DATA_CADASTRO FROM TABELA_DE_PRODUTOS WHERE DATA_CADASTRO > '24/09/21';
SELECT NOME, MARCA, DATA_CADASTRO FROM TABELA_DE_PRODUTOS WHERE DATA_CADASTRO < '24/09/21';

-- Filtrar a palavra monitor

SELECT NOME FROM TABELA_DE_PRODUTOS WHERE NOME LIKE '%Monitor%';

-- Filtra marcas específicas e ordena nome e marca

SELECT NOME, MARCA 
   FROM TABELA_DE_PRODUTOS 
   WHERE MARCA IN ('Samsung', 'LG')
   ORDER BY NOME, MARCA;
   
-- Faz um índice Rownum e filtra produtos de 1 a 4

SELECT ROWNUM, TABELA_DE_PRODUTOS.* FROM TABELA_DE_PRODUTOS WHERE ROWNUM < 5;

-- Traz exatamente a quantidade de produtos das marcas

SELECT MARCA, COUNT(*) FROM TABELA_DE_PRODUTOS
    GROUP BY MARCA
    ORDER BY MARCA;
    
-- Soma os valores dos produtos e traz marcas acessíveis

SELECT MARCA, SUM(PRECO) AS SOMA_DOS_PRECOS 
FROM TABELA_DE_PRODUTOS
GROUP BY MARCA
HAVING SUM(PRECO) <= 1000
ORDER BY MARCA, SOMA_DOS_PRECOS DESC;
    
-- Soma os valores dos produtos e traz marcas mais caras

SELECT MARCA, SUM(PRECO) AS SOMA_DOS_PRECOS 
   FROM TABELA_DE_PRODUTOS
   GROUP BY MARCA
   HAVING SUM(PRECO) > 1000
   ORDER BY MARCA, SOMA_DOS_PRECOS DESC;

-- Puxa somenteos notebooks e celulares

SELECT NOME, CATEGORIA 
   FROM TABELA_DE_PRODUTOS 
   WHERE CATEGORIA IN ('Celular', 'Notebook')
   ORDER BY NOME, CATEGORIA;