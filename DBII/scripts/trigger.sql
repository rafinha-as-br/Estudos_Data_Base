-- Definição: São funções com códigos que são executados ao ocorrer uma operação de INSERT, UPDATE ou DELETE. 


-- Como construir 1 trigger: Primeiro o cabeçalho, depois o que será feito após o disparo

-- 1. Definir o tempo que ele ocorre (BEFORE | AFTER)
-- 2. Tipo de ação que dispara a ação (DELETE | INSERT | UPDATE)
-- 3. Qual a tabela (ON TABLE)
-- 4. Para linha ou statment (FOR EACH ROW | FOR EACH STATMENT)
-- 5. Qual a condição (WHEN)
-- 6. Declarar o que será feito (BEGIN)
-- 7. Fechar 

-- *

-- Para inserir um erro no console por conta de um trigger: raise_application_error(-20001,"String da mensagem");
-- dbms_output.put('string') => para colocar uma string no console




CREATE OR REPLACE TRIGGER NOMEDOTRIGGER
  {BEFORE | AFTER} {DELETE | INSERT | UPDATE OF (COLUNA1, COLUNA2, …)} ON table
{FOR EACH ROW | FOR EACH STATEMENT}
WHEN (condição)
DECLARE 
  nome_variavel tipo_de_variavel;
BEGIN
  AÇÕES_DO_TRIGGER
END;







