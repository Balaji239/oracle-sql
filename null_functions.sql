select * from employees where rownum<=10;

-- replace the null occurance with the specified value
select employee_id, first_name, nvl(commission_pct,15.5) from employees;

-- if expr 1 is null, then returns expr 3 else expr 2
select employee_id, first_name, nvl2(manager_id,'Manager id is not null', 'Manager id is null') from employees where rownum<=10;

-- returns the first non null value among the specified expressions
-- this will return 'Hello' as this is the first non null value
select coalesce(NULL, NULL, 'Hello', 'World') as result from dual;
select employee_id, coalesce(bonus, commission, salary) as compensation from employees;

-- reurns null if expr 1 equals to expr 2 else returns expr 1
select employee_id, first_name, nullif(salary,2600) from employees where rownum<=10;