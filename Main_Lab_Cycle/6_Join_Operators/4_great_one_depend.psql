SELECT employee.empid, empname, COUNT(*) AS number_of_dependents
FROM employee 
JOIN dependent ON employee.empid = dependent.empid
GROUP BY employee.empid
HAVING COUNT(*) > 1;
