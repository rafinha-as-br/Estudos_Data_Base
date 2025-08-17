# 🎯 **Funções de Manipulação de Strings em SQL**

As **funções de caracteres** permitem **alterar, buscar e formatar textos** em consultas SQL.

---

## 📌 Tabela de Funções Mais Usadas

| Função                                                       | Descrição                                   | Exemplo SQL                                | Resultado         |                                 |            |
| ------------------------------------------------------------ | ------------------------------------------- | ------------------------------------------ | ----------------- | ------------------------------- | ---------- |
| `UPPER(col)`                                                 | Converte o texto para **maiúsculas**        | `SELECT UPPER('sql');`                     | `SQL`             |                                 |            |
| `LOWER(col)`                                                 | Converte o texto para **minúsculas**        | `SELECT LOWER('SQL');`                     | `sql`             |                                 |            |
| `INITCAP(col)` *(Oracle / PostgreSQL)*                       | Primeira letra de cada palavra em maiúscula | `SELECT INITCAP('hello world');`           | `Hello World`     |                                 |            |
| `LENGTH(col)`                                                | Retorna o **tamanho da string**             | `SELECT LENGTH('SQL');`                    | `3`               |                                 |            |
| `CHAR_LENGTH(col)`                                           | Tamanho em caracteres (útil p/ UTF-8)       | `SELECT CHAR_LENGTH('áé');`                | `2`               |                                 |            |
| `SUBSTR(col, pos, len)` ou `SUBSTRING(col FROM pos FOR len)` | Extrai parte de uma string                  | `SELECT SUBSTR('BancoDeDados',1,5);`       | `Banco`           |                                 |            |
| `CONCAT(a,b)` ou \`a                                         |                                             | b\`                                        | Concatena strings | `SELECT CONCAT('Data','Base');` | `DataBase` |
| `TRIM(col)`                                                  | Remove espaços à esquerda e direita         | `SELECT TRIM('  SQL  ');`                  | `SQL`             |                                 |            |
| `LTRIM(col)`                                                 | Remove espaços à esquerda                   | `SELECT LTRIM('   SQL');`                  | `SQL`             |                                 |            |
| `RTRIM(col)`                                                 | Remove espaços à direita                    | `SELECT RTRIM('SQL   ');`                  | `SQL`             |                                 |            |
| `REPLACE(col, 'a','b')`                                      | Substitui caracteres ou substrings          | `SELECT REPLACE('banana','a','o');`        | `bonono`          |                                 |            |
| `TRANSLATE(col, 'abc','123')` *(Oracle)*                     | Substitui caractere por posição             | `SELECT TRANSLATE('abc','abc','123');`     | `123`             |                                 |            |
| `LPAD(col, n, pad)`                                          | Preenche à esquerda até atingir tamanho `n` | `SELECT LPAD('123',5,'0');`                | `00123`           |                                 |            |
| `RPAD(col, n, pad)`                                          | Preenche à direita até atingir tamanho `n`  | `SELECT RPAD('123',5,'*');`                | `123**`           |                                 |            |
| `INSTR(col, substr)` *(Oracle / MySQL)*                      | Retorna a posição de uma substring          | `SELECT INSTR('BancoDeDados','De');`       | `6`               |                                 |            |
| `POSITION(substr IN col)` *(ANSI)*                           | Posição de substring                        | `SELECT POSITION('De' IN 'BancoDeDados');` | `6`               |                                 |            |

---

## ⚡ Observações Importantes

* Alguns nomes mudam entre bancos:

  * `SUBSTR` (Oracle/MySQL) = `SUBSTRING` (SQL Server/Postgres).
  * `LEN()` (SQL Server) = `LENGTH()` (Oracle/MySQL/Postgres).
* Funções como `INITCAP`, `TRANSLATE`, `LPAD` e `RPAD` **não existem em todos os SGBDs**.
* A concatenação pode ser feita com `||` (ANSI/Oracle/Postgres) ou com `CONCAT()` (MySQL/SQL Server).
