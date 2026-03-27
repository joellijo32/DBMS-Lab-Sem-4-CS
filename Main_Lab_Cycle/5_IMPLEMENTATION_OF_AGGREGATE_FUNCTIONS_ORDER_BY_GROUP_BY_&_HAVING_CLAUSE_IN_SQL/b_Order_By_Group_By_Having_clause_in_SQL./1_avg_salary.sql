SELECT d.deptid,d.deptname, AVG(salary) AS average_salary
FROM employee e, department d
WHERE e.deptid = d.deptid
GROUP BY d.deptid;
