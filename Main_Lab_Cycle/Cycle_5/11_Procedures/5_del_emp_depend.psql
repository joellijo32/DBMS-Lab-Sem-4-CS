CREATE OR REPLACE PROCEDURE safe_delete_employee(p_empid INT)
AS $$
DECLARE dep_count INT;
BEGIN
	SELECT COUNT(*) INTO dep_count FROM dependent
	WHERE empid = p_empid;
	IF dep_count > 0 THEN 
		RAISE EXCEPTION 'Cannot delete. Employee has dependents' ;
	END IF;

	DELETE FROM employee WHERE empid = p_empid;
	RAISE NOTICE 'Employee Deleted Successfully' ;
END;
$$ LANGUAGE plpgsql;

CALL safe_delete_employee(2);
CALL safe_delete_employee(8);
