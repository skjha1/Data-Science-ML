-- WHILE LOOP IN ORACLE PL/SQL
-- It executes block of statement several times
-- It is best usable when the number of iteration to be performed are unknown

-- Syntax

-- While condition loop 
--     stat 1
--     stat 2
--     ...
--     stat 3
-- End loop;

-- ex 1: print 19 table using while loop.
-- ex 2: while loop with boolean variable as test condition

declare
    v_counter number:=1;
    v_result number;
begin
while v_counter <= 10 loop
    v_result := 19 * v_counter;
    dbms_output.put_line('19 '|| ' x '|| v_counter || ' = ' || v_result);
    v_counter:= v_counter + 1;
end loop;
    dbms_output.put_line('Outside the loop');
end;

/

declare
    v_test boolean := TRUE;
    v_counter number :=0;
begin
while v_test loop
    v_counter := v_counter + 1;
    dbms_output.put_line (v_counter);
    -- loop terminate code
    if v_counter =10 then 
        v_test := false;
    end if;
end loop;
dbms_output.put_line('Outside the loop ');
end;
/
