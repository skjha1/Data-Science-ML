-- Simple loop in oracle 
--Syntax

-- Loop
--     stat 1;
--     stat 2;
--     ...
--     stat3
-- END LOOP;
-- In this we have to add exit condition else this will go infinite loop.

declare
    v_counter number :=0;
    v_result number;
begin
    loop
        v_counter := v_counter + 1; -- every time it is getting updated with 1
        v_result := 19 * v_counter;
        dbms_output.put_line('19'|| ' x ' || v_counter|| ' = '|| v_result);
        -- exit condition
        if v_counter >= 10 then
            EXIT;
        end if;
    end loop;
end;
