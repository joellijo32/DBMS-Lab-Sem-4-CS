CREATE OR REPLACE PROCEDURE count_emp(p_deptid INT, INOUT emp_count INT) 
AS $$
BEGIN
	SELECT COUNT(*) INTO emp_count
	FROM employee
	WHERE deptid = p_deptid;
END;
$$ LANGUAGE plpgsql;



CALL count_emp(103, NULL);
