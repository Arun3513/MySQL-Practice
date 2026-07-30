# Where clause

SELECT * FROM parks_and_recreation.employee_demographics;

SELECT * 
FROM parks_and_recreation.employee_demographics
where first_name='leslie';

# Relational Operation 

SELECT * 
FROM parks_and_recreation.employee_demographics
where age >= 25 and gender='male';

# Logical Operator AND OR NOT

SELECT * 
FROM parks_and_recreation.employee_demographics
where birth_date between '1985-01-01' and '1990-12-01'
order by birth_date asc;

# Like -- pattern matching

SELECT * 
FROM parks_and_recreation.employee_demographics
where first_name like 'a%';

SELECT * 
FROM parks_and_recreation.employee_demographics
where first_name like '%y';






