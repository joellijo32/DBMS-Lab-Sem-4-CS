BEGIN;


SAVEPOINT begin;


SELECT * FROM employee;


DELETE FROM dependent
WHERE empid = 6;


DELETE FROM employee
WHERE empid = 6;


SELECT * FROM employee;


SAVEPOINT deletion ;


SELECT * FROM dependent;


INSERT INTO dependent VALUES
('Alice Spouse', 55, 'Male', 1, 'Spouse' );


SELECT * FROM dependent;


ROLLBACK TO deletion;


SELECT * FROM dependent;


ROLLBACK TO begin;


SELECT * FROM employee;


COMMIT;
