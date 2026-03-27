TRUNCATE TABLE department, employee, dependent RESTART IDENTITY CASCADE;


INSERT INTO department VALUES
(101, 'HR', 'Mumbai', 100000), 
(102, 'IT', 'Bangalore', 200000), 
(103, 'Sales', 'Delhi', 300000), 
(104, 'Finance', 'Chennai', 800000), 
(105, 'Marketing', 'Hyderabad', 600000);


INSERT INTO employee (empid, empname, dob, city, doj, salary, deptid) VALUES
(1, 'Ananya', '1990-05-15', 'Mumbai', '2022-01-10', 60000, 104),
(2, 'Balaji', '1985-08-20', 'Delhi', '2021-03-15', 55000, 104),
(3, 'Chirag', '1992-12-01', 'Bangalore', '2022-06-20', 70000, 102),
(4, 'Dev', '1988-07-30', 'Chennai', '2023-01-05', 48000, 105),
(5, 'Esha', '1995-02-14', 'Hyderabad', '2020-11-01', 52000, 105),
(6, 'Farhan', '1991-04-25', 'Bangalore', '2022-08-15', 72000, 102),
(7, 'Gaurav', '1993-07-12', 'Bangalore', '2023-02-01', 68000, 102),
(8, 'Hina', '1996-11-30', 'Bangalore', '2023-03-10', 65000, 102),
(9, 'Ishaan', '1989-04-22', 'Bangalore', '2021-09-15', 75000, 102),
(10, 'Jaya', '1994-01-18', 'Bangalore', '2022-12-01', 71000, 102),
(11, 'Kabir', '1990-09-09', 'Bangalore', '2020-05-20', 80000, 103),
(12, 'Laksh', '1999-12-12', 'Delhi', '2023-04-01', 40000, 103),
(13, 'Manav', '1995-05-05', 'Delhi', '2023-06-01', 42000, 103),
(14, 'Sanjay', '1995-05-14', 'Pune', '2020-01-04', 81500, 101),
(15, 'Alok', '1993-11-14', 'Chennai', '2019-06-28', 48000, NULL),
(16, 'Anita', '1994-01-18', 'Chennai', '2021-12-05', 60111, NULL),
(17, 'Nikhil', '1992-03-10', 'Kannur', '2022-07-01', 50000, 101),
(18, 'Rahul', '1991-06-21', 'Calicut', '2021-05-12', 52000, 102),
(19, 'Sneha', '1996-09-18', 'Trivandrum', '2023-01-20', 48000, 103),
(20, 'Arjun', '1994-11-05', 'Kannur', '2020-10-10', 55000, 104),
(21, 'Meera', '1997-02-25', 'Calicut', '2022-03-15', 47000, 105),
(22, 'Vivek', '1990-08-14', 'Trivandrum', '2019-12-01', 60000, 101);


INSERT INTO dependent (dependname, age, gender, empid, relation_with_employee) VALUES 
('Baby Ananya', 3, 'Female', 1, 'Daughter'),
('Little Balaji', 5, 'Male', 2, 'Son'),
('Teen Chirag', 12, 'Male', 3, 'Son'),
('Grandpa Dev', 70, 'Male', 4, 'Father'),
('Baby Esha', 1, 'Female', 5, 'Daughter'),
('Esha', 68, 'Male', 5, 'Father'),      
('Esha', 66, 'Female', 5, 'Mother'),
('Partner Farhan', 30, 'Others', 6, 'Spouse'),
('Gaurav Junior', 4, 'Male', 7, 'Son'),       
('Jayas Brother', 25, 'Male', 10, 'Brother'), 
('Kabirs Dad', 75, 'Male', 11, 'Father'),
('Lakshs Son', 2, 'Male', 12, 'Son'),           
('Lakshs Wife', 24, 'Female', 12, 'Spouse'),   
('Manavs Cat', 5, 'Others', 13, 'Spouse'),     
('Sanjay', 63, 'Female', 14, 'Mother'),
('Raj', 54, 'Male', 16, 'Spouse');
