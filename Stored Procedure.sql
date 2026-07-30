-- Stored Procedures 

/* 1. A Stored Procedure is a pre-written SQL program that is saved in 
   the database and can be executed whenever needed.
   2. Instead, save it once as a stored procedure and call it whenever needed.
   
*/

DELIMITER $$
CREATE PROCEDURE large_salaries()
BEGIN 
	select * 
    from emplarge_salariesloyee_demographics
    where age>50000;
End $$
DELIMITER ;

CALL large_salaries();


DELIMITER $$
CREATE PROCEDURE large_salaries3(p_employee_id int)
BEGIN 
	select salary
    from employee_salary
    where employee_id=p_employee_id;
End $$
DELIMITER ;

call large_salaries3(1);







