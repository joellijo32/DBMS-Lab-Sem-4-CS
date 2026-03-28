DO $$
DECLARE
	dep_cursor CURSOR FOR
		SELECT empid, COUNT(*) AS total_dependents FROM dependent GROUP BY empid;
	rec RECORD;
BEGIN
	OPEN dep_cursor;
	LOOP
		FETCH dep_cursor INTO rec;
		EXIT WHEN NOT FOUND;
		RAISE NOTICE 'Employee ID: %, Dependents: %', rec.empid, rec.total_dependents;
	END LOOP;
	CLOSE dep_cursor;
END;
$$;
