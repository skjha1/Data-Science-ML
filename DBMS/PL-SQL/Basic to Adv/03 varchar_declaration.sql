DECLARE
     v_text varchar2(50) not null := 'WELCOME'; --default 'hello world';
BEGIN
    v_text := 'PL/SQL' || ' Course';
    dbms_output.put_line(v_text|| ' Begineer to advanced.');
END;
