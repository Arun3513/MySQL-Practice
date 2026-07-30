-- case statement 

# perform conditional Logic 

select 
first_name,last_name,age,
CASE  
	when age < 30 then 'Young'
    when age between 30 and 50 then 'Young'
    when age > 60 then 'On Death Door'
End as Age_Brackets
from employee_demographics;

-- Pay Bonus using case statement 
-- < 50000 Bonus 5%
-- > 50000 Bonus 7% 
-- Finance Dept BOnus 10%

select first_name,last_name,salary,
case
	when salary < 50000 then salary * 1.05
    when salary > 50000 then salary * 1.07
    
end As New_salary,
case
	when dept_id=6 then salary * 1.10
end as Bonus
from employee_salary;


