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
