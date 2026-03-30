CREATE OR REPLACE PROCEDURE company_pkg.add_employee(p_EmpID INT, p_Ename VARCHAR, p_DOB DATE, p_City VARCHAR, p_DOJ DATE, p_Salary NUMERIC, p_DeptID INT)
LANGUAGE plpgsql
AS $$
BEGIN
 	INSERT INTO employee VALUES (p_EmpID, p_Ename, p_DOB, p_City, p_DOJ,
			             p_Salary, p_DeptID);
	RAISE NOTICE 'Employee inserted successfully';
END;
$$;

CALL company_pkg.add_employee(50, 'Ganesh', '1998-05-10', 'Kochi', '2024-01-01', 45000, 101);

SELECT * FROM employee WHERE empid=50;
