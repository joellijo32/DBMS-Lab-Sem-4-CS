SELECT e.empid, empname, relation_with_employee, age
FROM employee e
JOIN dependent d ON e.empid = d.empid
WHERE age > 18 ;
