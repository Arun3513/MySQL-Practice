-- Having Vs where clause

# Where 
-- where clause used to filter the records 
-- where clause execute row by row 

# Having
-- Having clause used to filter the groups 
-- Having clause executes group by group 
SELECT occupation,avg(salary)
FROM parks_and_recreation.employee_salary
where occupation like '%manager%'  # filtered based on row level
group by occupation
having avg(salary)>75000  # filtered based on aggregate level 
;



