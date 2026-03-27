SELECT e.deptid, d.deptname, COUNT(e.empid) AS number_of_employees
FROM department d
JOIN employee e ON d.deptid = e.deptid
GROUP BY d.deptname, e.deptid
HAVING COUNT(e.empid) > 5;
