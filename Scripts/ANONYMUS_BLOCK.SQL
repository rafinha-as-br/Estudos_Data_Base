-- DEFINIÇÃO: uma instrução executável que pode conter comandos de controle PL/SQL e comandos SQL,
-- utilizado em para implementar a lógica processual em uma linguagem de script. NÃO POSSUI NOME NEM É ARMAZENADO NO BANCO


-- ------------------------ Como fazer uma exception: -------------------------------





-- Sintaxes:
DECLARE -- não é necessário se você não for utilizar uma variável extra 
  nome_variável_1 tipo_da_variável;
  excepion1 EXCEPTION;
BEGIN

   ações a serem feitas

   -- se você for usar exceptions, não se esqueça de lançar cada uma delas!

EXCEPTION -- Não é necessário se você não precisar de exceptions

-- Cada excecption deve ser descrita aqui!
  WHEN excepion1 THEN

END;
 
-- Exemplo usando OracleLiveSQL (imprimir tabuada )
DECLARE 
    V_N CONSTANT NUMBER(2) := 5;
BEGIN 
    FOR I IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(V_N || ' X ' || I || ' = ' || V_N*I);
    END LOOP;
END;





-- Variável Cursor


-- Antes é necessário entender sobre %ROWTYPE e %TYPE 
-- %ROWTYPE -> Retorna um tipo de registro que representa a linha de uma tabela ou do resultado de uma consult
-- %TYPE -> Retorna um único tipo de variável com um único campo 

-- ver sobre RECORDS



