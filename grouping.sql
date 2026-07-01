use batch72;

select job,deptno,count(*) from emp 
group by job,deptno
with rollup
having count(*)>=2 or grouping(job,deptno)=0;


select job,deptno,count(*) from emp 
group by job,deptno having count(*)>3;
