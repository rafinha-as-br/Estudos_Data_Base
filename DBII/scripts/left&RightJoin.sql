
select nome_cidade, uf, nome_estado
from cidades C inner join estados E on E.UF = E.UF

-- (Tabela cidades com cod, nome e UF, tabela UF com UF e nome de estado)