-- Constants is a user defined identifier whose value remains unchanged thouughout the program..

-- syntax-> Constant-name CONSTANT datatype (dw) := value;

-- * You must initilize a constant at its declaration

declare 
v_pi CONSTANT NUMBER (7,6) := 3.141592; -- declaration and intilazition 
begin
dbms_output.put_line(v_pi);
end;
/ 
declare 
c_pi CONSTANT NUMBER(7,6);
begin
c_pi:=3.141592; -- This is not accepted with constant. // this will give error because we can't initialize contant inside begin
dbms_output.put_line(c_pi);
end;
/ 




------ Default keyword;

declare
v_pi constant number (7,6) default 3.141592;
begin
dbms_output.put_line(v_pi);
end;

-- Not Null

declare 
v_pi constant number (7,6) not null default 3.141592 ;
begin
dbms_output.put_line(v_pi);
end;
