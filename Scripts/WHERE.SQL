--- Definição: Filtrar uma linha antes de fazer uma agregação ---

SELECT coluna1, coluna2
FROM nomeTabela
WHERE coluna2 condição;

--- Exemplo usando o SQLite Playground (tabela employees) ---
SELECT NAME AS NOME, DEPARTMENT AS DEPARTAMENT, SALARY AS SALARIO
FROM EMPLOYEES
WHERE SALARY>100;

-- Exibindo saída --
  ID  |  name   |  city  | department | salary
------|---------|--------|------------|--------
  23  |  Henry  | London |     it     |  104   
  24  |  Irene  | Berlin |     it     |  104   
  25  |  Frank  | Berlin |     it     |  120   


