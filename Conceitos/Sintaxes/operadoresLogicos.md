# 🔗 **Operadores Lógicos em SQL**

Os **operadores lógicos** são usados para **filtrar registros com base em condições específicas**.
Podem ser aplicados em cláusulas como `WHERE`, `HAVING` e também em subconsultas.

---

## 📌 Tabela de Operadores Lógicos

| Operador     | Descrição                                                                       | Exemplo SQL                                                                                                   | Resultado                                                    |
| ------------ | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------ |
| `AND`        | Retorna **TRUE** se **todas** as condições forem verdadeiras                    | `SELECT * FROM clientes WHERE cidade = 'SP' AND idade > 18;`                                                  | Clientes de SP **com idade > 18**                            |
| `OR`         | Retorna **TRUE** se **pelo menos uma** condição for verdadeira                  | `SELECT * FROM clientes WHERE cidade = 'SP' OR cidade = 'RJ';`                                                | Clientes de **SP ou RJ**                                     |
| `NOT`        | Inverte o valor lógico da condição (**TRUE → FALSE**, **FALSE → TRUE**)         | `SELECT * FROM produtos WHERE NOT preco < 50;`                                                                | Produtos com **preço ≥ 50**                                  |
| `BETWEEN`    | Verifica se um valor está dentro de um intervalo (**inclusive os limites**)     | `SELECT * FROM pedidos WHERE data BETWEEN '2024-01-01' AND '2024-12-31';`                                     | Pedidos feitos em **2024**                                   |
| `IN`         | Verifica se um valor está em uma **lista de valores específicos**               | `SELECT * FROM clientes WHERE estado IN ('SP','RJ','MG');`                                                    | Clientes de **SP, RJ ou MG**                                 |
| `LIKE`       | Comparação por **padrão textual** (com curingas `%` e `_`)                      | `SELECT * FROM produtos WHERE nome LIKE 'Celular%';`                                                          | Nomes que **começam com "Celular"**                          |
| `EXISTS`     | Retorna **TRUE** se uma subconsulta retornar ao menos 1 registro                | `sql SELECT nome FROM clientes WHERE EXISTS (SELECT 1 FROM pedidos WHERE pedidos.cliente_id = clientes.id); ` | Clientes que **têm pedidos**                                 |
| `ALL`        | Retorna **TRUE** se **todas** as comparações da subconsulta forem verdadeiras   | `SELECT nome FROM produtos WHERE preco > ALL (SELECT preco FROM produtos WHERE categoria = 'Promoção');`      | Produtos **mais caros** que todos os da categoria "Promoção" |
| `ANY / SOME` | Retorna **TRUE** se **pelo menos uma** comparação da subconsulta for verdadeira | `SELECT nome FROM produtos WHERE preco < ANY (SELECT preco FROM produtos WHERE categoria = 'Premium');`       | Produtos **mais baratos** que algum da categoria "Premium"   |

---