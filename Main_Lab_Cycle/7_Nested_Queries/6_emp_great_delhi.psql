SELECT empid, empname, salary
FROM employee
WHERE salary > ( SELECT MAX(salary) 
		 FROM employee
		 WHERE deptid = 103 );
