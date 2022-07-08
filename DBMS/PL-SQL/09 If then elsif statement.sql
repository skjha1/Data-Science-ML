-- In if then elsif we can check for multiple condition 
-- Syntax 
-- if condition 1 then
--     statement 1;
-- elsif condition 2 then
--     statement 2;
-- elsif condition 3 then 
--     statement 3;
-- ....
-- else
--     statement N;
-- end if;


-- So if then elsif statement is responsible for running the first statement for which the condition is true.
-- Once this is done the rest of the conditions are not evaluted. Tn case none of the condition is true,
-- then else statement run provided that they exists; otherwise no action is taken by the if then else stamement.


declare
v_place varchar2(30):= 'Zuora';
begin
if v_place ='SRM' then
    dbms_output.put_line('Hello & welcome to college');
elsif v_place ='Zuora' then
    dbms_output.put_line('Hello & welcome to Zuora');
elsif v_place ='DBG' then
    dbms_output.put_line('Hello & Welcome to Hometown');
else
    dbms_output.put_line('Please call Customer Care');
end if;
    dbms_output.put_line('Thanks for contacting us..');
end;
