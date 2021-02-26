-- Basic and main Dataype we will use in sql (Relational datatypes)

-- INT 						-- Whole number(integer) 
-- DECIMAL(10(M),4(N)) 		-- Decimal number - excact value
-- VARCHAR(100) 			- string or text of length with 100
-- BOLB					- Binary large object, stores large data
-- DATE					- 'YYYY-MM-DD'
-- timestump			-'YYYY-MM-DD' HH:MM:SS- used for recording 

-- Creating tables 

CREATE TABLE Shivendra (
	student_id INT PRIMARY KEY AUTO_INCREMENT, -- this is defined as the primary key -- with auto_increament we need not to keep all the time id 
    name VARCHAR(20) , -- NOT NULL, -- the constraits is set to be not null i.e this row cant be null 
    major VARCHAR(20) DEFAULT 'undecided' -- we can keep as default value  -- UNIQUE --major should be unique  ,
    -- PRIMARY KEY (student_id) -- this is also a equivalent way to defne primary key
);
 
describe shivendra; -- this will describe the table 

DROP TABLE shivendra ;-- this is for dropping the table -- if we call describe after this it wont work 

ALTER TABLE shivendra ADD cgpa DECIMAL(3,2);

ALTER TABLE shivendra DROP COLUMN cgpa;

-- Inserting data into the table 

SELECT * FROM shivendra;-- everytime run this line after inserting data in row of the table

INSERT INTO shivendra VALUES (1,'RAM','BIO');
INSERT INTO shivendra(student_id,name) VALUES (2,'Shyam'); -- we can set as a default values 

INSERT INTO shivendra  VALUES(3,NULL,'Che'); -- we cant keep null in name 
-- INSERT INTO shivendra VALUES (1,'Kareem','Maths');-- primary key cant be duplicate
INSERT INTO shivendra VALUES (4,'Sita','BIO'); -- major cant be duplicate because it is unique 
INSERT INTO shivendra VALUES (5,'Msnish','Mechanical');
