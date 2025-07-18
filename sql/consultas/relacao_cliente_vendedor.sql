-- Relação dos clientes

SELECT * FROM TABELA_DE_CLIENTES;
SELECT * FROM TABELA_DE_VENDEDORES;

-- Relação de clientes e vendedores

SELECT 
   TC.ID_CLIENTE,
   TC.NOME AS NOME_CLIENTE,
   TC.REGIAO AS REGIAO_CLIENTE,
   TC.MATRICULA AS MATRICULA_VENDEDOR,
   TV.NOME AS NOME_VENDEDOR
FROM 
   TABELA_DE_CLIENTES TC
INNER JOIN
   TABELA_DE_VENDEDORES TV
ON 
   TV.MATRICULA = TC.MATRICULA
ORDER BY 
   TC.ID_CLIENTE, TC.NOME, TC.REGIAO, TC.MATRICULA, TV.MATRICULA, TV.NOME;
   