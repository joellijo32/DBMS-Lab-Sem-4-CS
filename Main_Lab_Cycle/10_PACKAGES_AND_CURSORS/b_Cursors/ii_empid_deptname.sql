DO $$
DECLARE
	emp_dept_cursor CURSOR FOR
		SELECT e.empid, e.empname, d.deptname FROM employee e JOIN department d ON e.deptid =
		d.deptid;
	 rec RECORD;
BEGIN
	OPEN emp_dept_cursor;
	LOOP
		FETCH emp_dept_cursor INTO rec;
		EXIT WHEN NOT FOUND;
		RAISE NOTICE 'EmpID: %, Name: %, Department: %',rec.empid, rec.empname, rec.deptname;
	END LOOP;
	CLOSE emp_dept_cursor;
END;
$$;
