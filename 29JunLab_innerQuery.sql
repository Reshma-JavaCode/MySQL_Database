use batch72;

select * from emp;

select * from emp where sal< (select sal from emp where ename='jones');
select deptno,job,count(*) from emp group by deptno,job with rollup;