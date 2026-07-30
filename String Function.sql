-- String Function 

select length('Arun');

select first_name, length(first_name)
from employee_demographics
order by 2;

select Lower('Arun');
select upper('Arun');

select first_name, upper(first_name)
from employee_demographics ;

select Trim('  ARUN');

-- Left 
# ** It returns the leftmost N characters from a string.
# ** LEFT(column_name, number_of_characters)

-- Right
# ** The RIGHT() function returns the last N characters from a string.

-- Substring
# ** SUBSTRING() extracts characters from any position in a string.
# ** where to start
# ** how many characters to return

select first_name, LEFT(first_name, 4),
right(first_name, 4),
substring(first_name,3,2),
birth_date, substring(birth_date,6,2) as birth_month
from employee_demographics ;


select first_name,locate('An',first_name)
from employee_demographics ;

select first_name,last_name,
concat(first_name,' ',last_name) as Full_name # Join the two string or column
from employee_demographics ;


