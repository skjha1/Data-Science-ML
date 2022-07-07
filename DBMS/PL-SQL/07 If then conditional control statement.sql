-- If then condition 
-- SYNTAX 
-- IF condition THEN 
--         Stat 1;
-- ...
--         Stat N;
-- END IF

-- Example 1 

declare 
v_num NUMBER := 9;
begin
if v_num >10 then
    dbms_output.put_line('Inside the IF');
end if;
    dbms_output.put_line('Outside the IF');
end;
/

declare
v_website varchar2(30) := 'Zuora.com';
v_zeo varchar(30) :='Shivendra Jha';

begin
if v_website = 'Zuora.com' and v_zeo = 'Shivendra Jha' then
    dbms_output.put_line ('Hello Shivendra welcome to Zuora');
end if;
    dbms_output.put_line('All the best for future endeavours');
end;
