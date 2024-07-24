-- converts a date or number to a string
select to_char(12345) from dual;

-- converts a string to a date
select to_date('2024-07-14', 'YYYY-MM-DD') from dual;
-- if format is not specified, it assumes and stores it in the dd-mm-yy format.
-- We can enter date in following formats while format is not specified
-- 23-09-1999, 23-09-99, 23-sep-99,23-sep-1999, 23-september-1999
-- as long as the order is date->month->year, most of the combination just works fine
select to_date('23-september-1999') from dual;

-- converts a string to a number
select to_number('100') from dual;

-- converts one data type tp another
select cast('123' AS NUMBER) as number_value from dual;
select CAST(123 AS VARCHAR2(10)) as string_value from dual;