-- Data manipulation triggers 
drop table superheros;
create table superheroes (
    sh_name varchar2(20)
);

-- Example 1 : For inserting row in table 

create or replace trigger bi_superheroes -- before_insert_superheroes
before insert on superheroes
for each row
enable
declare
    v_user varchar2 (20);
begin
    select user into v_user from dual;
    dbms_output.put_line('You just Inserted A Line Mr. '|| v_user);
end;
/
-- trigger created 



insert into superheroes values ('Thor'); -- everytime we insert some thinf in table the insert trigger will displayed
insert into superheroes values ('Iron Man');

select * from superheroes;





-- Example 2 :- Update trigger

create or replace trigger bu_superheroes -- before_update_superheroes
before update on superheroes
for each row
enable
declare
    v_user varchar2 (20);
begin
    select user into v_user from dual;
    dbms_output.put_line('You just Updated A Line Mr. '|| v_user);
end;
/
-- Trigger created.
 
 
update superheroes set sh_name ='Superman' where sh_name = 'Iron Man';



-- All insert delete and update in one trigger

create or replace trigger tr_superheroes 
before insert or delete or update ON superheroes
for each row
enable
declare
v_user varchar2(20);
begin
    select user into v_user from dual;
    if INSERTING then
        dbms_output.put_line('One row inserted by '|| v_user);
    elsif DELETING THEN
        dbms_output.put_line('One row deleted by '|| v_user);
    elsif UPDATING then
        dbms_output.put_line('One row updated by '||v_user);
    end if;
end;
-- trigger is created 


-- lets insert row in superheroes table

insert into superheroes values ('Spiderman'); -- after inserting it will disply the trigger
update superheroes set sh_name = 'Hulk' where sh_name = 'Spiderman'; -- after updating it will disply the trigger
delete from superheroes where sh_name ='Hulk';  -- after deleting it will disply the trigger
