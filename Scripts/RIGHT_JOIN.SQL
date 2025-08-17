--- Definição: Retorna todas as linhas da tabela da direita + correspondentes da esquerda.

SELECT colunas
FROM tabela1 t1 RIGHT JOIN tabela2 t2 ON t1.coluna = t2.coluna;


--- Exemplo usando o Oracle SQL (esquema HR) ---
SELECT e.name, d.department_name
FROM employees e RIGHT JOIN departments d ON e.department_id = d.id;

-- Exibindo saída:
 name   | department_name
--------|-----------------
 Alice  | IT
 Bob    | HR
 NULL   | Finance   -- sem funcionário
