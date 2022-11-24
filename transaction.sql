use samruddhi1;

create table student5(sid int primary key,sanme varchar(50));

insert into student5 values(1,'sam');
insert into student5 values(2,'rohan');
insert into student5 values(3,'arjun');
insert into student5 values(4,'vaishali');

select * from student5;

begin transaction
      update student5 set sanme='prachi' where sid=1;
commit transaction

begin transaction
      update student5 set sanme='sam' where sid=1;
rollback transaction