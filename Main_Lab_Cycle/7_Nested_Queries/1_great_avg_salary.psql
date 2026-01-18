SELECT empid, empname, salary
FROM employee
GROUP BY empid
HAVING salary > ( SELECT AVG(salary) FROM employee ) 
ORDER BY empid;

