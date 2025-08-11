--- Definição: Calcula a média aritmética dos valores de uma coluna numérica (ignora valores NULL). ---
SELECT AVG(coluna1), coluna2
FROM nomeTabela
WHERE coluna2 condição;


--- Exemplo usando o SQLite Playground (tabela employees) ---
SELECT DEPARTMENT AS DEPARTAMENT, AVG(SALARY) AS SALARIO
FROM EMPLOYEES
GROUP BY DEPARTMENT;

-- Exibindo saída --
DEPARTAMENT | SALARIO
------------|--------
hr          |  74.00
it          | 100.40
sales       |  97.33
