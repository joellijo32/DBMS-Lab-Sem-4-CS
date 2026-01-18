SELECT employee.empid, empname, deptname
FROM employee
JOIN department ON employee.deptid = department.deptid
LEFT JOIN dependent ON employee.empid = dependent.empid
WHERE dependent.empid IS NULL;

