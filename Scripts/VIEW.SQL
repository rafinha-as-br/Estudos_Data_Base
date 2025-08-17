-- Definição: É uma tabela virtual baseada no result set de um SELECT. ---
--- VIEW SIMPLES -> RECUPERA LINHAS DE UMA ÚNICA TABELA 
--- VIEW COMPLEXA -> RECUPERA LINHAS DE VÁRIAS TABELAS


-- Como construir: Primeiro declare a criação ou reposição (CREATE OR REPLACE) e depois faça um select convencional 


CREATE OR REPLACE VIEW view_name AS -- cuidado pra não esquecer do AS!!!! --
SELECT comlumn1, column2...
FROM table_name
where condition;


--- Exemplo usando o Oracle SQL (esquema HR) ---
CREATE OR REPLACE VIEW VIEW2 AS
SELECT E.FIRST_NAME || ' ' || E.LAST_NAME AS FUNCIONARIO, E.EMPLOYEE_ID AS MATRICULA
FROM HR.EMPLOYEES E
WHERE E.SALARY > (
    SELECT AVG(S.SALARY)
    FROM HR.EMPLOYEES S
);

SELECT * FROM VIEW2;


-- Exibindo saída:
  FUNCIONARIO      | MATRICULA
-------------------|----------
  Steven King      |    100
  Neena Kochhar    |    101
  Lex De Haan      |    102
  Alexander Hunold |    103
  Nancy Greenberg  |    108
  Daniel Faviet    |    109
  John Chen        |    110