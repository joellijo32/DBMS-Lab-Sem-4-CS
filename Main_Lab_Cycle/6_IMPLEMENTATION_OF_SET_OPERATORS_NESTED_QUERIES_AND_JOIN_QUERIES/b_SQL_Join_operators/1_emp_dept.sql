SELECT employee.empid, empname, employee.deptid, deptname
FROM employee 
JOIN department ON employee.deptid = department.deptid ;
