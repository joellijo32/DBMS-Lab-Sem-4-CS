CREATE OR REPLACE FUNCTION tot_emp(p_deptid INT)
RETURNS INT 
AS $$
DECLARE emp_count INT; 
BEGIN
	SELECT COUNT(*) INTO emp_count
	FROM employee
	WHERE deptid = p_deptid; 

	RETURN emp_count; 
END; 
$$ LANGUAGE plpgsql; 


