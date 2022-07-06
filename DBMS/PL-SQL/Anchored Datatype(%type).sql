create table Student(
RegNo int,
Name1 Varchar2(20)
);
insert into Student(RegNo,Name1) values (152,'Shivendra');
insert into Student(RegNo,Name1) values (141,'Shubh');
select * from Student;

declare
v_fname Student.Name1%type; -- Anchored datatypes
begin 
select Name1 into v_fname from Student where RegNo = 152;
DBMS_OUTPUT.PUT_LINE(v_fname);
end;
/
declare
v_fname varchar2(8);
begin 
select Name1 into v_fname from Student where RegNo=141;
DBMS_OUTPUT.PUT_LINE(v_fname);
end;
