## 🔗 **Operadores Lógicos em SQL**

Os operadores lógicos são usados para **filtrar registros com base em condições específicas**. Podem ser usados em cláusulas como `WHERE`, `HAVING`, etc.

---

### ✅ **AND**

Retorna **TRUE** se **todas** as condições forem verdadeiras.

```sql
SELECT * FROM clientes WHERE cidade = 'SP' AND idade > 18;
```

---

### ✅ **OR**

Retorna **TRUE** se **pelo menos uma** das condições for verdadeira.

```sql
SELECT * FROM clientes WHERE cidade = 'SP' OR cidade = 'RJ';
```

---

### ✅ **NOT**

Inverte o valor lógico da condição (TRUE → FALSE e vice-versa).

```sql
SELECT * FROM produtos WHERE NOT preco < 50;
```

---

### ✅ **BETWEEN**

Verifica se um valor está **dentro de um intervalo** (inclusive os limites).

```sql
SELECT * FROM pedidos WHERE data BETWEEN '2024-01-01' AND '2024-12-31';
```

---

### ✅ **IN**

Verifica se um valor está **em uma lista de valores específicos**.

```sql
SELECT * FROM clientes WHERE estado IN ('SP', 'RJ', 'MG');
```

---

### ✅ **LIKE**

Usado para **comparação por padrão textual** (com `_%` e `_`):

```sql
SELECT * FROM produtos WHERE nome LIKE 'Celular%'; -- começa com 'Celular'
```

---

### ✅ **EXISTS**

Retorna **TRUE** se uma subconsulta retornar ao menos um registro.

```sql
SELECT nome FROM clientes WHERE EXISTS (
  SELECT 1 FROM pedidos WHERE pedidos.cliente_id = clientes.id
);
```

---

### ✅ **ALL**

Retorna **TRUE** se **todas** as comparações com os valores de uma subconsulta forem verdadeiras.

```sql
SELECT nome FROM produtos WHERE preco > ALL (
  SELECT preco FROM produtos WHERE categoria = 'Promoção'
);
```

---

### ✅ **ANY / SOME**

Retorna **TRUE** se **pelo menos uma** das comparações com os valores da subconsulta for verdadeira.

```sql
SELECT nome FROM produtos WHERE preco < ANY (
  SELECT preco FROM produtos WHERE categoria = 'Premium'
);
```

> **Nota**: `ANY` e `SOME` são equivalentes no SQL padrão.
