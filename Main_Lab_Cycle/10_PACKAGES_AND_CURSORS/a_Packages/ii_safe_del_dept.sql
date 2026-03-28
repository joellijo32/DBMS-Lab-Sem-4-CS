CREATE OR REPLACE PROCEDURE company_pkg.safe_delete_department(p_deptid INT)
LANGUAGE plpgsql
AS $$
DECLARE v_count INT;
BEGIN
	SELECT COUNT(*) INTO v_count FROM EMPLOYEE WHERE DeptID = p_deptid;
	IF v_count > 0 THEN
		RAISE EXCEPTION 'Cannot delete department. Employees exist.';
	end if;
	DELETE FROM DEPARTMENT WHERE DeptID = p_deptid;
	RAISE NOTICE 'Department deleted successfully';
END;
$$;
