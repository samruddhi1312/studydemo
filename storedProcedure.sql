use samruddhi1;

create table liabrary(sid int primary key,branch varchar(20),bookIssued varchar(50),dateOfIssued date);

insert into liabrary values(1,'tt','ramayana','2-11-2022');
insert into liabrary values(2,'cse','mahabhart','7-11-2022');
insert into liabrary values(3,'mmtt','shyamchi aai','7-11-2022');
insert into liabrary values(4,'tt','ikigai','5-11-2022');
insert into liabrary values(5,'cse','ramayana','2-11-2022');

select * from liabrary;

create procedure p1
as
begin
     select sid,bookIssued from liabrary;
end
execute p1;

create procedure p3 @id int
as 
begin
     select sid,bookIssued,dateOfIssued from liabrary where sid=@id;
end
execute p3 2

create procedure p4 @book1 varchar(50),@book2 varchar(50)
as
begin
     select sid,dateOfIssued from liabrary where bookIssued=@book1 or bookIssued=@book2;
end
execute p4 'mahabharat','ramayana';

create procedure p5 @book1 varchar(50),@dt date
as
begin
      update liabrary set bookIssued=@book1 where sid=2;
	  update liabrary set dateOfIssued=@dt where sid=2;
end
execute p5 'secrete','11-22-2022';