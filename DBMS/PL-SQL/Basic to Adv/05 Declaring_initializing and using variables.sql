DECLARE
     -- v_number PLS_INTEGER not null := 50; 
     -- v_number BINARY_INTEGER not null := 50;
     -- v_number BINARY_INTEGER not null := 50;
     -- v_number BINARY_FLOAT not null := 50.52f; -- we can not assign presision for bin_float and bin_double 
     -- v_number BINARY_DOUBLE not null := 50.52f; -- presision does not matter here
     -- v_date DATE NOT NULL := sysdate;
     -- v_date timestamp with time zone not null := systimestamp;
     -- v_date interval day(4) to second(2) := '24 02:05:21.012';
     -- v_date interval year(3) to month := '122-3';
     v_bool boolean  := true;
BEGIN
    
    dbms_output.put_line(v_bool || ' Begineer to advanced.');
END;
-- we can not use boolean inside print statement.
-- we can use it as if statement.
