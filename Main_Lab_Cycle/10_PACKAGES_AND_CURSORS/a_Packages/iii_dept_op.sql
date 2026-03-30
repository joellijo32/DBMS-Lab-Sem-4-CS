CREATE OR REPLACE PROCEDURE company_pkg.transfer_employee(p_empid INT, p_new_dept INT)
LANGUAGE plpgsql
AS $$
DECLARE v_old_dept INT;
BEGIN
	SELECT DeptID INTO v_old_dept FROM employee WHERE EmpID = p_empid;
	IF NOT FOUND THEN
		RAISE EXCEPTION 'Employee does not exist';
	END IF;

	UPDATE employee SET DeptID = p_new_dept WHERE EmpID = p_empid;
	UPDATE department SET Fund = Fund * 0.95 WHERE DeptID = v_old_dept;
	UPDATE department SET Fund = Fund * 1.05 WHERE DeptID = p_new_dept;
	RAISE NOTICE 'Employee transferred successfully';
END;
$$;

CALL company_pkg.transfer_employee(3, 101);
