select * from employees;

-- Rank
select first_name || ' ' || last_name as full_name, salary, rank() over(order by salary desc) from employees;

select first_name, department_id, salary, rank() over(partition by department_id order by salary desc) from employees;

select first_name, salary, sum(salary) over() as total_salary from employees;