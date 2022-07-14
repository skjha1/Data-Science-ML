
declare
v_type hr.employees.job_id%type;
v_type2 v_type%type;
v_type3 hr.employees.job_id%type;
begin
v_type := 'IT PROG';
v_type2 := 'SA MAN';
v_type3 := NULL;
    dbms_output.put_line(v_type);
    dbms_output.put_line(v_type2);
    dbms_output.put_line(v_type3 || 'Hello');
end;
-- using %type we can use another datatype as your required datatype.
