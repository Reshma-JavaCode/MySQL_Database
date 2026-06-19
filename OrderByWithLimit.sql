use batch72;
select * from emp;
select * from emp limit 1,10;
select ename,job from emp order by field(job,'clerk','manager','analyst','salesman','president');
select * from emp order by sal desc limit 3;

select * from dept order by field(dname,'RESEARCH','OPERATIONS','ACCOUNTING','sales');
select * from dept order by field(dname,'OPERATIONS','RESEARCH') desc;
select * from dept order by field(deptno,30,10,20,40);