CREATE OR REPLACE FUNCTION company_pkg.employee_summary(p_empid INT)
RETURNS TABLE( employee_name TEXT, department_name TEXT, total_dependents BIGINT, annual_salary BIGINT )
LANGUAGE plpgsql
AS $$
BEGIN
	RETURN QUERY
	SELECT e.empname,d.deptname,COUNT(dep.dependName),e.salary * 12
	FROM employee e JOIN department d ON e.deptid = d.deptid
	LEFT JOIN dependent dep ON e.empid = dep.empid
	WHERE e.empid = p_empid GROUP BY e.empname, d.deptname, e.salary;
END;
$$;

SELECT * FROM company_pkg.employee_summary(2);
