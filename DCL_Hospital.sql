create database HospitalDB;
use HospitalDB;

create table patient(
 patient_id int,
 patient_name varchar(40) not null,
age int,
disease varchar(50),
primary key(patient_id),
check(age between 0 and 120));


drop user 'doctor_user';
create user 'doctor_user@localhost' identified by 'doctor123';
grant select,update on hospitaldb.patient to 'doctor_user@localhost';
revoke update on hospitaldb.patient from 'doctor_user@localhost';


