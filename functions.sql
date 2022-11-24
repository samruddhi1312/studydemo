use samruddhi1;

create table student4(sid int,sanme varchar(50),branch varchar(50),cgpa float);
alter table student4 alter column sid int not null;
alter table student4 add constraint pk primary key(sid);

insert into student4 values(1,'aayushi','cse',9.7);
insert into student4 values(2,'akash','TT',8.2);
insert into student4 values(3,'ankit','MMTT',97.8);
insert into student4 values(4,'omkar','cse',8.0);
insert into student4 values(5,'shalaka','TT',8.7);
insert into student4 values(6,'aarti','TT',8.7);
insert into student4 values(7,'prathmesh','TT',8.2);

select * from student4;
/*agrregate functions*/
select count(sid) as no_of_students from student4;
select count(sid) as no_of_students_cse from student4 where branch='cse';
select max(cgpa) as Highest_marks from student4;
select avg(cgpa) result_of_cse from student4 where branch='cse';

/*numeric functions*/
/*string functions*/

/*normal function*/
create function show()
returns varchar(50)
as
begin
     return (select sanme from student4 where cgpa=8.0);
end
select dbo.show();

create function show1()
returns varchar(50)
as
begin
     return (select sanme from student4 where cgpa=8.0);
end
select dbo.show1();

create function show2()
returns table
as
     return (select * from student4);
select * from show2();

/*sql window function*/
select *,row_number() over (order by cgpa desc) ranking from student4; /*find ranking in college*/
select *,row_number() over (partition by branch order by cgpa desc) ranking from student4;/*find ranking in class*/
select *,rank()over (order by cgpa desc) ranking from student4;
select *,dense_rank()over (order by cgpa desc) ranking from student4;
