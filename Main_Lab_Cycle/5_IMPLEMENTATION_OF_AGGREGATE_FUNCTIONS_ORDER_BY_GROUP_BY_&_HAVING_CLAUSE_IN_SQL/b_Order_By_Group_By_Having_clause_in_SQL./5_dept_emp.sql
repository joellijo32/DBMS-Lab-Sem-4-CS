SELECT employee.deptid, department.deptname, COUNT(employee.empid) AS number_of_employees
FROM department
JOIN employee ON department.deptid = employee.deptid
GROUP BY department.deptname, employee.deptid
HAVING COUNT(employee.empid) > 5;
