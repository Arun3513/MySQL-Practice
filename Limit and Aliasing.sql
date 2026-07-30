# Limit and Aliasing 

-- Limit is to specify how rows you want in your output 

SELECT * 
FROM parks_and_recreation.employee_salary
limit 5; # Top 5 Rows in the table

-- Top 5 oldest people 
SELECT * 
FROM parks_and_recreation.employee_demographics
order by age desc
limit 5;

SELECT * 
FROM parks_and_recreation.employee_demographics
order by age desc
limit 2,1; 
-- offset - Number of rows to skip.
-- row_count - Number of rows to return after skipping.

# Aliasing giving alternate name to the column

SELECT gender,avg(age) as avg_age
FROM parks_and_recreation.employee_demographics
group by gender
having avg(age)>40;
