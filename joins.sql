use samruddhi1

create table employee2(eid int primary key,ename varchar(50),salary bigint);
create table person(pid int primary key,address varchar(max));

insert into employee2 values(1,'santosh',50000);
insert into employee2 values(2,'anil',40000);
insert into employee2 values(3,'mayuri',20000);
insert into employee2 values(4,'samruddhi',10000);
insert into person values(1,'plot no 16');
insert into person values(2,'plot no 16');
insert into person values(3,'plot no 16');

update person set address='plot no 17' where pid=2;
update person set address='plot no 18' where pid=3;

select * from employee2;
select * from person;
select eid,ename,address,salary from employee2 inner join person on employee2.eid=person.pid;
select * from employee2 left outer join person on employee2.eid=person.pid;
select * from employee2 right outer join person on employee2.eid=person.pid;
select * from employee2 full join person on employee2.eid=person.pid;
select * from employee2 cross join person;

