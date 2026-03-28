CREATE OR REPLACE PROCEDURE emp_transfer( p_empid INT, p_new_dept INT)
AS $$
BEGIN
	IF NOT EXISTS (SELECT 1 FROM employee WHERE empid = p_empid) THEN
		RAISE EXCEPTION 'Employee does not exist' ;
	END IF;

	IF NOT EXISTS (SELECT 1 FROM department WHERE deptid = p_new_dept) THEN
		RAISE EXCEPTION 'Department does not exist' ;
	END IF;


	UPDATE employee 
	SET deptid = p_new_dept WHERE empid = p_empid;
END;
$$ LANGUAGE plpgsql; 


CALL emp_transfer(3, 104);
