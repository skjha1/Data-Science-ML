-- for loop is easy to use
-- IN PL/SQL we have 2 types of for loop
--     1. Numeric for loop
--     2. Cursor for loop
    
-- For loop allows you to execute the block of statement repeaatedly for a fixed number of time. 
-- whereas while loop is well suited for when the number of iteration is unknown.


    
-- Syntax:

-- for loop_counter in [reverse] lower_limit .. upper_limit loop
--     stat 1;
--     stat2;
    
--     ..
--     stat 3;
    
-- End loop;

-- ex-1
begin
    for v_counter in 1 .. 10 loop
        dbms_output.put_line(v_counter);
    end loop;
end;

-- ex-2
begin
    for v_counter in reverse 1 .. 10 loop -- it will print in reverse order
        dbms_output.put_line(v_counter);
    end loop;
end;

-- ex-3
declare
    v_result number;
begin
    for v_counter in 1 .. 10 loop
        v_result := 19 * v_counter;
        dbms_output.put_line('19 '|| 'x '|| v_counter || ' = '||v_result);
    end loop;
end;

