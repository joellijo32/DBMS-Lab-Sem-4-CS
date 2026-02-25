ALTER TABLE dependent ADD gender TEXT;
UPDATE dependent SET gender='female' WHERE empid = 102 AND dependentname='Lakshmi' ;
