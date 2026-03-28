CREATE OR REPLACE FUNCTION check_salary()
RETURNS TRIGGER AS $$
BEGIN
	IF NEW.salary < 10000 THEN 
		RAISE EXCEPTION 'Salary must be atleast 10000' ;
	END IF;
	RETURN NEW;
END;
$$ LANGUAGE plpgsql; 

CREATE TRIGGER salary_check_trigger
BEFORE INSERT ON employee 
FOR EACH ROW
EXECUTE FUNCTION check_salary(); 
