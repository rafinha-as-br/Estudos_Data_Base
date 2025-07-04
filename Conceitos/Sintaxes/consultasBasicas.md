## 🔍 **Consultas Básicas em SQL**

### 1. **SELECT**

Usado para buscar dados de uma ou mais tabelas.

```sql
SELECT coluna1, coluna2 FROM tabela;
```

* `*` (asterisco) seleciona **todas as colunas**:

  ```sql
  SELECT * FROM clientes;
  ```

---

### 2. **SELECT DISTINCT**

Evita resultados duplicados, retornando apenas **valores únicos**.

```sql
SELECT DISTINCT cidade FROM clientes;
```

---

### 3. **WHERE**

Filtra os dados antes da agregação (ou antes da exibição final).

```sql
SELECT * FROM pedidos WHERE status = 'entregue';
```

* Operadores comuns: `=`, `<>`, `>`, `<`, `>=`, `<=`, `LIKE`, `IN`, `BETWEEN`, `IS NULL`

---

### 4. **AND / OR**

Combina múltiplas condições.

```sql
SELECT * FROM clientes WHERE cidade = 'SP' AND idade > 18;
SELECT * FROM clientes WHERE cidade = 'SP' OR idade > 18;


```

---

### 5. **ORDER BY**

Ordena os resultados por uma ou mais colunas.

```sql
SELECT * FROM produtos ORDER BY preco ASC;  -- Crescente
SELECT * FROM produtos ORDER BY preco DESC; -- Decrescente
```

---

### 6. **GROUP BY**

Agrupa registros com base em uma ou mais colunas, geralmente com funções agregadas.

```sql
SELECT cidade, COUNT(*) AS total_clientes
FROM clientes
GROUP BY cidade;
```

---

### 7. **HAVING**

Filtra os **grupos** criados pelo `GROUP BY`. É como um `WHERE`, mas **aplicado após a agregação**.

```sql
SELECT cidade, COUNT(*) AS total_clientes
FROM clientes
GROUP BY cidade
HAVING COUNT(*) > 10;
```

* **Use `WHERE` para linhas individuais**
* **Use `HAVING` para resultados agregados**

