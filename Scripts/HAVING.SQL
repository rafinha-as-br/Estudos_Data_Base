--- Definição: Filtra resutados de agregações (depois do GROUP BY)
SELECT count(colunaSelecionada1), colunaSelecionada2
    -- (aqui, o count serve para somar a quantidades de ocorrências de uma coluna e coloca em uma mesma linha)
FROM nomeTabela
GROUP BY colunaSelecionada2
HAVING filtro para colunaSelecionada2

--- Exemplo usando o SQLite Playground (tabela employees) ---
SELECT count(name) as persons, department
FROM employees
GROUP BY department
HAVING count(*)>3

-- Exibindo saída
 persons | department
---------|-----------
    5    |    it    