--- Definição: Realiza comparações por padrão textual através do uso de curingas (há um arquivo dedicado apenas para curinas na pasta de conceitos)  ---

SELECT colunas
FROM tabela 
WHERE coluna LIKE 'padrão textual';

--- Exemplo do Oracle SQL (esquema HR) ---
SELECT E.FIRST_NAME || ' ' || E.LAST_NAME AS FUNCIONARIO
FROM HR.EMPLOYEES E
WHERE UPPER(E.LAST_NAME) LIKE '%SMITH%';

-- Exibindo saída:
FUNCIONARIO
-------------
Lindsey Smith
William Smit