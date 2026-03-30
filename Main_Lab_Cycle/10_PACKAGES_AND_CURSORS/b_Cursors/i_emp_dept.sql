DO $$
DECLARE emp_cursor CURSOR FOR
	SELECT EmpID, Empname, Salary FROM employee WHERE DeptID = 101;
	emp_record RECORD;
BEGIN
	OPEN emp_cursor;
	LOOP
		FETCH emp_cursor INTO emp_record;
		EXIT WHEN NOT FOUND;
		RAISE NOTICE 'EmpID: %, Name: %, Salary: %',emp_record.EmpID, emp_record.Empname, emp_record.Salary;
	END LOOP;
	CLOSE emp_cursor;
END;
$$;
