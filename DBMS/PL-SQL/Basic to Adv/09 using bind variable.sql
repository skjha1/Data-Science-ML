SET SERVEROUTPUT ON;
set AUTOPRINT on;
variable var_text varchar2(30);
variable var_number number;


declare
    v_text varchar2(30);
begin 
    :var_text := 'Hello PL/SQL';
    :var_number := 4852;
    v_text := :var_text;
    -- dbms_output.put_line(v_text);
    -- dbms_output.put_line(:var_test);
end;

print var_text;
