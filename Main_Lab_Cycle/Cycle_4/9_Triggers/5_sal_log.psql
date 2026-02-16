CREATE TABLE salary_log 
(empid INTEGER, empname TEXT, old_salary BIGINT, new_salary BIGINT, FOREIGN KEY (empid) REFERENCES employee (empid));


CREATE OR REPLACE FUNCTION salary_log()
RETURNS TRIGGER AS $$
BEGIN
	INSERT INTO salary_log VALUES 
	(NEW.empid, OLD.empname, OLD.salary, NEW.salary); 
END;
$$ LANGUAGE plpgsql; 


CREATE TRIGGER log_sal
BEFORE UPDATE ON employee
FOR EACH ROW 
EXECUTE FUNCTION salary_log();
