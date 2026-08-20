-- triggers events

-- --------------------------------------------------------------------
--   ************ 1.before insert  ************
-- If salary is less than 10000, automatically make it 10000.

DELIMITER $$
CREATE TRIGGER before_insert_empl
BEFORE INSERT
ON empl
FOR EACH ROW
BEGIN
    IF NEW.sal < 10000 THEN
        SET NEW.sal = 10000;
    END IF;
END$$
DELIMITER ;

-- --------------------------------------------------------------------
-- ************ 2)After insert *********
-- Store a message after inserting.
 -- DROP TRIGGER after_insert_empl;
 
DELIMITER $$
create trigger after_insert_empl
after insert 
on empl
for each row
begin
insert into empl_insert_log values(concat(new.ename,' inserted successfully'),now());
end$$
DELIMITER ;

-- --------------------------------------------------------------------
-- drop trigger before_update_empl;
--  ************  3)before update  ************
-- don't allow negative salary

DELIMITER $$
create trigger before_update_empl
before update 
on empl
for each row
begin
if new.sal<0 then
signal sqlstate '45000'
set message_text='salary cannot be nagative';
end if;
end$$
DELIMITER ;

-- --------------------------------------------------------------------
-- drop trigger after_update_empl;
--  ************ 4)after update  ************
-- Save salary history.

DELIMITER $$
create trigger after_update_empl
after update 
on empl
for each row
begin
insert into empl_update_log values(new.eid,old.sal,new.sal,now());
end$$
DELIMITER ;

-- --------------------------------------------------------------------
-- ************  5)before delete  ************
-- Don't allow deleting managers.

DELIMITER $$
create trigger before_delet_empl
before delete 
on empl
for each row
begin
if old.job='manager' then
signal sqlstate '45000'
set message_text= 'Managers cannot be deleted';
end if;
end$$
DELIMITER ;
-- --------------------------------------------------------------------
-- ************  6) after delete  ************
-- Save deleted employee.
-- drop trigger after_delete_empl;

Delimiter $$
create trigger after_delete_empl
after delete on empl
for each row
begin
 INSERT INTO emp_delete_log
    VALUES(
        OLD.eid,
        OLD.ename,
        OLD.sal,
        OLD.job,
        OLD.doj,now()
    );
end$$ 
Delimiter ;

-- --------------------------------------------------------------------
SHOW TRIGGERS;