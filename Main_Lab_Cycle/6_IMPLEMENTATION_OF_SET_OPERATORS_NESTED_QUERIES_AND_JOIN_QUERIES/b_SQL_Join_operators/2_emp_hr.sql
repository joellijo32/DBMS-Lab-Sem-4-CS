SELECT empid, empname, deptname
FROM employee e
JOIN department d ON e.deptid = d.deptid
WHERE deptname = 'HR';
