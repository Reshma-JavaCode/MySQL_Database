create database testing;
use testing;
create table student(
sno int,
sname varchar(30) not null,
marks int,
primary key(sno));
insert into student values(200,'aaa',100),(201,'bbb',100);
select * from student;

-- to know permissions
show grants;

-- creating new user
create user 'reshma@localhost' identified by 'reshma@123';

grant select on testing.student to 'reshma@localhost';
grant insert on testing.student to 'reshma@localhost';

revoke insert on testing.student from 'reshma@localhost';

-- giving all permisions
grant all privileges on testing.student to 'reshma@localhost';

-- cancelling all permisions whatever we have given previously
revoke all privileges, grant option from 'reshma@localhost';

-- removing user
drop user 'reshma@localhost';
