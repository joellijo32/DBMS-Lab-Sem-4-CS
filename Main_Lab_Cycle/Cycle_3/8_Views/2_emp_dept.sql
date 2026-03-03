CREATE VIEW emp_basic AS
SELECT employee.empid, empname, dob, city, salary, deptname
FROM employee
JOIN department ON employee.deptid = department.deptid ;


SELECT * 
FROM emp_basic ;
