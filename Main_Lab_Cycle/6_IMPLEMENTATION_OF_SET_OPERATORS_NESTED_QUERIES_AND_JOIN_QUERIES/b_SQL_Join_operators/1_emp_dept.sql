SELECT e.empid, empname, e.deptid, deptname
FROM employee e
JOIN department d ON e.deptid = d.deptid ;
