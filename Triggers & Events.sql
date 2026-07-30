-- Triggers
/* 
A Trigger is a stored program that automatically executes
 before or after an INSERT, UPDATE, or DELETE operation on a table.
*/
select * from employee_demographics;

select * from employee_salary;

Delimiter $$

create trigger employe_insert
	after insert on employee_salary
    for each row 
begin
	insert into employee_demographics(employee_id,first_name,last_name)
    values(new.employee_id,new.first_name,new.last_name);
 
end $$
Delimiter ;
    
insert into employee_salary (employee_id,first_name,last_name,occupation,salary,dept_id)
values('14','josh','larry','Human Resource',44000,null);

-- Events 
# An Event is a scheduled database task that automatically runs
# SQL statements at a specified time or interval.

select * from employee_demographics;

Delimiter $$
create event delete_retire
on schedule every 30 second
do 
begin 
	delete 
    from employee_demographics
    where age>60;
end $$
delimiter ;
