-- Aggregate functions or Group functions
-- AVG, COUNT, MAX, MIN, SUM, STDDEV, or VARIANCE

select sum(salary) from employees e;

select count(*) from employees;
-- when we are using a column name, it only considers the non null values
select count(commission_pct) from employees;

select max(salary) from employees;

select min(salary) from employees;

select avg(salary) from employees;