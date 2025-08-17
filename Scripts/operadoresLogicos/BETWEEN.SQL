--- Definição: Verifica se um valor está dentro de um intervalo (inclusive os limites) ---

SELECT colunas
FROM tabela
WHERE coluna BETWEEN valor1 AND valor2

--- Exemplo do Oracle SQL (esquema HR) ---
SELECT E.FIRST_NAME || ' ' || E.LAST_NAME AS FUNCIONARIO, E.SALARY AS SALARIO
FROM HR.EMPLOYEES E
WHERE E.SALARY BETWEEN 2000 AND 3500;

-- Exibindo resultados: 
  FUNCIONARIO       | SALARIO  
--------------------|----------
 Alexander Khoo     |    3100  
 Shelli Baida       |    2900  
 Sigal Tobias       |    2800  
 Guy Himuro         |    2600  
 Karen Colmenares   |    2500  
 Julia Nayer        |    3200  
 Irene Mikkilineni  |    2700  
 James Landry       |    2400  