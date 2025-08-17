## 🔹 **PL/SQL**

PL/SQL (Procedural Language/SQL) é a **linguagem procedural da Oracle**, que combina SQL com **elementos de programação**, como variáveis, loops, condicionais e tratamento de exceções. Ela é usada para criar **blocos de código executáveis**, como:

* **Triggers** – executadas automaticamente em resposta a eventos (INSERT, UPDATE, DELETE) em uma tabela.
* **Procedures** – sub-rotinas armazenadas no banco que podem ser chamadas repetidamente.
* **Functions** – similares às procedures, mas retornam um valor.
* **Packages** – conjuntos de procedures, functions e variáveis relacionados.

**Estrutura básica de um bloco PL/SQL:**

```sql
DECLARE
   -- variáveis opcionais
BEGIN
   -- lógica principal
EXCEPTION
   -- tratamento de erros
END;
```

**Comandos comuns em PL/SQL:**

* `DBMS_OUTPUT.PUT_LINE('mensagem')` → exibe uma mensagem no console (debug ou informação).
* `RAISE_APPLICATION_ERROR(código, 'mensagem')` → lança um erro personalizado que interrompe a operação.

---

## 🔹 **Tabela de elementos PL/SQL**

| Elemento                      | Descrição                                             | Exemplo                                                                                                                                                            |
| ----------------------------- | ----------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Variáveis**                 | Armazenam dados temporários dentro do bloco           | `v_nome VARCHAR2(50); v_id NUMBER;`                                                                                                                                |
| **Constantes**                | Valores que não mudam durante a execução              | `c_limite CONSTANT NUMBER := 100;`                                                                                                                                 |
| **Loops**                     | Executam repetidamente um bloco de código             | `FOR i IN 1..10 LOOP DBMS_OUTPUT.PUT_LINE(i); END LOOP;`                                                                                                           |
| **Condicionais**              | Decisões baseadas em condições                        | `IF salario > 5000 THEN DBMS_OUTPUT.PUT_LINE('Alto'); ELSE DBMS_OUTPUT.PUT_LINE('Baixo'); END IF;`                                                                 |
| **Cursores**                  | Permitem percorrer linhas de uma consulta SQL         | `CURSOR c1 IS SELECT nome FROM clientes;`                                                                                                                          |
| **Tratamento de erros**       | Captura exceções e trata falhas                       | `EXCEPTION WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('Nenhum registro');`                                                                                       |
| **Procedures**                | Sub-rotina armazenada que não retorna valor           | `CREATE PROCEDURE p1 IS BEGIN DBMS_OUTPUT.PUT_LINE('Oi'); END;`                                                                                                    |
| **Functions**                 | Sub-rotina armazenada que retorna valor               | `CREATE FUNCTION f1 RETURN NUMBER IS BEGIN RETURN 10; END;`                                                                                                        |
| **Triggers**                  | Código executado automaticamente em eventos da tabela | `CREATE OR REPLACE TRIGGER trg BEFORE INSERT ON emp FOR EACH ROW BEGIN IF :NEW.salario<1000 THEN RAISE_APPLICATION_ERROR(-20001,'Salário inválido'); END IF; END;` |
| **DBMS\_OUTPUT.PUT\_LINE**    | Exibe mensagens no console                            | `DBMS_OUTPUT.PUT_LINE('Olá mundo');`                                                                                                                               |
| **RAISE\_APPLICATION\_ERROR** | Lança erro personalizado e interrompe operação        | `RAISE_APPLICATION_ERROR(-20001,'Erro na regra de negócio');`                                                                                                      |
