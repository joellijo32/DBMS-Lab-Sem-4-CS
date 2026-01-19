DROP TABLE IF EXISTS 
    buildings, 
    categories, 
    classes, 
    classrooms, 
    faculty, 
    faculty_categories, 
    faculty_classes, 
    faculty_subjects, 
    staff, 
    student_class_status, 
    student_schedules, 
    students, 
    subjects 
CASCADE;


CREATE TABLE department(
	deptid INT PRIMARY KEY, 
	deptname TEXT, 
	location TEXT, 
	fund BIGINT
);



CREATE TABLE employee(
	empid INT PRIMARY KEY,
	empname TEXT, 
	dob DATE, 
	city TEXT,
	doj DATE,
	salary BIGINT DEFAULT 0, 
	deptid INT,
	FOREIGN KEY (deptid) REFERENCES department(deptid)
);



CREATE TABLE dependent(
	dependname TEXT, 
	age INT , 
	gender TEXT CHECK (gender IN ('Male', 'Female', 'Others')), 
	empid INT, 
	relation_with_employee TEXT, 
	FOREIGN KEY (empid) REFERENCES employee (empid)
);



 
	
