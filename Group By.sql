# Group By 

SELECT * FROM parks_and_recreation.employee_demographics;

SELECT * FROM parks_and_recreation.employee_salary;

SELECT gender,avg(age)
FROM parks_and_recreation.employee_demographics
group by gender;

SELECT gender,avg(age),max(age),min(age),count(age)
FROM parks_and_recreation.employee_demographics
group by gender;

SELECT occupation
FROM parks_and_recreation.employee_salary
group by occupation;

# -- ORDER BY 

SELECT *
FROM parks_and_recreation.employee_demographics
order by first_name desc;

SELECT *
FROM parks_and_recreation.employee_demographics
order by 2,4; # The number Represent the column Not recomennded

 
