CREATE table student (
student_id INT PRIMARY KEY,
name varchar(100),
major varchar(100)

);
describe student;

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3,2);

ALTER TABLE student DROP COLUMN gpa;
