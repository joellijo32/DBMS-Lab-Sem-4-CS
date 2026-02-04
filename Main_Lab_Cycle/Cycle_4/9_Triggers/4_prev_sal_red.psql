CREATE OR REPLACE FUNCTION check_sal_red()
RETURNS TRIGGER AS $$
BEGIN
	IF (OLD.salary > NEW.salary ) THEN
		RAISE EXCEPTION 'Salary reduction not allowed'; 
	END IF;
	RETURN NEW;
END;
$$ LANGUAGE plpgsql; 

CREATE TRIGGER sal_red_prev
BEFORE UPDATE ON employee 
FOR EACH ROW 
EXECUTE FUNCTION check_sal_red(); 
