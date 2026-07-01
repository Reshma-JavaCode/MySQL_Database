use batch72;
select * from emp where ename like 's%';
select * from emp where ename like '%a%';


-- 1. Display employee names starting with 'S' and having exactly 5 characters
select * from emp 
where ename like 's____';
;

-- 2.Display employees whose name starts with 'M' and ends with 'R'
select * from emp
where ename like 'm%r';


insert into emp values(2222,'Soni','s/w',3333,'2026-10-1',2000,0,10);
insert into emp values(3333,'So_ni','Managing',2222,'2026-12-11',2000,0,10);

select * from emp where job like '%/%';

-- to make wildcard char as literal need:- \ or $ or #
select * from emp where ename like '%\_%';
select * from emp where ename like '%$_%' escape '$';
select * from emp where ename like '%#_%' escape '#';

select count(sal) from emp;

-- Aggregate functions return single value= count(),sal(),min(),max(),avg()

select max(sal) from emp;
select min(sal) from emp;
select sum(sal) from emp;
select  avg(sal) from emp;


-- error can't we use aggregate without grp by
select distinct job,count(*) from emp; 
select job,count(*) from emp;

-- correct query 
select distinct job,count(*) from emp group by job;
select job,count(*) from emp group by job;

select deptno,count(deptno) from emp group by deptno;
select job,deptno,count(*) from emp group by deptno,job;

