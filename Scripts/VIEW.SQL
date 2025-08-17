-- Definição: É uma tabela virtual baseada no result set de um SELECT. ---

-- Como construir: Primeiro declare a criação ou reposição (CREATE OR REPLACE) e depois faça um select convencional 

CREATE OR REPLACE VIEW view_name AS -- cuidado pra não esquecer do AS!!!! --
SELECT column1, column2...
FROM table_name
WHERE condition;

--- VIEWS COMPLEXAS: Recuperam dados de uma única tabela ---

-- Exemplo usando o Oracle SQL (esquema HR) ---
CREATE OR REPLACE VIEW VIEWSIMPLES AS
SELECT E.FIRST_NAME || ' ' || E.LAST_NAME AS FUNCIONARIO, E.EMPLOYEE_ID AS MATRICULA
FROM HR.EMPLOYEES E
WHERE E.SALARY > (
    SELECT AVG(S.SALARY)
    FROM HR.EMPLOYEES S
);

SELECT * FROM VIEWSIMPLES;

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

  

--- VIEWS COMPLEXAS: Recuperam dados de várias tabelas usando JOINs, subqueries ou funções agregadas

-- Exemplo usando o Oracle SQL (esquema HR) ---
CREATE OR REPLACE VIEW VIEWCOMPLEXA AS
SELECT E.FIRST_NAME || ' ' || E.LAST_NAME AS FUNCIONARIO,
       D.DEPARTMENT_NAME,
       J.JOB_TITLE
FROM HR.EMPLOYEES E
INNER JOIN HR.DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
INNER JOIN HR.JOBS J ON E.JOB_ID = J.JOB_ID
WHERE D.DEPARTMENT_NAME = 'Sales';

SELECT * FROM VIEWCOMPLEXA;

-- Exibindo saída:
FUNCIONARIO       | DEPARTMENT_NAME | JOB_TITLE              
------------------|-----------------|------------------------
John Russell      | Sales           | Sales Manager          
Karen Partners    | Sales           | Sales Manager          
Alberto Errazuriz | Sales           | Sales Manager          
Gerald Cambrault  | Sales           | Sales Manager          
Eleni Zlotkey     | Sales           | Sales Manager          
Peter Tucker      | Sales           | Sales Representative   
David Bernstein   | Sales           | Sales Representative   



--- VIEWS SOMENTE LEITURA (READ-ONLY): Impedem alterações (INSERT, UPDATE, DELETE) diretamente na view, podem ser usadas com ou sem nome de constraint ---

-- Exemplo simples:
CREATE OR REPLACE VIEW v_readonly AS
SELECT first_name, last_name
FROM employees
WITH READ ONLY;

-- Exemplo com nome de constraint (Uso no Oracle):
CREATE OR REPLACE VIEW EMP_GEP_CONST AS 
SELECT EMPLOYEE_ID, LAST_NAME, SALARY
FROM EMPLOYEES
WITH READ ONLY CONSTRAINT APENAS_LEITURA;

-- Observação: A versão com "CONSTRAINT nome" permite referência futura ou documentação e nem todos os SGBDs suportam nome de constraint em views
 
