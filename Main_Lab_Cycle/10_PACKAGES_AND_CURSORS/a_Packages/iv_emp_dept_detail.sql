CREATE OR REPLACE PROCEDURE company_pkg.display_employee_details()
LANGUAGE plpgsql
AS $$
DECLARE rec RECORD;
BEGIN
    FOR rec IN
        SELECT e.EmpID, e.Empname, d.DeptName, e.Salary
        FROM employee e
        JOIN department d
        ON e.DeptID = d.DeptID
    LOOP
        RAISE NOTICE 'EmpID: %, Name: %, Department: %, Salary: %',
        rec.EmpID, rec.Empname, rec.DeptName, rec.Salary;
    END LOOP;
END;
$$;


CALL company_pkg.display_employee_details();
