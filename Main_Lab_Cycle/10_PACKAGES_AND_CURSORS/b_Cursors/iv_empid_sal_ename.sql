DO $$
DECLARE
	dep1_cursor CURSOR FOR
	SELECT empid,empname,salary FROM employee order by salary desc limit 2;
	rec RECORD;
BEGIN
	OPEN dep1_cursor;
	LOOP
		FETCH dep1_cursor INTO rec;
		EXIT WHEN NOT FOUND;
		RAISE NOTICE 'Employee ID: %, ename: %, salary: %', rec.empid, rec.empname,rec.salary;
	END LOOP;
	CLOSE dep1_cursor;
END;
$$;
