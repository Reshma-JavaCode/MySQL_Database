use batch72;
select * from emp;
select * from dept;

-- emp 14 rows * dept 4 rows= 56 rows rturns
select * from emp cross join dept;

-- select the rows which has common col that rec
-- if there is no common col in table then it acts as cross join
-- if there is common col like deptno in emp and dept then it acts as inner join 
select * from emp natural join dept;

-- emp.deptno=dept.deptno there records gng to displays
select * from emp inner join dept on emp.deptno=dept.deptno;

-- emp table whole rows and dept matched rows displays
select * from emp left outer join dept on emp.deptno=dept.deptno;

-- dept table's whole data(matched-10,20,30 and unmatched-40 records )  and emp's matched rec it displays
select * from emp right outer join dept on emp.deptno=dept.deptno;

-- in mysql there is no full outer join
-- full outer join achieved by left and right outer join using union
select * from emp left outer join dept on emp.deptno=dept.deptno 
union select * from emp right outer join dept on emp.deptno=dept.deptno;
;

-- self join
-- comparing columns which is in same table
-- comparing empno with mgr in same emp table 
-- need alias name for table mandatory
-- no keyword for self join like join ,self join 
-- empno contained person is mgr or not
-- if manager then whom he is mangaer display that records
-- ex:7566 jones is manager for scott(7788) and ford(7902) then displays that records

select e1.empno,e1.ename,e1.mgr,e2.empno,e2.ename from emp as e1,emp as e2 
where e1.empno=e2.mgr;
