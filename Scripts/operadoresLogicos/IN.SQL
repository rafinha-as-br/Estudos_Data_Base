--- Definição: Verifica se um valor está em uma lista de valores específicos ---
-- Gosto de relacionar o IN com o 'contains' do Java 

SELECT colunas
FROM tabela 
WHERE coluna IN (valor1, valor2...);

--- Exemplo do Oracle SQL (esquema HR) ---
SELECT E.FIRST_NAME || ' ' || E.LAST_NAME AS FUNCIONARIO, E.DEPARTMENT_ID 
FROM HR.EMPLOYEES E
WHERE E.DEPARTMENT_ID IN (10, 20, 30);

-- Exibindo saída:
FUNCIONARIO      | DEPARTMENT_ID
-----------------|-------------
Jennifer Whalen  |      10
Michael Hartstein|      20
Pat Fay          |      20
Den Raphaely     |      30
Alexander Khoo   |      30
Shelli Baida     |      30


