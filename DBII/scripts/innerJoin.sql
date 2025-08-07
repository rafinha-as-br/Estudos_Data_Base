-- 1) Listar todos os dados dos funcionários e os nomes dos seus respectivos departamentos

select E.*, department_name
from hr.employees E inner join hr.departments D on E.department_id = D.department_id;
-- ou
select E.*, department_name
from hr.employees, hr.departments D
WHERE E.department_id = D.department_id;


-- 2) Listar a média de salários e o maior e o menor salário por departamento, mostre no resultado estes valores, além do nome do departamento
select round(avg(salary), 2) média, max(salary) máximo, min(salary) mínimo, department_name
from hr.employees E inner join hr.departments D on D.department_id = E.department_id
group by department_name;

-- 3) Considerando o exemplo anterior, mostre apenas os departamentos que tenham média de salários acima de 5000
select round(avg(salary), 2) média, max(salary) máximo, min(salary) mínimo, department_name
from hr.employees E inner join hr.departments D on D.department_id = E.department_id
group by department_name
having avg(salary) > 5000; --having nunca vem antes de group by

-- 4) Mostrar o nome dos funcionários e seus respectivos salários que trabalham no mesmo departamento do funcionário alberto
select firs_name, salary
from hr.employees
where department_id = (select department_id from hr.employees where first_name = 'Alberto');