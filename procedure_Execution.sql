use batch72;
call new_procedure(2);
call largestOfThreeNumbers(3,3,1);
call SumOfNaturalNum(-10,@sum);
select @sum as result;

call Sum2(10,@sum);
select @sum;
call Sum2(-10,@sumn);
select @sum as result;

-- calling one procedure in another proc is possible
call CallingAnotherprocedure1(); 

-- calling one function in  proc is possible
call CallingFunction();

--
call DispAllEmp(10);
call DispAllEmp(50);
call EmployeeCount(40);
select * from dept;
select dname from dept where deptno=10;
select d.dname from dept d inner join emp e on e.deptno=d.deptno group by e.deptno having e.deptno=50;