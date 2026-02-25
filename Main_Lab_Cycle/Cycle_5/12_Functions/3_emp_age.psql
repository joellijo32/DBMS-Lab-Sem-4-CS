CREATE OR REPLACE FUNCTION emp_age(p_empid INT)
RETURNS INT
AS $$
DECLARE age_years INT;
BEGIN
	SELECT EXTRACT(YEAR FROM AGE(DOB)) INTO age_years FROM employee WHERE empid = p_empid;
	RETURN age_years;
END; 
$$ LANGUAGE plpgsql;
