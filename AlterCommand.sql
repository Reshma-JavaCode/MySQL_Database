use batch72;

create table student2(
sno int,
sname varchar(30) not null,
marks int,
primary key(sno));
insert into student2 values(100,'Reshu',100),(101,'xyz',99);
select * from student2;
alter table student2 add branch varchar(20) default 'cse';
insert into student2(sno,sname,marks) values(102,'rr',90),(103,'qq',80);
alter table student2 drop branch;
alter table student2 add course varchar(3) default 'JFS';
insert into student2 values(104,'pp',100,'Pfs'),(105,'ss',99,'dsa');
alter table student2 modify course varchar(30);
insert into student2 values(106,'pp',100,'Python'),(107,'ss',99,'dsa');
insert into student2(sno,sname,marks) values(108,'kk',35);

alter table student2 rename to student_info;
select * from student_info;
-- change col name
alter table student_info change sname student_name varchar(30);
-- or
alter table student_info rename column marks to student_marks;

