--- Definição: Somar múltiplas condições dentro de um filtro (condição 1 + condição 2) ---

-- 01 Em que tabelas estão os dados necessários?
    SELECT -- COLUNAS AINDA NÃO DEFINIDO
    FROM nomeDasTabelas

-- 02 Você precisa de todas as linhas ou precisa de um filtro?
    SELECT -- COLUNAS AINDA NÃO DEFINIDO
    FROM nomeDasTabelas
    WHERE condição1 AND condição2 -- (aqui o where está verificando se há duas condições)
        
-- 03 Você precisa de todas as colunas ou somente de algumas 
    SELECT colunasSelecionadas -- (se deixar um asterisco " * ", ele seleciona todas as colunas )
    FROM nomeDasTabelas
    WHERE condição1 AND condição2 -- (aqui o where está verificando se há duas condições)

--- Exemplo usando o SQLite Playground (tabela employees modificada com mais dados...) ---
SELECT name, age, department, job, salary
FROM EMPLOYEES
WHERE DEPARTMENT='IT' AND salary>5000;

-- Exibindo saída --
 name            | age | department |        job           | salary
-----------------|-----|------------|----------------------|--------
 Alice Johnson   |  29 |     IT     | Software Engineer    |  85000
 Ethan Brown     |  27 |     IT     | Software Engineer    |  82000
 Ian Miller      |  48 |     IT     | DevOps Engineer      |  91000
 Jenna Lewis     |  25 |     IT     | Junior Developer     |  60000
 Oscar Harris    |  35 |     IT     | Network Admin        |  70000
 Quentin Rogers  |  50 |     IT     | IT Director          | 120000
 Steven Scott    |  29 |     IT     | Software Engineer    |  86000
 Ulysses Reed    |  34 |     IT     | Full Stack Developer | 88000
 William Young   |  44 |     IT     | Security Analyst     |  83000
 Yasmin Campbell |  26 |     IT     | Intern               |  40000
 Zachary Bell    |  31 |     IT     | Database Admin       |  90000
 Amelia Stone    |  35 |     IT     | System Analyst       |  74000
 Brandon Ward    |  28 |     IT     | Web Developer        |  78000
 Derek Hunter    |  39 |     IT     | Cloud Engineer       |  98000
 Kylie Adams     |  24 |     IT     | Junior Developer     |  59000
 Liam Clark      |  36 |     IT     | Software Architect   | 105000