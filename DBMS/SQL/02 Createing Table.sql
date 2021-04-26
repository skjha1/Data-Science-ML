
INT                           -- Whole Numbers
DECIMAL(M,N)                  -- Decimal Numbers - Exact Value
VARCHAR(l)                    -- String of text of length l
BLOB                          -- Binary Large Object, Stores large data
DATE                          -- 'YYYY-MM-DD'
TIMESTAMP                     -- 'YYYY-MM-DD HH:MM:SS' - used for recording events

-- Creating tables
CREATE TABLE student (
  student_id INT PRIMARY KEY,
  name VARCHAR(40),
  major VARCHAR(40)
  -- PRIMARY KEY(student_id)
);

DESCRIBE student;
DROP TABLE student;
ALTER TABLE student ADD gpa DECIMAL;
ALTER TABLE student DROP COLUMN gpa;


--------------------------------------------------------------------------------------------------------------------------
CREATE table student (
student_id INT PRIMARY KEY,
name varchar(100),
major varchar(100)

);
describe student;

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3,2);

ALTER TABLE student DROP COLUMN gpa;
