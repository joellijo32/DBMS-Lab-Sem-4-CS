SELECT employee.empid, empname, COUNT(*) AS number_of_dependents
FROM dependent, employee
WHERE employee.empid = dependent.empid
GROUP BY employee.empid
ORDER BY employee.empid;
