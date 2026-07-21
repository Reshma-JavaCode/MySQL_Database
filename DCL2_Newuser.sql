-- mysql host: user-> reshma@localhost

use testing;
select * from testing.student;
show grants;

insert into student values(202,'aaa',100);
-- 0	6	19:16:00	insert into student values(202,'aaa',100)	Error Code: 1142. 
-- INSERT command denied to user 'reshma@localhost'@'localhost' for table 'student'	0.000 sec

update student set sname='ccc' where sno=202;
