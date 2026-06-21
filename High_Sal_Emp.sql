use batch72;

/* Retrieve the employee details having the highest salary. */
select * from emp order by sal desc;

insert into emp values(1111,'Reshu','Developer',2222,'2026-9-22',5000,0,10);
/*
If you want employees having the highest salary and
 there may be more than one employee with that salary, then ORDER BY 
... LIMIT alone is not enough.
*/
select * from emp order by sal desc limit 1;

/*To retrieve >1 record of same highest salar employee*/
SELECT *
FROM emp
WHERE sal = (
    SELECT MAX(sal)
    FROM emp
);