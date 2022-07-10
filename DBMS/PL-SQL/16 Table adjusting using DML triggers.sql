create table sh_audit(
    new_name varchar2(30),
    old_name varchar2(30),
    user_name varchar2(30),
    entry_date varchar(30),
    operation varchar(30)
);

create table superheroes (
    sh_name varchar2(20)
);

create or replace trigger superheroes_audit
before insert or delete or update on superheroes
for each row
enable 
declare
    v_user varchar2(30);
    v_date varchar2(30);
begin
    select user, TO_CHAR(sysdate,'DD/MM/YYYY HH24:MI:SS') into v_user,v_date from dual;
    if INSERTING then -- insert 
        insert into sh_audit (new_name, old_name, user_name, entry_date, operation)
        values (:NEW.sh_name, NULL, v_user, v_date, 'Insert'); -- New : A row is being inserted or updated into superhero table
    elsif DELETING then -- delete
        insert into sh_audit (new_name, old_name, user_name, entry_date, operation) 
        values (NULL, :OLD.sh_name, v_user, v_date, 'Delete'); -- Old : allows u to access a row wch is already being updated and deleted from superheroes table
    elsif UPDATING then -- update
        insert into sh_audit (new_name, old_name, user_name, entry_date, operation)
        values (:NEW.sh_name, :OLD.sh_name, v_user, v_date, 'Update');
    end if;
end;


select * from sh_audit;
                                            --  NEW_NAME  OLD_NAME	USER_NAME	    ENTRY_DATE	    OPERATION
insert into superheroes values ('Superman'); -- Superman	 - 	APEX_PUBLIC_USER	10/07/2022 10:06:36	Insert
insert into superheroes values('Wonderwomen'); -- Wonderwomen	- 	APEX_PUBLIC_USER	10/07/2022 10:07:45	Insert

update superheroes set sh_name = 'Thor' where sh_name = 'Superman'; -- Thor	Superman	APEX_PUBLIC_USER	10/07/2022 10:11:00	Update

delete from superheroes where sh_name = 'Thor';
