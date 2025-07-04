--- Definição: Comparar múltiplas condições dentro de um filtro (condição 1 OU condição 2) ---

-- 01 Em que tabelas estão os dados necessários?
    SELECT -- COLUNAS AINDA NÃO DEFINIDO
    FROM nomeDasTabelas

-- 02 Você precisa de todas as linhas ou precisa de um filtro?
    SELECT -- COLUNAS AINDA NÃO DEFINIDO
    FROM nomeDasTabelas
    WHERE condição1 OR condição2 -- (aqui o where está verificando se o filtro atende a uma das condições)
        
-- 03 Você precisa de todas as colunas ou somente de algumas 
    SELECT colunasSelecionadas -- (se deixar um asterisco " * ", ele seleciona todas as colunas )
    FROM nomeDasTabelas
    WHERE condição1 OR condição2


--- Exemplo usando o SQLite Playground (tabela employees modificada com mais dados...) ---

SELECT name, cpf, state, department, job
FROM EMPLOYEES 
WHERE state='CA' OR state='TX';

-- Exibindo saída --
 name           |     cpf      | state |   department       |      job          
----------------|--------------|-------|--------------------|----------------------
 Bob Smith      | 23456789012  |  CA   |  Operations        | Project Manager
 Diana Prince   | 45678901234  |  TX   |  Design            | UX Designer
 George Wilson  | 78901234567  |  TX   |  Marketing         | Marketing Specialist
 Hannah Moore   | 89012345678  |  CA   |  Product           | Product Owner
 Ian Miller     | 90123456789  |  TX   |  IT                | DevOps Engineer
 Jenna Lewis    | 11223344556  |  CA   |  IT                | Junior Developer
 Kevin Adams    | 22334455667  |  TX   |  Quality Assurance | QA Engineer
 Oscar Harris   | 66778899001  |  TX   |  IT                | Network Admin
 Paula Martin   | 77889900112  |  CA   |  Human Resources   | HR Specialist
 Victoria Hall  | 14151617181  |  TX   |  Marketing         | Content Strategist
 Frankie James  | 24758697089  |  CA   |  Product           | Product Manager
