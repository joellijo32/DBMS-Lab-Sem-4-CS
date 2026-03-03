CREATE OR REPLACE PROCEDURE sal_inc(p_empid INT , p_amount INT) 
AS $$
BEGIN
	UPDATE employee 
	SET salary = salary + p_amount
	WHERE empid = p_empid;
	RAISE NOTICE 'Salary Updated';
END;
$$ LANGUAGE plpgsql; 

CALL sal_inc(10, 100);
