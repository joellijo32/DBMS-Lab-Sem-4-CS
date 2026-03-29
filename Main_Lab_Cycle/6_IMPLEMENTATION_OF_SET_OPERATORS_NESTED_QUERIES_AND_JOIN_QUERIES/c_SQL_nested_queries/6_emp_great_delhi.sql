SELECT ename
FROM employee
WHERE salary > ALL (
    SELECT salary
    FROM employee
    WHERE deptid IN (
        SELECT deptid
        FROM department
        WHERE location = 'Delhi'
    )
);