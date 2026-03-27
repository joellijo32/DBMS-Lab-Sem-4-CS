SELECT d.deptid, deptname, COUNT(e.empid) AS number_of_employees, AVG(salary) AS average_salary 
FROM department d
JOIN employee e ON d.deptid = e.deptid
GROUP BY d.deptname, d.deptid
HAVING COUNT(e.empid) > 3
ORDER BY average_salary ASC;
