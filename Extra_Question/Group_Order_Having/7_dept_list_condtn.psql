SELECT department.deptid, deptname, COUNT(employee.empid) AS number_of_employees, AVG(salary) AS average_salary 
FROM department
JOIN employee ON department.deptid = employee.deptid
GROUP BY department.deptname, department.deptid
HAVING COUNT(employee.empid) > 3
ORDER BY average_salary ASC;
