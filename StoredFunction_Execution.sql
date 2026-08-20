select new_function1(7839); -- 5000
select new_function1(333); -- 0

select new_function2(7839); -- 5000
select new_function2(333);-- employee not found with given empno

-- empl details where empno=7839 has salry i.e sal=5000 disp that empl details
select * from emp where sal=(select new_function2(7839)); 

-- calling one function in another function possible
select CallingAnotherFunction(); -- 5000

select CallingProcedure2(); -- 55

SHOW CREATE PROCEDURE Sum2;

select Demo1(); -- Hello

-- 0	62	11:40:13	select Demo2()
 -- LIMIT 0, 1000	Error Code: 1222. The used SELECT statements have a different number of columns	0.000 sec
select Demo2();

select * from emp;
select TotalEarnings(7499); -- 1600+300= 1900

select deptno,max(sal) as highest_salary from emp group by deptno;

select * from dept;
select HighestSalary(40);
select HighestSalary2();
select GetDeptName(10);
SHOW CREATE FUNCTION GetDeptName;