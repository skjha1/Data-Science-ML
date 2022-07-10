CREATE TABLE sh_audit(
  new_name varchar2(30),
  old_name varchar2(30),
  user_name varchar2(30),
  entry_date varchar2(30),
  operation  varchar2(30)
);

create table superheroes (
    sh_name varchar2(20)
);

CREATE OR REPLACE trigger superheroes_audit
BEFORE INSERT OR DELETE OR UPDATE ON superheroes
FOR EACH ROW
ENABLE
DECLARE
  v_user varchar2 (30);
  v_date  varchar2(30);
BEGIN
  SELECT user, TO_CHAR(sysdate, 'DD/MON/YYYY HH24:MI:SS') INTO v_user, v_date  FROM dual;
  IF INSERTING THEN
    INSERT INTO sh_audit (new_name,old_name, user_name, entry_date, operation) 
    VALUES(:NEW.SH_NAME, Null , v_user, v_date, 'Insert');  
  ELSIF DELETING THEN
    INSERT INTO sh_audit (new_name,old_name, user_name, entry_date, operation)
    VALUES(NULL,:OLD.SH_NAME, v_user, v_date, 'Delete');
  ELSIF UPDATING THEN
    INSERT INTO sh_audit (new_name,old_name, user_name, entry_date, operation) 
    VALUES(:NEW.SH_NAME, :OLD.SH_NAME, v_user, v_date,'Update');
  END IF;
END;
/
select * from sh_audit;
INSERT INTO superheroes VALUES ('Superman');
UPDATE SUPERHEROES SET SH_NAME = 'Ironman' WHERE SH_NAME='Superman';
DELETE FROM superheroes WHERE SH_NAME = 'Ironman';

/*
For an INSERT trigger, OLD contain no values, and NEW contain the new values.
For an UPDATE trigger, OLD contain the old values, and NEW contain the new values.
For a DELETE trigger, OLD contain the old values, and NEW contain no values

*/
