create table employees(EmpID varchar2(15),
Fname varchar2(10),
Lname varchar(10), 
Salary Number);


insert into employees (EmpID,Fname,Lname,Salary) values ('E1','shivendra','jha',20000);
select * from employees;

declare
incentive number (8,2);
begin
    select Salary * 0.12 into incentive 
    from employees
    where EmpID = 'E1';
dbms_output.put_line('Incentive = '|| TO_CHAR(incentive));
end;
