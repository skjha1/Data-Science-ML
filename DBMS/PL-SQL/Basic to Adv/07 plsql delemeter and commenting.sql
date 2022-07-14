declare
v_text varchar2(10) := 'PL/SQL';
begin
-- we need to write something btw the begin and end;
-- single commment 
/* this is 
    multiline 
    comment */
dbms_output.put_line(v_text|| ' is a good language');
end;
