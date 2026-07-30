-- JOINS 
-- ** Retrieve the data from multiple table simultaneously

# INNER JOIN 
# OUTER JOIN 
# SELF JOIN 

-- INNER JOIN 
-- * Retrive only the matching records from the table 

use parks_and_recreation;

SELECT * FROM employee_demographics;

SELECT * FROM employee_salary;

select dem.first_name,age,occupation
from employee_demographics as dem inner join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- OUTER JOIN 
# LEFT JOIN 
# RIGHT JOIN 

-- LEFT JOIN 
-- * Returns all rows from the left table and only the matching rows from the right table.

select dem.first_name,age,occupation
from employee_demographics as dem left join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- RIGHT JOIN 
-- * Returns all rows from the right table and only the matching rows from the left table.

select dem.first_name,age,occupation
from employee_demographics as dem right join employee_salary as sal
on dem.employee_id = sal.employee_id;

-- SELF JOIN 
-- * Retrive only the matching records from the table 

-- EXample : find out the secret santa

select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_emp,
emp2.last_name as last_emp
from employee_demographics as emp1 join employee_salary as emp2
on emp1.employee_id + 1 = emp2.employee_id;


-- Join Multiple table together

select * from employee_demographics;
select * from employee_salary;
select * from parks_departments;

select pd.department_name,dept_id
from employee_demographics as emp1 inner join
employee_salary as emp2 
on emp1.employee_id = emp2.employee_id inner join 
parks_departments as pd
on emp2.dept_id = pd.department_id;

/* Step 1:
Table A
   +
Table B
   ↓

Step 2:
(Result of Step 1)
      +
Table C
   ↓

Step 3:
(Result of Step 2)
      +
Table D  /*




