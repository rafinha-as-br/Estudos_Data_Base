2. Procedures
Definição: Bloco nomeado que executa uma ação, mas não retorna valor diretamente.
Uso comum: Executar lógica de negócio, atualização de dados, manipulação de transações.
Sintaxe:
CREATE OR REPLACE PROCEDURE nome_procedure (
   parametro1 IN tipo,
   parametro2 OUT tipo
) AS
BEGIN
   -- lógica
END;
Exemplos de Procedure:

-- Exemplo 1: Procedure sem parâmetros
CREATE OR REPLACE PROCEDURE diz_ola IS
BEGIN
   DBMS_OUTPUT.PUT_LINE('Olá, mundo!');
END;

-- Exemplo 2: Procedure com parâmetro de entrada
CREATE OR REPLACE PROCEDURE exibir_nome(p_nome IN VARCHAR2) IS
BEGIN
   DBMS_OUTPUT.PUT_LINE('Nome: ' || p_nome);
END;

-- Exemplo 3: Procedure com entrada e saída
CREATE OR REPLACE PROCEDURE dobrar_numero(p_num IN NUMBER, p_result OUT NUMBER) IS
BEGIN
   p_result := p_num * 2;
END;

-- Exemplo 4: Inserir novo departamento
CREATE OR REPLACE PROCEDURE inserir_departamento(
   p_nome IN departments.department_name%TYPE,
   p_local_id IN departments.location_id%TYPE
) IS
BEGIN
   INSERT INTO departments (department_id, department_name, location_id)
   VALUES (departments_seq.NEXTVAL, p_nome, p_local_id);

   COMMIT;
END;

-- Exemplo 5: Atualizar salário de funcionário
CREATE OR REPLACE PROCEDURE atualizar_salario(
   p_emp_id IN employees.employee_id%TYPE,
   p_novo_salario IN employees.salary%TYPE
) IS
BEGIN
   UPDATE employees
   SET salary = p_novo_salario
   WHERE employee_id = p_emp_id;

   COMMIT;
END;

