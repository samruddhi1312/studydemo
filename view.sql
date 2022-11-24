use samruddhi1;
create table student3(sid int primary key,sname varchar(50),div varchar(20),cgpa float);

insert into student3 values(1,'samruddhi','a',8.9);
insert into student3 values(2,'shalaka','a',9.9);
insert into student3 values(3,'aakash','b',8.1);
insert into student3 values(4,'ankit','b',8.0);


select * from student3;
 
/*view*/
/*see the marks of students in 'a' division*/
create view div_a
as
select * from student3 where div='a';
select * from div_a;

/*see the marks of students in 'b' division*/
create view div_b
as
select * from student3 where div='b';
select * from div_b;