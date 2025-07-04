## 🎯 **Símbolos Curinga (Wildcards) em SQL**

Os **curingas** são usados para **substituir caracteres** ao fazer buscas com **`LIKE`** (e também com `NOT LIKE`).

---

### 🔹 **%** — Substitui **zero, um ou vários caracteres**

* **Exemplo**:

  ```sql
  SELECT * FROM clientes WHERE nome LIKE 'Ana%';
  ```

  👉 Encontra nomes que começam com "Ana", como "Ana", "Ana Paula", "Anabela"

---

### 🔹 **\_** (underline) — Substitui **exatamente um caractere**

* **Exemplo**:

  ```sql
  SELECT * FROM produtos WHERE codigo LIKE 'A_1';
  ```

  👉 Encontra valores como "AB1", "AC1", mas **não** "A1" nem "ABC1"

---

### 🔹 **\[ ]** — Corresponde a **qualquer caractere dentro dos colchetes**

(*Nem todos os bancos suportam, mas alguns como SQL Server sim*)

* **Exemplo**:

  ```sql
  SELECT * FROM produtos WHERE nome LIKE 'Teclad[ae]';
  ```

  👉 Encontra "Teclada" ou "Teclade"

---

### 🔹 **\[^ ] ou \[! ]** — Exclui caracteres do conjunto

(*usado em alguns SGBDs, como o `!` no SQL Server*)

* **Exemplo**:

  ```sql
  SELECT * FROM nomes WHERE nome LIKE '[^A]%';
  ```

  👉 Retorna nomes que **não** começam com a letra A

---

### 📌 **Importante:**

* O uso de curingas **pode deixar a consulta mais lenta**, principalmente com `%` no início do padrão (`'%abc'`)
* São usados **somente com `LIKE` ou `NOT LIKE`**

---

### ✅ Exemplos variados:

```sql
SELECT * FROM arquivos WHERE nome LIKE 'relatorio_202_.pdf';
-- Encontra: relatorio_2021.pdf, relatorio_2022.pdf...

SELECT * FROM usuarios WHERE email LIKE '%@gmail.com';
-- Termina com @gmail.com

SELECT * FROM produtos WHERE nome NOT LIKE 'TV%';
-- Nome não começa com "TV"
```
