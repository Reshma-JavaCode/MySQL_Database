use batch72;
Select * from emp order by ename desc;
/*If we have multiple same col values then 2nd ename field effects the recors
job- analyst 2records, clerk 4recors like then
1st orders acc to job like analist2,clerk4 etc with respect empno order(ascending by default)
then after jobs now order with res to ename
like:analyst:scott ,ford now it order ename in asc order ford the scott
clerk:smith,adams,james,miller
now clerk ename order : adams,james,miller,smith like this;
*/
select * from emp order by job, ename;

select * from emp order by field(job,'manager','president','analyst','salesman','clerk'),ename;
select * from dept order by field(dname,'RESEARCH','OPERATIONS','ACCOUNTING','sales');
select * from dept order by field(deptno,30,10,20,40);
