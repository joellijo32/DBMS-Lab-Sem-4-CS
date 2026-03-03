SELECT empid, empname, salary
FROM employee
WHERE ( 
	SELECT COUNT(*)
	FROM dependent
	WHERE employee.empid = dependent.empid
) > 0;
