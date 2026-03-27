SELECT d.deptid, deptname, AVG(salary) AS average_salary
FROM department d
JOIN employee e ON d.deptid = e.deptid
GROUP BY d.deptname, d.deptid
HAVING AVG(e.salary) > 50000 ;
