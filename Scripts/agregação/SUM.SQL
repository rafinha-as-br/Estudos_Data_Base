--- Definição: Retorna a soma total dos valores de uma coluna numérica. ---
SELECT SUM(coluna1), coluna2
FROM nomeTabela
GROUP BY coluna2

--- Exemplo usando o SQLite Playground (tabela expenses com adição de mais alguns anos...) ---
SELECT "YEAR" AS ANO, SUM(EXPENSE) AS DESPESAS_TOTAIS
FROM EXPENSES
GROUP BY YEAR;

-- Exibindo saída --
ANO  | DESPESAS_TOTAIS
-----|----------------
2018 |   85200.00
2019 |  114000.00
2020 |     868.00

