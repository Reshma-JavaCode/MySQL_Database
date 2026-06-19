use batch72;
select  * from emp;

/* Display All unique job grps in descending order*/
select distinct job from emp order by job desc;
/*Output:-
job
---------
SALESMAN
PRESIDENT
MANAGER
CLERK
ANALYST
*/

/*to display all unique manager id's in descending order*/
select distinct mgr from emp order by mgr desc;
/*Output:-
mgr
------
7902
7839
7788
7782
7698
7566
*/
