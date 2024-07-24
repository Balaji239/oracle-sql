select * from employees;

select department_id, count(*) from employees group by department_id;

select department_id, count(*) from employees group by department_id having count(*) > 10;

select department_id, sum(salary) from employees group by department_id order by 2; -- 2 refers to 2nd column

select department_id, sum(salary) from employees group by department_id having sum(salary)>100000 order by 2 ;