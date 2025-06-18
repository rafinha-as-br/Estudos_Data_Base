--- Definição: Usado para buscar dados de uma ou mais tabelas. ---

-- 01 Em que tabelas estão os dados necessários?
    SELECT -- COLUNAS AINDA NÃO DEFINIDO
    FROM nomeDasTabelas

-- 02 Você precisa de todas as linahs ou precisa de um filtro?
    SELECT -- COLUNAS AINDA NÃO DEFINIDO
    FROM nomeDasTabelas
    WHERE filtroDeLinha (por exemplo nome="joão")
    
-- 03 Você precisa de todas as colunas ou somente de algumas 
    SELECT colunasSelecionadas -- (se deixar um asterisco " * ", ele seleciona todas as colunas )
    FROM nomeDasTabelas
    WHERE condição

--- Exemplo usando o SQLite Playground (tabela employees) ---
SELECT name, city
FROM employees
WHERE department= 'it'

-- Exibindo saída --
  Name   |  City  
---------|---------
 Emma    | London  
 Grace   | Berlin  
 Henry   | London  
 Irene   | Berlin  
 Frank   | Berlin  