declare
v_outer varchar2(50) := 'Outer!';
begin
    declare
    v_inner varchar2(50) := 'Inner variable';
    begin
        dbms_output.put_line('Inside -> '||v_outer);
        dbms_output.put_line('Inside_inner -> '||v_inner);
    end;
    -- dbms_output.put_line('Outside_inner -> '||v_inner); - we cant use this varible cz it is outside of scope
                                                        -- but we can use same variable name in both the scope it wont give error
    dbms_output.put_line(v_outer);
end;
