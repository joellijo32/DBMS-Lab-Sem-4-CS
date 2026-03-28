ALTER TABLE dependent ADD gender TEXT;

UPDATE dependent SET gender='female' WHERE empid = 102 AND dependentname='Lakshmi' ;
UPDATE dependent SET gender='female' WHERE empid = 101 AND dependentname='Arjun' ;
UPDATE dependent SET gender='female' WHERE empid = 101 AND dependentname='Riya' ;
UPDATE dependent SET gender='female' WHERE empid = 103 AND dependentname='Asha' ;
UPDATE dependent SET gender='female' WHERE empid = 103 AND dependentname='Vikram' ;

SELECT * FROM dependent;
