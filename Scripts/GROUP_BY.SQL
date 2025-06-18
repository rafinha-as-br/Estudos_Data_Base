--- Definição: Agrupa (agregar) LINHAS (registros ou tuplas) ---

SELECT count(colunaSelecionada1), colunaSelecionada2
    -- (aqui, o count serve para somar a quantidades de ocorrências de uma coluna e coloca em uma mesma linha)
FROM nomeTabela
GROUP BY colunaSelecionada2



--- Exemplo usando o SQLite Playground (tabela employees) ---
SELECT count(name) as persons, department
FROM employees
GROUP BY department

-- Exibindo saída --
persons  | department
---------|------------
   2     |     HR     
   5     |     IT     
   3     |   Sales    

