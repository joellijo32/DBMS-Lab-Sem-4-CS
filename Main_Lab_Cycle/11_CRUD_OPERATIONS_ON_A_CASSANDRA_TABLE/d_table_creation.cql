CREATE TABLE department (did INT PRIMARY KEY, dname TEXT, fund DECIMAL);
CREATE TABLE employee (eid INT PRIMARY KEY, ename TEXT, dob DATE, deptid INT);
CREATE TABLE dependent (empid INT, dependentname TEXT, age INT, PRIMARY KEY
(empid, dependentname));

