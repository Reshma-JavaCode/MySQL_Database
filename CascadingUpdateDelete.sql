use batch72;

/*on delete and update cascade*/
CREATE TABLE `department` (
  `d_id` int NOT NULL,
  `d_name` varchar(50) NOT NULL,
  PRIMARY KEY (`d_id`)
);
select * from department;
/*
d_id, d_name
102, Development
103, Training
*/
CREATE TABLE `employee` (
  `eid` int NOT NULL,
  `ename` varchar(50) NOT NULL,
  `d_id` int DEFAULT NULL,
  PRIMARY KEY (`eid`),
  foreign KEY (`d_id`)
  REFERENCES `department` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE
);
/*after insertion*/
/*for fetching*/

/*
eid, ename, d_id
1, Reshu, 102
3, Vijaya, 102
4, soni, 103
5, Bhargavi, 102
*/


/*on update cascade:if we update did in department
 it automatically gng to update in employee table*/
update department set d_id=201 where d_id=102;
select * from department;
/*
d_id, d_name
103, Training
201, Development
202, HR
203, Testing
*/
select * from employee;
/*
eid, ename, d_id
1, Reshu, 201
3, Vijaya, 201
4, soni, 103
5, Bhargavi, 201
6, Pariha, 202
7, Rabbani, 203
8, Rafiya, 202
*/
insert into department values(202,'HR'),(203,'Testing');
insert into employee values(6,'Pariha',202),(7,'Rabbani',203),(8,'Rafiya',202);

/*on delete cascade:if we delete did in department table is
 automaticaaly delete that did reference eid row in employee table*/
delete from department where d_id=202;
select * from department; 
/*
d_id, d_name
103, Training
201, Development
203, Testing
*/
select * from employee;
/*
eid, ename, d_id
1, Reshu, 201
3, Vijaya, 201
4, soni, 103
5, Bhargavi, 201
7, Rabbani, 203
*/
