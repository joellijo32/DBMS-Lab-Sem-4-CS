CREATE OR REPLACE FUNCTION emp_det(p_deptid INT)
RETURNS TABLE(empid INT, ename TEXT, salary BIGINT, deptname TEXT, location TEXT)
AS $$
BEGIN
	RETURN QUERY
	SELECT e.empid, e.empname, e.salary, d.deptname, d.location 
	FROM employee e JOIN department d ON e.deptid = d.deptid
	WHERE e.deptid = p_deptid;
END;
$$ LANGUAGE plpgsql;
