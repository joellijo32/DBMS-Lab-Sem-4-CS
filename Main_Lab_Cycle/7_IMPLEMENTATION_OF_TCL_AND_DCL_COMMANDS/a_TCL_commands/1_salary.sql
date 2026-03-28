BEGIN;


SAVEPOINT begin;


SELECT * from employee
WHERE empid = 5;


UPDATE employee
SET salary = 50000 
WHERE empid = 5;



SELECT * from employee
WHERE empid = 5;


ROLLBACK TO begin;


SELECT * from employee
WHERE empid = 5;


COMMIT;
