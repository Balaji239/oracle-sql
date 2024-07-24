-- STRING FUNCTIONS
select employee_id, upper(first_name), last_name from employees;

select employee_id, lower(first_name), last_name from employees;

select employee_id, initcap(first_name), initcap(last_name) from employees;

-- prints the first_name starting from 2nd character upto last character
select employee_id, substr(first_name,2), last_name from employees;

-- prints the first_name starting from 2nd character upto next 3 characters
select employee_id, substr(first_name,2,3), last_name from employees;

select employee_id, hire_date, first_name, length(first_name) from employees;

-- returns the index of first occurance of specified substrings
select employee_id, first_name, instr(first_name, 's') from employees;

-- removes both trailing and leading spaces
select trim('  hello  ') from dual;

-- removes leading spaces only
select trim(leading from '  hello  ') from dual;
-- select ltrim('  hello  ') from dual;

-- removes trailing spaces only
select trim(trailing from '  hello  ') from dual;
-- select rtrim('  hello  ') from dual;

-- removes specified character
select trim(both '*' from '**hello**') from dual;

select replace('hello world', 'world', 'WORLD') from dual;

select employee_id, concat(first_name, last_name) from employees;

select reverse('hello') from dual;

-- replaces a->b, b->g, i->s
select translate('balaji r', 'abi','bgs') from dual;