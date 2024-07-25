select * from employees;

-- Rank
select first_name || ' ' || last_name as full_name, salary, rank() over(order by salary desc) from employees;

-- ranking salary department wise
select first_name, department_id, salary, rank() over(partition by department_id order by salary desc) from employees;

-- dept wise salary and total salary
select first_name, salary, department_id, sum(salary) over(partition by department_id) as dept_sal_sum,
sum(salary) over() as total_sal from employees;  

-- Dense Rank
select * from (select first_name, department_id, salary, dense_rank() over(order by salary desc) as rnk from employees)
where rnk = 2;

-- Lead
select first_name, hire_date, lead(hire_date) over(order by hire_date) as next_hired_date from employees;

-- Lag
select first_name, hire_date, lag(hire_date) over(order by hire_date) as previous_hire_date from employees;

-- Row number
select * from
(select first_name,salary, hire_date, department_id, row_number() over(order by hire_date) as row_num from employees e)
where row_num<=10;

-- we can use aggregate functions also with over() clause
select first_name, salary, sum(salary) over() as total_salary from employees;