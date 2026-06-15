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

start transaction;
update accounts set balance=balance-5000 where accno=101;
update accounts set balance=balance+5000 where accno=102;

insert into transactions(from_account,to_account,amount) values(101,102,5000);
select * from transactions;
commit;