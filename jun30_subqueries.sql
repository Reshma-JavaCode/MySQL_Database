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
  
  -- Write a query to display all employees who work in the same department as SMITH
  select * from emp where deptno=(select deptno from emp where ename='SMITH');
  
  -- Write a query to display employees who work in departments having more than 3 employees.
  
  select * from emp where deptno in
  (select deptno from emp group by deptno having count(*)>5);
  
  
  --- 3/7/26
  use batch72;
  select * from emp;
  select * from dept;
  -- display employees whose sal>3000 along with their department names
  select *,(select dname from dept as d where d.deptno=emp.deptno) from emp where sal>3000;
  
  -- to display employees who work in the accounting department
  select * from emp where deptno = (select deptno from dept where dname='accounting');
  