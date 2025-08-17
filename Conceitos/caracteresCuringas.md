## 🎯 **Símbolos Curinga (Wildcards) em SQL**

Os **curingas** são usados para **substituir caracteres** ao fazer buscas com **`LIKE`** (ou `NOT LIKE`).

---

### 📌 Tabela de Curingas

| Curinga                                  | Significado                                                         | Exemplo SQL                           | Resultado                                                         |
| ---------------------------------------- | ------------------------------------------------------------------- | ------------------------------------- | ----------------------------------------------------------------- |
| `%`                                      | Substitui **zero, um ou vários caracteres**                         | `WHERE nome LIKE 'Ana%'`              | Encontra: `Ana`, `Ana Paula`, `Anabela`                           |
| `_`                                      | Substitui **exatamente um caractere**                               | `WHERE codigo LIKE 'A_1'`             | Encontra: `AB1`, `AC1` → mas não `A1` nem `ABC1`                  |
| `[ ]` *(SQL Server / Oracle)*            | Corresponde a **qualquer caractere dentro dos colchetes**           | `WHERE nome LIKE 'Teclad[ae]'`        | Encontra: `Teclada`, `Teclade`                                    |
| `[^ ]` ou `[! ]` *(SQL Server / Oracle)* | Corresponde a **qualquer caractere exceto os listados**             | `WHERE nome LIKE '[^A]%'`             | Retorna nomes que **não começam com A**                           |
| `ESCAPE`                                 | Define um caractere de escape para usar `%` ou `_` como **literal** | `WHERE codigo LIKE 'A\_%' ESCAPE '\'` | Encontra valores que começam com `A_` (sem usar `_` como curinga) |

---

### ⚡ Importante

* O uso de curingas **pode deixar a consulta mais lenta**, especialmente com `%` no início (`'%abc'`).
* São usados **apenas com `LIKE` ou `NOT LIKE`**.
* Para buscas mais avançadas (expressões regulares), alguns bancos oferecem `REGEXP` ou `SIMILAR TO`.

---

### ✅ Exemplos variados

```sql
-- Termina com @gmail.com
SELECT * FROM usuarios 
WHERE email LIKE '%@gmail.com';

-- Nome não começa com TV
SELECT * FROM produtos 
WHERE nome NOT LIKE 'TV%';

-- Relatórios com um dígito no ano
SELECT * FROM arquivos 
WHERE nome LIKE 'relatorio_202_.pdf';
-- Encontra: relatorio_2021.pdf, relatorio_2022.pdf...
```
