--- Definição: Retorna o valor mais alto de uma coluna numérica ou de data. ---

SELECT MAX(coluna)
FROM nomeTabela

--- Exemplo usando o SQLite Playground (tabela employees) ---
SELECT NAME AS NOME, DEPARTMENT AS DEPARTAMENT, MAX(SALARY) AS SALARIO
FROM EMPLOYEES;

-- Exibindo saída --
 NOME  | DEPARTAMENT | SALARIO
-------|-------------|--------
 Frank |     it      |  120   



