CREATE OR REPLACE PROCEDURE company_pkg.transfer_employee(p_empid INT, p_new_dept INT)
LANGUAGE plpgsql
AS $$
DECLARE v_old_dept INT;
BEGIN
	SELECT DeptID INTO v_old_dept FROM EMPLOYEE WHERE EmpID = p_empid;
	IF NOT FOUND THEN
		RAISE EXCEPTION 'Employee does not exist';
	END IF;

	UPDATE EMPLOYEE SET DeptID = p_new_dept WHERE EmpID = p_empid;
	UPDATE DEPARTMENT SET Fund = Fund * 0.95 WHERE DeptID = v_old_dept;
	UPDATE DEPARTMENT SET Fund = Fund * 1.05 WHERE DeptID = p_new_dept;
	RAISE NOTICE 'Employee transferred successfully';
END;
$$;
