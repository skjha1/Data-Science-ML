-- Triggers are named PL/SQL blocks which are stored in the database.  We can also say that they are specialized stored programs which 
-- execute implicitly when a triggering event occurs. This means we cannot call and execute them directly instead they only get triggered by events in the database.


 
-- [bctt tweet=”Triggers are named PL/SQL blocks which are stored in the database. Read more -” username=”Rebellionrider”]

-- Events Which Fires the Database Triggers
-- These events can be anything such as

-- A DML Statement – An Update, Insert or Delete statement executing on any table of your database. You can program your trigger to 
-- execute either BEFORE or AFTER executing your DML statement. For example, you can create a trigger which will get fired Before the Update. 
-- Similarly, you can create a trigger which will get triggered after the execution of your INSERT DML statement.
-- A DDL Statement – Next type of triggering statement can be a DDL Statement such as CREATE or ALTER. These triggers can also be executed either 
-- BEFORE or AFTER the execution of your DDL statement. These triggers are generally used by DBAs for auditing purposes. And they really come in handy 
-- when you want to keep an eye on the various changes on your schema. For instance, who created the object or which user. Just like some cool spy tricks.
-- A system event. – Yes, you can create a trigger on a system event. And by a system event, I mean shut down or startup of your database.
-- A User Events – Another type of triggering event can be User Events such as log off or log on onto your database. You can create a trigger which will
-- either execute before or after the event. Furthermore, it will record the information such as time of event occur, the username who created it.
 

-- Types of Database Triggers
-- There are 5 types of triggers in the Oracle database. 3 of them are based on the triggering event which are discussed in the previous section.

-- types of triggers in pl/sql by manish sharma

-- Data Manipulation Language Triggers or DML triggers
-- As the name suggests these are the triggers which depend on DML statements such as Update, Insert or Delete. They get fired either before or after them.
-- Using DML trigger you can control the behavior of your DML statements. You can audit, check, replace or save values before they are changed. Automatic 
-- Increment of your Numeric primary key is one of the most frequent tasks of these types of triggers.

-- Data Definition Language Triggers or DDL triggers.
-- Again as the name suggests these are the type of triggers which are created over DDL statements such as CREATE or ALTER. They get fired either before or after
-- the execution of your DDL statements. Using this type of trigger you can monitor the behavior and force rules on your DDL statements.

-- System or Database Event triggers.
-- Third type of triggers is system or database triggers. These are the type of triggers which come into action when some system event occurs such as database log
-- on or log off. You can use these triggers for auditing purposes. For example, keeping an eye on information of system access like say who connects with your database
-- and when. Most of the time System or Database Event triggers work as Swiss Knife for DBAs and help them in increasing the security of the data.

-- Instead-of Trigger
-- This is a type of trigger which enables you to stop and redirect the performance of a DML statement. Often this type of trigger helps you in managing the way you
-- write to non-updatable views. You can also see the application of business rules by INSTEAD OF triggers where they insert, update or delete rows directly in tables 
-- that are defining updatable views.  Alternatively, sometimes the INSTEAD OF triggers are also seen inserting, updating or deleting rows in designated tables that are
-- otherwise unrelated to the view.

-- Compound triggers
-- These are multi-tasking triggers that act as both statement as well as row-level triggers when the data is inserted, updated or deleted from a table.
-- You can capture information at four timing points using this trigger:

-- before the firing statement;
-- prior to the change of each row from the firing statement;
-- post each row changes from the firing statement;
-- after the firing statement.
-- All these types of triggers can be used to audit, check, save and replace the values. Even before they are changed right when there is a need to take 
-- action at the statement as well as at row event levels.

The Syntax Of Database Trigger
CREATE [OR REPLACE] TRIGGER Ttrigger_name
{BEFORE|AFTER} Triggering_event ON table_name
[FOR EACH ROW]
[FOLLOWS another_trigger_name]
[ENABLE/DISABLE]
[WHEN condition]
DECLARE
  declaration statements
BEGIN
  executable statements
EXCEPTION
  exception-handling statements
END;

-- Uses of Database triggers.

-- Using database triggers we can enforce business rules that can’t be defined by using integrity constants.
-- Using triggers we can gain strong control over the security.
-- We can also collect statistical information on the table access.
-- We can automatically generate values for derived columns such as auto increment numeric primary key.
-- Using database triggers we can prevent the invalid transactions.


-- Restriction on The Database Triggers

-- The maximum size of the database trigger body must not exceed 32,760 bytes. This is because triggers’ bodies are stored in LONG datatypes columns.
-- A trigger may not issue transaction control statements or TCL statements such as COMMIT, ROLLBACK or SAVEPOINT. All operations performed when the trigger fires, 
-- become part of a transaction. 
-- Therefore whenever this transaction is rolled back or committed it leads to the respective rolling back or committing of the operations performed. 
-- Any function or procedure called by a database trigger may not issue a transactional control statement. That is unless it contains an autonomous transaction.
-- Declaring LONG or LONG RAW variable is not permissible in the body of the trigger.
