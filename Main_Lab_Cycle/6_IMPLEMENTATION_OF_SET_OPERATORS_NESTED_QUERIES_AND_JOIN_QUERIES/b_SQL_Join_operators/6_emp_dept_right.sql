SELECT empid, empname, e.deptid, deptname
FROM employee e
RIGHT JOIN department d ON e.deptid = d.deptid;
