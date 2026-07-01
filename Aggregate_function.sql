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

-- error since retrieving cols 2-job,deptno but grouping with col gives error
select deptno,count(deptno) from emp group by deptno; 
-- correct cols = group by cols
select job,deptno,count(*) from emp group by deptno,job;

