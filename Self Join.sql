use sql_hr;

SELECT e.employee_id, e.first_name, m.first_name
FROM sql_hr.employees e
JOIN sql_hr.employees m
ON e.employee_id = m.reports_to;