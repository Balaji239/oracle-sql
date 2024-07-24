select * from employees;
select * from departments;

-- Inner Join
select e.employee_id, e.first_name, e.department_id, d.department_name from employees e join departments d on e.department_id = d.department_id;

-- Left join / Left outer join
select e.employee_id, e.first_name, d.department_name from employees e left join departments d on e.department_id = d.department_id;

-- Right join / Right outer join
select e.employee_id, e.first_name, e.last_name, d.department_name from employees e right join departments d on e.department_id = d.department_id;

-- Full Join
select e.first_name, e.last_name, d.department_id, d.department_name from employees e full join departments d on e.department_id = d.department_id;

-- Cross join
select e.first_name, j.start_date from employees e cross join job_history j;

-- Joining 3 tables
select e.first_name, d.department_name, l.street_address from employees e join departments d on e.department_id = d.department_id 
join locations l on d.location_id = l.location_id; 
