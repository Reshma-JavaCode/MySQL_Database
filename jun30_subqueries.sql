use batch72;

select * from emp;



-- disp employees who earn highest sal
select* from emp where sal = (select max(sal) from emp);

-- second highest sal
select max(sal) from emp where sal<(select max(sal) from emp);

-- 3rd highest sal
select max(sal) from emp where sal<(select max(sal) from emp where sal<(select max(sal) from emp where sal<(select max(sal) from emp)));

-- disp employee except highest sal employees
select * from emp where sal<>(select max(sal) from emp);

-- disp emp whose sal in between avg and max of sal

select * from emp where sal between
(select avg(sal) from emp)and (select max(sal) from emp);

-- same output 1st july
-- disp employees earning max sal in each department

select deptno,max(sal) from emp group by deptno; 
select * from emp where sal in (select max(sal) from emp group by deptno);
select * from emp as e1 where sal=
  (select max(sal) from emp as e2 where e1.deptno= e2.deptno);
  
  -- display employees who work in same dept as Blake
  select * from emp where deptno=(select deptno from emp where ename='Blake');
  
  -- disp emp who earn sal less thaan jones
  select * from emp where sal< (select sal from emp where ename='jones');
  
  -- disp only departemnt subtotals & grand totals rows produced by rollup(deptno,job)
  select deptno,job,count(*) from emp group by deptno,job with rollup;