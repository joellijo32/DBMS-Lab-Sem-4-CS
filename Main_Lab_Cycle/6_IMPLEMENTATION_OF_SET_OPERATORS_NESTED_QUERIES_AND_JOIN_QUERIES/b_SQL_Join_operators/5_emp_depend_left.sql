SELECT e.empid, empname, dependname, relation_with_employee
FROM employee e
LEFT JOIN dependent d ON e.empid = d.empid 
ORDER BY e.empid ;
