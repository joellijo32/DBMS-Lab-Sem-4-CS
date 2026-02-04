CREATE OR REPLACE FUNCTION reduce_dep_fund()
RETURNS TRIGGER AS $$
BEGIN
	UPDATE department
	SET fund = fund - NEW.salary
	WHERE deptid = NEW.deptid;
	RETURN NEW;
END; 
$$ LANGUAGE plpgsql; 

CREATE TRIGGER fund_red 
AFTER INSERT ON employee
FOR EACH ROW
EXECUTE FUNCTION reduce_dep_fund();
