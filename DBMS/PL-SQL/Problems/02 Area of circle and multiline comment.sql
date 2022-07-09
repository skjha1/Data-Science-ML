-- Write a PL/SQL block show single and multiple line comment and find the area of circle.

declare
area number;
radius number := 10;
pi number := 3.1415962; -- This is single line comment, the value of pi is 3.1415926
some_condition boolean;

begin
    if 2+2 =4 then
        some_condition := true;
    end if;
/* The line below in the statement computes the area of a circle
    after the area computed the result is displayed : : This is multiline comment
*/
    area := pi * radius**2;
    dbms_output.put_line('The area of circle is: '|| area);
end;
/

