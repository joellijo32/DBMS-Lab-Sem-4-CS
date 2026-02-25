CREATE OR REPLACE FUNCTION avg_salary(p_deptid INT)
RETURNS FLOAT
AS $$
DECLARE avg_sal FLOAT;
BEGIN
	SELECT AVG(salary) INTO avg_sal FROM employee WHERE deptid = p_deptid; 
	RETURN avg_sal; 
END;
$$ LANGUAGE plpgsql;


