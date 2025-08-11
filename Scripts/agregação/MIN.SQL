--- Definição: Retorna o valor mais baixo de uma coluna numérica ou de data. ---
SELECT MIN(coluna)
FROM nomeTabela;

--- Exemplo usando o SQLite Playground (tabela employees) ---
SELECT NAME AS NOME, DEPARTMENT AS DEPARTAMENT, MIN(SALARY) AS SALARIO
FROM EMPLOYEES;

-- Exibindo saída --
 NOME  | DEPARTAMENT | SALARIO
-------|-------------|--------
 Diane |     hr      |  70   
