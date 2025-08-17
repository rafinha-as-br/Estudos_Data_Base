-- Definição: Retorna apenas as linhas que possuem correspondência em ambas as tabelas (interseção).

SELECT COLUNA1, COLUNA2
FROM TABELA1 INNER JOIN TABELA2 ON TABELA1.COLUNA = TABELA2.COLUNA;

--- Exemplo usando o Oracle SQL (esquema HR) ---
SELECT e.name, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.id;

-- Exibindo saída:
 name   | department_name
--------|-----------------
 Alice  | IT
 Bob    | HR
