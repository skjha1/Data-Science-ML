Drop table Employee;
CREATE TABLE Employee  
(  
EmployeeID int primary key,  
FirstName varchar(255),  
LastName varchar(255),  
Email varchar(255),  
AddressLine varchar(255),  
City varchar(255),
Salary int
);  
select * from Employee;
INSERT INTO Employee (EmployeeID,FirstName,LastName,Email,AddressLine,City,Salary)
VALUES (1, 'shivendra', 'jha','shiv@gmail.com','DBG','Patna',1000000);
INSERT INTO Employee (EmployeeID,FirstName,LastName,Email,AddressLine,City,Salary)
VALUES (2, 'shubh', 'kumar','shubh@gmail.com','BKSC','JH',100000);


declare
v_salary NUMBER(8);
BEGIN
select Salary into v_salary from Employee
where EmployeeID =1;
DBMS_OUTPUT.PUT_LINE(v_salary);
end;
/
declare
v_salary NUMBER(8);
v_fname VARCHAR(20);
BEGIN
select Salary,FirstName into v_salary,v_fname from Employee
where EmployeeID = 1;
DBMS_OUTPUT.PUT_LINE(v_fname || ' Has salary '|| v_salary);
end;
