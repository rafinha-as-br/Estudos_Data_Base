--- Definição: Ordernar os valores de uma consulta ---

SELECT *
FROM nomeDasTabelas
WHERE filtro
ORDER BY nomeTabela

--- Exemplo usando o SQLite Playground (tabela employees) ---
SELECT * 
FROM employees
WHERE department='it'
ORDER BY name

-- Exibindo saída --
  ID  |  name   |  city  | department | salary
------|---------|----------|--------------|--------
  21  |  Emma   |  London  |      it      |   84   
  25  |  Frank  |  Berlin  |      it      |  120   
  22  |  Grace  |  Berlin  |      it      |   90   
  23  |  Henry  |  London  |      it      |  104   
  24  |  Irene  |  Berlin  |      it      |  104   

