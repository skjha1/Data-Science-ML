-- Write a pl/sql block to show that a reserved word can be used as user defined identifiers.

declare
    "DECLARE" varchar2(25) := 'THIS IS UPPERCASE';
    "Declare" varchar2(25) := 'This is Proper Case';
    "declare" varchar2(25) := 'this is lower case';

begin
    dbms_output.put_line("DECLARE");
    dbms_output.put_line("Declare");
    dbms_output.put_line("declare");
end;
