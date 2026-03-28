SELECT e.empid, empname, COUNT(*) AS number_of_dependents
FROM employee e
JOIN dependent d ON e.empid = d.empid
GROUP BY e.empid
HAVING COUNT(*) > 1;
