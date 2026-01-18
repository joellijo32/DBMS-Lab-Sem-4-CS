SELECT empid, empname, salary, deptid
FROM employee

EXCEPT

SELECT employee.empid, empname, salary, employee.deptid
FROM employee
JOIN department ON employee.deptid = department.deptid
WHERE fund < ( SELECT AVG(fund)
	       FROM department ); 
