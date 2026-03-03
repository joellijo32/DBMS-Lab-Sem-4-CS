CREATE OR REPLACE PROCEDURE no_emp_sal(p_amount INT, INOUT emp_count INT)
AS $$
BEGIN
	SELECT COUNT(*) INTO emp_count
	FROM employee
	WHERE salary > p_amount;
END;
$$ LANGUAGE plpgsql;



CALL no_emp_sal(10000, NULL);
