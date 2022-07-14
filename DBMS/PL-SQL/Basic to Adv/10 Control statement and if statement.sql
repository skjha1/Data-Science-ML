declare
    v_age number := null;
begin
    if v_age < 18 then
        dbms_output.put_line('You are not eligible to vote!');
    elsif v_age >18 then
        dbms_output.put_line('You are eligible for vote!');
    elsif v_age = 18 then
        dbms_output.put_line('Congrats you became a eligible citizen');
    else
        if v_age is null then
            dbms_output.put_line('The number is null..');
        else
            dbms_output.put_line('Sorry data is not available! Thanks for using our app..');
        end if;
    end if;
end;
