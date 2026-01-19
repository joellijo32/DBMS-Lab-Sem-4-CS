SELECT empname, empid, doj
FROM employee
WHERE ( 
	SELECT COUNT(*)
	FROM dependent
	WHERE employee.empid = dependent.empid
) = 0 ;
