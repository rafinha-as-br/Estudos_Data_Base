-- DEFINIÇÃO: uma instrução executável que pode conter comandos de controle PL/SQL e comandos SQL,
-- utilizado em para implementar a lógica processual em uma linguagem de script. NÃO POSSUI NOME NEM É ARMAZENADO NO BANCO


-- Sintaxes:
DECLARE -- não é necessário se você não for utilizar uma variável extra 
  nome_variável_1 tipo_da_variável;
BEGIN
   ações a serem feitas
EXCEPTION -- Não é necessário se você não precisar de exceptions
  Exception section
END;

-- Exemplo usando OracleLiveSQL (imprimir tabuada)
DECLARE 
    V_N CONSTANT NUMBER(2) := 5;
BEGIN 
    FOR I IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(V_N || ' X ' || I || ' = ' || V_N*I);
    END LOOP;
END;