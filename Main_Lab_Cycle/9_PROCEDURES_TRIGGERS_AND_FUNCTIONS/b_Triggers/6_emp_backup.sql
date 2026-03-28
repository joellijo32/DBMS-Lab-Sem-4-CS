CREATE TABLE backup
(empid INTEGER,
empname TEXT, 
dob DATE, 
city TEXT, 
doj DATE, 
salary BIGINT, 
deptid INTEGER, 
FOREIGN KEY (deptid) REFERENCES department (deptid) 
);


CREATE OR REPLACE FUNCTION back_emp()
RETURNS TRIGGER AS $$
BEGIN
	INSERT INTO backup VALUES 
	(OLD.empid, OLD.empname, OLD.dob, OLD.city, OLD.doj, OLD.salary, OLD.deptid);
END;
$$ LANGUAGE plpgsql; 


CREATE TRIGGER trig_back_emp
BEFORE DELETE ON employee
FOR EACH ROW 
EXECUTE FUNCTION back_emp(); 

