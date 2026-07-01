use batch72;
select * from emp where sal>2000;
select job,count(*) from emp where sal>2000 group by job;
select * from emp where job = 'manager' and sal > 2500;