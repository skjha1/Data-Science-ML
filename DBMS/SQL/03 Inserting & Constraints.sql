CREATE table student (
student_id INT PRIMARY KEY, -- auto_increment * this will automatically increment the primary key 
name varchar(100) NOT NULL, -- this field cant be null in the table
major varchar(100) UNIQUE -- it shold be unique *DEFAULT 'undecided'

);
describe student;

DROP TABLE student;


-- now we are going to see how to insert value into table 
SELECT * FROM student; -- select all from student table 
INSERT INTO student VALUES(1,'RAM','CSE');

INSERT INTO student VALUES(2,'RAMU','BIO');

INSERT INTO student(student_id,name) VALUES (3,'Shyam');
-- you cant do duplicate entry of primary key 

insert into student value (4,'Geeta','PHY')

-----------------------------------------------------------------------------


CREATE TABLE student (
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(40) NOT NULL,
  -- name VARCHAR(40) UNIQUE,
  major VARCHAR(40) DEFAULT 'undecided',
);
