-- trigger audit tables

CREATE TABLE empl_insert_log(
    msg VARCHAR(100)
);

create table empl_update_log(eid int,oldSal int,newSal int);

CREATE TABLE emp_delete_log(
    eid INT,
    ename VARCHAR(50),
    sal INT,
    job VARCHAR(50),
    doj DATE
);
 select * from empl_insert_log;
 select * from empl_update_log;
 select * from emp_delete_log;
 
 ALTER TABLE empl_insert_log
ADD COLUMN inserted_on DATETIME;

ALTER TABLE empl_update_log
ADD COLUMN updated_on DATETIME;
 
ALTER TABLE emp_delete_log
ADD COLUMN deleted_on DATETIME;