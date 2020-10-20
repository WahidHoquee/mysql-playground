Select * from (
	SELECT 
		first_name,
		salary,
		(select avg(salary) from employees) as avgSalaray, 
		salary - (Select avgSalaray) as difference 
	FROM sql_hr.employees
) as CalculatedDB