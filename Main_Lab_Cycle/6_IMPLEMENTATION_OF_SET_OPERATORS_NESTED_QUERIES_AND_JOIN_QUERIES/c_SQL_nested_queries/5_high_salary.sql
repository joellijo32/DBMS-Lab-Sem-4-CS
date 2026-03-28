SELECT empname, deptid, dob
FROM employee
WHERE salary = ( SELECT MAX(salary)
		 FROM employee       );
