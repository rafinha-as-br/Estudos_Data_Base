# 📅 **Funções de Manipulação de Datas em SQL**

As **funções de datas** permitem **extrair, formatar ou calcular valores temporais** em colunas de tipo `DATE`, `DATETIME`, `TIMESTAMP`, etc.

---

## 📌 **1️⃣ Extração de partes da data**

| Função                     | Descrição                                                   | Exemplo SQL                                     | Resultado |
| -------------------------- | ----------------------------------------------------------- | ----------------------------------------------- | --------- |
| `EXTRACT(parte FROM data)` | Extrai parte da data (ano, mês, dia, hora, minuto, segundo) | `SELECT EXTRACT(MONTH FROM SYSDATE) FROM dual;` | `8`       |
| `DAY(data)`                | Retorna o dia do mês (em MySQL/PostgreSQL)                  | `SELECT DAY(NOW());`                            | `17`      |
| `MONTH(data)`              | Retorna o mês da data                                       | `SELECT MONTH(NOW());`                          | `8`       |
| `YEAR(data)`               | Retorna o ano da data                                       | `SELECT YEAR(NOW());`                           | `2025`    |

---

## 📌 **2️⃣ Cálculos com datas**

| Função                            | Descrição                                     | Exemplo SQL                                                   | Resultado             |
| --------------------------------- | --------------------------------------------- | ------------------------------------------------------------- | --------------------- |
| `ADD_MONTHS(data, n)`             | Adiciona `n` meses a uma data                 | `SELECT ADD_MONTHS(SYSDATE, 3) FROM dual;`                    | `2025-11-17`          |
| `MONTHS_BETWEEN(data1, data2)`    | Número de meses entre duas datas              | `SELECT MONTHS_BETWEEN('2025-12-01','2025-08-01') FROM dual;` | `4`                   |
| `DATEADD(intervalo, n, data)`     | Adiciona intervalo de tempo (SQL Server)      | `SELECT DATEADD(day, 7, GETDATE());`                          | Data 7 dias à frente  |
| `DATEDIFF(unidade, data1, data2)` | Diferença entre datas em unidade especificada | `SELECT DATEDIFF(day, '2025-08-01','2025-08-17');`            | `16`                  |
| `NEXT_DAY(data, 'DiaSemana')`     | Próxima ocorrência de um dia da semana        | `SELECT NEXT_DAY(SYSDATE,'MONDAY') FROM dual;`                | Próxima segunda-feira |
| `LAST_DAY(data)`                  | Último dia do mês da data                     | `SELECT LAST_DAY(SYSDATE) FROM dual;`                         | `31-AUG-2025`         |

---

## 📌 **3️⃣ Formatação de datas**

| Função                     | Descrição                                           | Exemplo SQL                                            | Resultado             |
| -------------------------- | --------------------------------------------------- | ------------------------------------------------------ | --------------------- |
| `TO_DATE(texto, formato)`  | Converte **texto para data**                        | `SELECT TO_DATE('17-08-2025','DD-MM-YYYY') FROM dual;` | `17-AUG-2025`         |
| `TO_CHAR(data, formato)`   | Converte **data para texto** com formato específico | `SELECT TO_CHAR(SYSDATE,'DD/MM/YYYY') FROM dual;`      | `17/08/2025`          |
| `SYSDATE` / `CURRENT_DATE` | Retorna a **data atual**                            | `SELECT SYSDATE FROM dual;`                            | `2025-08-17`          |
| `NOW()`                    | Retorna **data e hora atual**                       | `SELECT NOW();`                                        | `2025-08-17 15:42:10` |
