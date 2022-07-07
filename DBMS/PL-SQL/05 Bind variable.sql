-- bind variables in oracle database can be defined as the variables that we create in SQL * PLUS and then reference in PL/SQL.

-- declaration of bind variables

variable v_bind1 varchar2(10); -- here no pl/sql block is required to initialize bind variables

exec : v_bind1 := 'Shivendra Jha';  

-- 2nd way of initializing bind variable 
SET SERVEROUTPUT ON;
begin 
 :v_bind1 := 'Shivendra Jha';
 dbms_output.put_line(:v_bind1);
end;
/
PRINT :v_bind1;




SET AUTOPRINT ON;
variable v_bind2 varchar2(30);
exec :v_bind2 :='Shivendra';

