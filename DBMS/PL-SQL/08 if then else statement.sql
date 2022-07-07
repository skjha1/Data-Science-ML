-- If then else statement
-- IF THEN ELSE executes sequence of statement only when the condition is evaluated to be true.

-- Syntax

-- IF condition Then
--     stat 1;
-- ELSE
--     stat 2;
-- END IF;
--     stat 3;

create table numbers(v_num number);
insert into numbers values (10);
declare
v_num number;
    -- v_num NUMBER := &enter_a_number; -- here & is substitution operator
    --Oracle Live SQL is a tool for trying out SQL and PL/SQL but it doesn't support substitution variable syntax (&var.).
    --Instead, you can create tables, populate them with data, then run SQL or PL/SQL using them
    
begin
select v_num into v_num from numbers;
 if mod(v_num,2) =0 then
    dbms_output.put_line(v_num|| ' Is Even');
Else
    dbms_output.put_line(v_num|| 'Is Odd');
end if;
    dbms_output.put_line('If Then Else Construct Complete');
end;
