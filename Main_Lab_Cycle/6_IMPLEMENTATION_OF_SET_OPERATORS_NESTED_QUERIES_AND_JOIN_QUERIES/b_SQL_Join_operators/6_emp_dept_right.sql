SELECT empid, empname, employee.deptid, deptname
FROM employee 
RIGHT JOIN department ON employee.deptid = department.deptid;
