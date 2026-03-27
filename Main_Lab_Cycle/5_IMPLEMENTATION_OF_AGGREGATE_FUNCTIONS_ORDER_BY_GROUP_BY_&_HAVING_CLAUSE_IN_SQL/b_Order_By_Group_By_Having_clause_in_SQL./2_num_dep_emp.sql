SELECT e.empid, empname, COUNT(*) AS number_of_dependents
FROM dependent d, employee e
WHERE e.empid = d.empid
GROUP BY e.empid
ORDER BY e.empid;
