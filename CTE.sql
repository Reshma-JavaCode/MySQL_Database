-- common tabke expression (CTE)

use batch72;

with AvgSalary as
(select deptno,avg(sal) as avg_sal from emp group by deptno)
select * from AvgSalary where avg_sal>2000;

select * from AvgSalary; -- doesn't exists

select * from emp e where sal>
(select avg(sal) as avg_sal from emp where e.deptno=deptno);

with HighestSal as
(select avg(sal) as avg_sal from emp group by deptno)
select * from HighestSal where sal> avg_sal;

-- recursive cte

with recursive Numbers as
(
select 1 as num
union all
select num+1 from Numbers where num<10
)
select * from Numbers;

select * from emp as e1 where sal>(select avg(e2.sal) from emp as e2 where e1.deptno=e2.deptno);
use batch72;

with avgSalEmp as
(select avg(sal) from emp group by deptno)
(select deptno from emp group by deptno having sal>(select avg(sal) from emp group by deptno)
