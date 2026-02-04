CREATE OR REPLACE FUNCTION limit_max_depend()
RETURNS TRIGGER AS $$
BEGIN
	IF (SELECT COUNT(*) FROM dependent WHERE empid= NEW.empid ) >= 3 THEN
		RAISE EXCEPTION 'Number of dependents should be atmost 3';
	END IF;
	RETURN NEW;
END;
$$ LANGUAGE plpgsql; 


CREATE TRIGGER depend_count
BEFORE INSERT ON dependent
FOR EACH ROW 
EXECUTE FUNCTION limit_max_depend();
