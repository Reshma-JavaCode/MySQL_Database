use batch72;
/*Rollback to savepoint*/
CREATE TABLE student (
  `stno` varchar(10) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `yop` int DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`stno`)
);
set autocommit=0;
insert into student values('s101','abc',2020,23);
insert into student values('s102','xyz',2026,23);
savepoint sp1;
select * from student;
/*
stno sname yop age
 s101 Reshma 2020 23
 s102 Soni 2026 27
 s103 Vijaya 2025 25
 s104 Bhargavi 2026 23
*/
insert into student values('s103','abc',2025,23);
insert into student values('s104','abc',2026,23);
rollback to sp1;
select * from student;
/*
stno sname yop age
 s101 Reshma 2020 23
 s102 Soni 2026 27
 */