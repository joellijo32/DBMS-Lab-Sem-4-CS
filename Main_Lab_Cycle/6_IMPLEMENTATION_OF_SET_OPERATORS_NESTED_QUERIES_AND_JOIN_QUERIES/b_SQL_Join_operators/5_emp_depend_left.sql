SELECT employee.empid, empname, dependname, relation_with_employee
FROM employee
LEFT JOIN dependent ON employee.empid = dependent.empid 
ORDER BY employee.empid ;
