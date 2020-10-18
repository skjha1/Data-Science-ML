# Creating a database 
create database shivendra;
# del the database 
drop database shivendra;
# create table in Database 
create database shiva;
drop database shiv;
create database shiv;

create table stu(
id int not null auto_increment,
sname varchar(20),
address varchar(30),
primary key(id)
);
CREATE TABLE MyGuests (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(30) NOT NULL,
lastname VARCHAR(30) NOT NULL,
email VARCHAR(50),
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
CREATE DATABASE databasename;
drop Database testDB;
CREATE DATABASE testDB;

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
SHOW DATABASES; # to see all the existing databases 
# The BACKUP DATABASE statement is used in SQL Server to create a full back up of an existing SQL database.
backup database testDB
TO DISK = 'D:\backups\testDB.bak';
drop table Persons;
drop database shiv;
create database shivam;
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
drop database testdb1;
# here we dropped all the databases 
create database testDB;
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
create database testdb1;
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
drop table persons; # del the table 
# select stamement 
select * from persons;
select LastName,FirstName from persons; # specified columns 

# Where clause is used to filter records  # if we need only certain records from columns 	

select  Lastname 
from persons 
where city='GOA';
# operator AND 
select * from persons
WHERE Lastname ='jha' AND firstname='shivendra';
# or operator 
select * from persons
WHERE Lastname ='jha' or firstname='shivendra';
# not operator 
select * from persons
WHERE not Lastname ='jha';

# insert into : if we want to insert new records and new data into table then we can use insert queries

insert into Persons (firstname,lastname,address,city)
values ('shivendra','Jha','Darbhanga','Benipur');

select * from persons;

# Aggregate function : this returns the no of rows that match specified criteria 

select count (PersonID)
from persons;
select sum (PersonID)
from persons;
select avg(PersonID)
from persons;
select firstname,lastname, min (PersonID)
from persons;
select firstname,lastname, max (PersonID)
from persons;


# Groupby :  in sql to arrange idential data into groups with the help of some function 

select count (personID),city
from persons
group by city;

# having : Used to place conditions where we need to decide which group will be part of final result set 

select firstname, sum(marks)
from persons 
group by firstname
having sum(marks)>500;

