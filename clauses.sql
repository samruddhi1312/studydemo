use samruddhi1

create table employee1(eid int,ename varchar(50),dept varchar(20),salary bigint);

insert into employee1 values(1,'subhash','hr',80000);
insert into employee1 values(2,'meena','hr',80000);
insert into employee1 values(3,'rahul','sales',30000);
insert into employee1 values(4,'arjun','marketing',40000);
insert into employee1 values(5,'ananya','marketing',50000);


select * from employee1 where dept='hr';
select eid,dept from employee1 where salary>30000;
select * from employee1 order by salary;
/*find no. of employees working in each department*/
select dept,count(eid) as employees from employee1 group by dept;
select dept,count(dept) from employee1 group by dept;

/*find no. of employees working in each department having no of employyes in department is greater than 2*/
select dept,count(eid) as employees from employee1 group by dept having count(eid)>=2;