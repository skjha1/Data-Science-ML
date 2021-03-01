-- Basic and main Dataype we will use in sql (Relational datatypes)

-- INT 						-- Whole number(integer) 
-- DECIMAL(10(M),4(N)) 		-- Decimal number - excact value
-- VARCHAR(100) 			- string or text of length with 100
-- BOLB					- Binary large object, stores large data
-- DATE					- 'YYYY-MM-DD'
-- timestump			-'YYYY-MM-DD' HH:MM:SS- used for recording 

-- Creating tables 

CREATE TABLE Shivendra (
	student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
     PRIMARY KEY (student_id)
);
 
describe shivendra; -- this will describe the table 

DROP TABLE shivendra ;-- this is for dropping the table -- if we call describe after this it wont work 

ALTER TABLE shivendra ADD cgpa DECIMAL(3,2);

ALTER TABLE shivendra DROP COLUMN cgpa;

-- Inserting data into the table 



INSERT INTO shivendra VALUES (1,'RAM','BIO');
INSERT INTO shivendra VALUES (2,'Shyam','Computer'); 
INSERT INTO shivendra  VALUES(3,'shivam','Chemistry'); 
INSERT INTO shivendra VALUES (4,'Sita','Civil');
INSERT INTO shivendra VALUES (5,'Msnish','Mechanical');

SELECT * FROM shivendra;-- everytime run this line after inserting data in row of the table


-- Update and delete 

SELECT * FROM shivendra;

UPDATE shivendra
SET major = 'CSE'
WHERE major = 'Computer';

UPDATE shivendra
SET major = 'CSE'
WHERE student_id = 1;

UPDATE shivendra
SET major = 'BioChemistry'
WHERE major = 'CSE' OR major ='Chemistry';

SELECT * FROM shivendra;

DELETE FROM shivendra
WHERE student_id =1 or student_id=2; -- specifically del particulr row && string will be written inside the quote

DELETE FROM student;   -- delete full table 
