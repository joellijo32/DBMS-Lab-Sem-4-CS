ALTER TABLE dependent ADD gender TEXT;

UPDATE dependent SET gender='female' WHERE empid = 101 AND dependentname='Anu' ;
UPDATE dependent SET gender='male' WHERE empid = 101 AND dependentname='Kiran' ;
UPDATE dependent SET gender='female' WHERE empid = 102 AND dependentname='Lakshmi' ;

SELECT * FROM dependent;
