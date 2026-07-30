-- Temporary Tables

create temporary table temp_table(
first_name varchar(40),
last_name varchar(40),
favourite_color varchar(30)
);

insert into temp_table values('arun','kumar','white');
select * from temp_table;

-- Create temporary table with in the table
-- It works with in the sesion 

create temporary table temp1_table(
select * 
from employee_salary
where salary>=50000);

select * from temp1_table;