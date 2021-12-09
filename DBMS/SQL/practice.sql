create database shivendra1; -- 1st line 
use shivendra1; 			-- 2nd line 
drop database shivendra1;	
drop table student;
CREATE TABLE student (		-- 3rd create table
  student_id INT PRIMARY KEY,
  name1 VARCHAR(40),
  major VARCHAR(40),
  address VARCHAR(40),
  email VARCHAR(40)
  -- PRIMARY KEY(student_id)
);
desc student;				-- 4th line 

alter table student add mob_no varchar(20);
desc student;
alter table student drop column mob_no;
alter table student modify column student_id varchar(30);
alter table student rename to student_details;
desc student_details;

INSERT INTO student_details (student_id,name1,major,address,email)
VALUES (1,'Sandeep','IT','Kanpur','sandeep@gmail.com'), (2,'Sandeep','IT','Kanpur','sandeep@gmail.com'),(3,'Sandeep','IT','Kanpur','sandeep@gmail.com');

SELECT * FROM shivendra1.student_details;
SELECT name1 from student_details where student_id=1;
SELECT major from student_details where student_id=1;

SET SQL_SAFE_UPDATES=0;


UPDATE student_details
SET name1 = 'shivendra'
WHERE student_id = 3;

SELECT * FROM shivendra1.student_details;

UPDATE student_details -- if we want to change all the attribues of the table;
SET major = 'CSE'
WHERE major = 'IT';


DELETE FROM student_details
WHERE student_id = 3;

DELETE FROM student_details
WHERE major = 'CSE' AND name1 = 'Sandeep';

------------------------------------

SELECT *
FROM student_details;

SELECT student_details.name1, student_details.major
FROM student_details;

SELECT *
FROM student
WHERE name = 'Jack';

SELECT *
FROM student_details
WHERE student_id > 2;

SELECT *
FROM student_details
WHERE major = 'IT' AND student_id > 1;
