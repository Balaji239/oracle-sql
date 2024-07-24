-- rounds the number to specified number of decimal places. Follows the round off.
-- if decimal number >=5 rounds up
-- if decimal number <5 rounds down
select round(100.3556,2) from dual;

-- just truncates to specified decimal places without rounding
select trunc(100.3456) from dual;

-- returns the remainder of the division
select mod(5,3) from dual;

-- returns the absolute value (positive value) of specified number
select abs(-123) from dual;

-- rounds up the number
select ceil(100.3456) from dual;

-- rounds down the number
select floor(100.3456) from dual;

select power(2,4) from dual;