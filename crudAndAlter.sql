create database samruddhi1;
drop database samruddhi1;

create database samruddhi1;
create table student3(sid int,sname varchar(50),cgpa float);

insert into student3 values(2,'samruddhi',8.9);
insert into student3 values(3,'manisha',9.9);
insert into student3 values(4,'tarun',8.1);
insert into student3 (sid,cgpa)values(8,7.7);

alter table student3 alter column sid int not null;
alter table student3 add passoutYear int;
insert into student3 values(5,'rohan',6.66,2020);
alter table student3 add constraint df default 2022 for passoutYear;
insert into student3 (sid,sname,cgpa)values(9,'ashvini',7.0);
alter table student3 add constraint pk primary key (sid);

create table person(pid int foreign key references student3(sid),address varchar(max));
insert into person values(2,'plot no 123');

update student3 set sname='mohan' where sid=2;
delete from student3 where sid=3;

select * from student3;
select sid,cgpa from  student3;
select * from student3 where sid=2;
select * from person;