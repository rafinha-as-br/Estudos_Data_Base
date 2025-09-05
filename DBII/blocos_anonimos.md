1. Blocos Anônimos
Definição: Um bloco PL/SQL sem nome, que é escrito e executado imediatamente. Não pode ser armazenado no banco de dados.
Uso comum: Testes, execução rápida de lógica, scripts ad hoc.
Sintaxe:
DECLARE
   -- declaração de variáveis (opcional)
BEGIN
   -- código principal
EXCEPTION
   -- tratamento de erros (opcional)
END;


Exemplos de Blocos Anônimos:

-- Exemplo 1: Mensagem simples
BEGIN
   DBMS_OUTPUT.PUT_LINE('Hello, PL/SQL!');
END;

-- Exemplo 2: Uso de variável
DECLARE
   v_nome VARCHAR2(50) := 'João';
BEGIN
   DBMS_OUTPUT.PUT_LINE('Nome: ' || v_nome);
END;

-- Exemplo 3: Tratamento de exceção
BEGIN
   RAISE_APPLICATION_ERROR(-20001, 'Erro de teste.');
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Erro: ' || SQLERRM);
END;
