SELECT employee.empid, empname, relation_with_employee, age
FROM employee
JOIN dependent ON employee.empid = dependent.empid
WHERE age > 18 ;
