-- Definição: São funções com códigos que são executados ao ocorrer uma operação de INSERT, UPDATE ou DELETE. ---

-- Como construir: A lógica padrão é: Primeiro o cabeçalho (pontos 1 a 5), depois o que será feito após o disparo (pontos 6 e 7)

CREATE OR REPLACE TRIGGER NOMEDOTRIGGER

-- 1. Definir o tempo que ele ocorre (BEFORE | AFTER)
-- 2. Tipo de ação que dispara a ação (DELETE | INSERT | UPDATE)
-- 3. Qual a tabela (ON TABLE)
  {BEFORE | AFTER} {DELETE | INSERT | UPDATE OF (COLUNA1, COLUNA2, …)} ON table

-- 4. Para linha ou statment? (FOR EACH ROW | FOR EACH STATMENT)
{FOR EACH ROW | FOR EACH STATEMENT}

-- 5. Qual a condição? (WHEN)
WHEN (condição)

-- Não é obrigatório, mas pode ser que precisa de uma variável local
DECLARE 
  nome_variavel tipo_de_variavel;

-- 6. Declarar o que será feito (BEGIN)
BEGIN
  AÇÕES_DO_TRIGGER

-- 7. Fechar a declaraçã do que será feito 
END;



--- Exemplo usando o Oracle SQL (esquema especial de tabelas, não citado aqui, o objetivo é que acada atualização de valor nos produtos ele vai atualizar a tabela de histórico de preços...) ---
CREATE OR REPLACE TRIGGER TRIGGER_EXEMPLO
AFTER UPDATE OF PRD_VALOR ON PRODUTOS
FOR EACH ROW
BEGIN
	INSERT INTO HISTORICO_PRECOS (PRD_CODIGO, DATA, PRD_PRECO_ANTIGO, PRD_PRECO_NOVO, USUARIO_SISTEMA)
	VALUES(:NEW.PRD_CODIGO, SYSDATE, :OLD.PRD_VALOR, :NEW.PRD_VALOR, USER);
END;


