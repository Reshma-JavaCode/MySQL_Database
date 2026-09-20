create database batch723;
use batch723;
create table student(username varchar(50) primary key,
firstname varchar(50) not null,
lastname varchar(50) not null,
password varchar(50) not null);

select * from student;

create table employee(empid int auto_increment primary key,
empname varchar(50) not null,
department varchar(50) not null,
empsalary varchar(50) not null);

select * from employee;
