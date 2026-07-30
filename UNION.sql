-- UNION 
# Combines the results of multiple SELECT statements.
# Removes duplicate rows.

select first_name,last_name, 'Old' as label
from employee_demographics
where age > 45
union 
select first_name,last_name, 'highly_payable_employee' as label
from employee_salary
where salary>70000;

-- UNION ALL
# Combines the results of multiple SELECT statements.
# Keep all rows including  duplicate .
