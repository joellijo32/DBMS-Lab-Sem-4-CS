CREATE VIEW it_emp AS
SELECT empname
FROM employee
WHERE deptid = (
    SELECT deptid
    FROM department
    WHERE deptname = 'IT'
);

SELECT * FROM it_emp;