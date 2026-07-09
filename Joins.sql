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





-- 1.Display all employees with their department names.

select e.*,d.dname from emp e inner join dept d on e.deptno=d.deptno;


-- 2.Count the number of employees in each department.

select d.dname,count(d.dname) from emp e inner join dept d on e.deptno=d.deptno group by d.dname;

-- 3..Display employees who do not belong to any department.

select e.* from emp e left join dept d on e.deptno=d.deptno where d.deptno is null;

-- 4.Display the employee with the highest salary along with the department name. 

select e.*,d.dname from emp e inner join dept d on e.deptno=d.deptno where sal=(select max(sal) from emp);

-- or

select *,(select dname from dept where emp.deptno=dept.deptno) as depname from emp 
   where sal=(select max(sal) from emp);
   
 -- 1.Find the total salary paid in each department.
 
 select deptno,sum(sal) AS total_salary from emp group by deptno; 
 select d.dname ,sum(sal) as total_salary from emp e inner join dept d on e.deptno=d.deptno group by d.deptno;
 
 -- 2.Find the total salary of departments where total salary is greater than 10000.
 
select deptno,sum(sal) AS total_salary from emp group by deptno having sum(sal) > 10000;

