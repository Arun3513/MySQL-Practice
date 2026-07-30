-- window function 
/* 
 ** They are commonly used for tasks like aggregates,rankings and running totals. 
	   The OVER clause defines the “window” of rows for the calculation.
     
     ** The Main Difference between Group By and window function 
     1. GROUP BY summarizes data by grouping rows.
	 2. Window functions perform calculations while keeping every row.
     
     PARTITION BY: It divides the data into groups using PARTITION BY.
     ORDER BY:     It specifies the order of rows within each group using ORDER BY.
     
     Syntex : 
     
     SELECT column_name1, 
       window_function(column_name2) 
       OVER ([PARTITION BY column_name3] [ORDER BY column_name4]) AS new_column
FROM table_name;

window_function: Aggregate or ranking function (SUM(), AVG(), ROW_NUMBER(), etc.)
column_name1: Column(s) to display
column_name2: Column used by the window function
column_name3: Column for grouping (PARTITION BY)
column_name4: Column for ordering (ORDER BY)
new_column: Alias for the window function result
table_name: Table to select data from
*/
use parks_and_recreation;
select * from employee_demographics;

select gender ,
avg(salary) over(partition by gender) as avg_salary
from employee_demographics as dem join employee_salary as sal
on dem.employee_id=sal.employee_id;


select dem.first_name,dem.last_name,dem.employee_id,gender ,
sum(salary) over(partition by gender order by dem.employee_id) as Rolling_total
from employee_demographics as dem join employee_salary as sal
on dem.employee_id=sal.employee_id;

-- Row_Number function

select dem.first_name,dem.last_name,dem.employee_id,gender ,salary,
Row_number() over(partition by gender order by salary) as row_numbers,
Rank() over(partition by gender order by salary) as rank_num 
from employee_demographics as dem join employee_salary as sal
on dem.employee_id=sal.employee_id;

select dem.first_name,dem.last_name,dem.employee_id,gender ,salary,
Row_number() over(partition by gender order by salary) as row_numbers,
dense_Rank() over(partition by gender order by salary) as rank_num 
from employee_demographics as dem join employee_salary as sal
on dem.employee_id=sal.employee_id;

-- Rank() & dense_rank() function 

/* RANK() and DENSE_RANK() are window functions used to assign rankings to rows
 based on a column (such as salary, marks, or sales).
 
ROW_NUMBER() → Every row gets a unique number.
RANK() → Equal values share the same rank, and the next rank is skipped.
DENSE_RANK() → Equal values share the same rank, and the next rank is not skipped.
 
 */

select first_name,last_name,salary,dept_id,
sum(salary) over (partition by dept_id)
from employee_salary;


select sum(salary),dept_id
from employee_salary
group by dept_id;

