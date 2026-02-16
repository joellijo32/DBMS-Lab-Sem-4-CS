CREATE OR REPLACE PROCEDURE add_employee(p_empid INT, p_ename TEXT, p_dob DATE, p_city TEXT, p_doj DATE, p_salary NUMERIC, p_deptid INT)
AS $$
BEGIN
	INSERT INTO employee VALUES( p_empid, p_ename, p_dob, p_city, p_doj, p_salary, p_deptid);
	RAISE NOTICE 'Employee Added Successfully' ;
END;
$$ LANGUAGE plpgsql; 




CALL add_employee(16, 'Priya', '1997-02-15', 'Chennai', '2022-09-01', 50000, 102);
