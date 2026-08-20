-- Triggers
use batch72;
create table empl(
eid int,
ename varchar(50) not null,
sal int default null,
job varchar(50) not null,
doj date,
primary key(eid));

-- adding records
INSERT INTO empl VALUES(101,'Rahul',30000,'CLERK','2026-07-27');
insert into empl values(102,'Reshma',50000,'Java Developer',curdate());
insert into empl values(103,'Pariha',100000,'Manager',curdate());
select * from empl;

-- 5000sal<10,000 so, before insertion update sal to 10000
INSERT INTO empl
VALUES (104,'Ramesh',5000,'CLERK','2026-07-27');

-- before insert
-- sal<10000 so,it update sal=10000
DESC empl;
SHOW CREATE TRIGGER after_insert_empl;
DESC empl_insert_log;
INSERT INTO empl
VALUES (105,'Lekhana',5000,'CLERK','2026-07-27');
select * from empl;

-- before update
-- doesn't allows negative values, display error msg
-- o/p: ERROR 1644 (45000):Salary cannot be negative
UPDATE empl
SET sal = -500
WHERE eid = 101;

UPDATE empl
SET sal = -500
WHERE eid = 105;

-- after update
update empl set sal=14000 where eid=105;

-- before delete
-- can't delete manager
-- ERROR 1644 (45000):Managers cannot be deleted
delete from empl where eid=103;

-- after delete
delete from empl where eid=104;