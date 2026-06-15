/*
a bank maintains customer acc details in an accounts table and
transaction history in a transaction table
customer 101 wants to transfer 5000 to customer 102
1)start transaction
2)deducts 5000 from account 101
3)credits 5000 to account 102
4)insert a record into transaction table
5)commits transaction if all statements execute successfully
6)rollback the transaction if any statement fails
*/
use batch72;
create table accounts(
accno bigint,
acc_name varchar(50) not null,
balance decimal(10,2),
primary key(accno)
);

create table transactions(
trans_id int auto_increment,
from_account bigint,
to_account bigint,
amount decimal(10,2),
primary key(trans_id));

insert into accounts values(101,'Reshu',20000),(102,'Soni',10000);
select * from accounts;
/*
accno, acc_name, balance
101, Reshu, 20000.00
102, Soni, 10000.00
*/

start transaction;
update accounts set balance=balance-5000 where accno=101;
update accounts set balance=balance+5000 where accno=102;
select * from accounts;
/*
accno, acc_name, balance
101, Reshu, 15000.00
102, Soni, 15000.00
*/

insert into transactions(from_account,to_account,amount) values(101,102,5000);
select * from transactions;
/*
trans_id, from_account, to_account, amount
1, 101, 102, 5000.00
*/
commit;
/*if any transaction fails
do rollback;
*/