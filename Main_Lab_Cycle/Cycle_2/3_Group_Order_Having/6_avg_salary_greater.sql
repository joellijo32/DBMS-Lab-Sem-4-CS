SELECT department.deptid, deptname, AVG(salary) AS average_salary
FROM department
JOIN employee ON department.deptid = employee.deptid
GROUP BY department.deptname, department.deptid
HAVING AVG(employee.salary) > 50000 ;
