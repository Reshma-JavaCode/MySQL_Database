-- ************** cusrsors *****************
-- ----------------------------------------------
use batch72;
select * from empl;

-- procedure for cursors;
-- =========================
delimiter $$
create procedure DisplayEmployee(out allNames varchar(200))
begin 
declare empName varchar(30);
declare finished int default 0;
-- or declare finished int default false;

-- cursor declaration 
declare emp_cursor cursor for select ename from empl;

declare continue handler for not found set finished=1;
set allNames= '';
-- open cursor
open emp_cursor;
label:loop
-- fetch cursor;
fetch emp_cursor into empName;
 if finished=1 then
	leave label;
 end if;
 set allNames= concat(allNames,'-',empName);
--  select empName;
end loop;
-- close cursor
close emp_cursor;
end $$
delimiter ;

insert into empl values(106,'Amit',23000,'developer',curDate());
call DisplayEmployee2(@allNames);
select @allNames;
select ename from empl;
SHOW CREATE PROCEDURE DisplayEmployee2;
CREATE TABLE cursor_output(
    name VARCHAR(30)
);
select * from cursor_output;
truncate table cursor_output;
INSERT INTO cursor_output
VALUES(empName);
SELECT VERSION();