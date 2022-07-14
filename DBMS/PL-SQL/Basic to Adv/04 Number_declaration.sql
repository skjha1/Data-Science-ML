DECLARE
     v_number number(4,2) not null := 50.42; -- number(presision,scale) - presision should be minimum 4 and scale can be 1 and more
BEGIN
    
    dbms_output.put_line(v_number|| ' Begineer to advanced.');
END;
