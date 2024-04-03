create database school
use school
create table class(
id int ,
[name] nvarchar(50)
)
insert into class(id,[name])
values
(4229,'a1'),
(4229,'a2'),
(4555,'c1')

delete from class where id=4557
select *from class
update class
set name = 'sinan'
where id = 4555 
select*from class where name like 's%'
select*from class where name like '%2'
select*from class where id like'%29%'
select*from class order by id desc

create table student(
id int primary key identity(1,1),
[name] nvarchar (50) not null ,
surname nvarchar(30) default 'ceki',
mektebnm nvarchar(50) check(mektebnm in('iptidai','orta'))
)
insert into student([name],surname,mektebnm,spendia)
values
('sinan','eyvazov','iptidai',15),
('nihat','quliyev','orta',17),
('senan','qocayev','orta',45)
select*from student
update student
set surname= 'eyvazov' where [name] ='nihat'

select * from student where [name] ='sinan' and surname='eyvazov'
select*from student order by id offset 2 rows
select top(2)*from student

drop table vesiqe


alter table student
add spendia int not null default 150

alter table student 
drop column spendia 

select sum (spendia) as 'cemi' from student 
select count(spendia) as 'sayi' from student
select max(spendia)as 'max'from student
select min (spendia)as 'min'from student
select avg(spendia)as'ortalama'from student

create table muellif(
id int primary key identity,
fullname nvarchar (50) not null
)
create table kitab(
id int unique not null identity ,
fullname nvarchar(50),
muellifid int primary key
foreign key (muellifid) references muellif(id)
)

create table [group](
id int primary key identity,
[name] nvarchar(50) not null 
)
create table student(
id int primary key,
[name] nvarchar(50) not null,
groupid int not null
foreign key (groupid) references [group] (id)
)
select *from student join [group] g on student.groupid=g.id
create table author(
id int primary key identity ,
fullname nvarchar(50) not null
)
create table book(
id int primary key identity  ,
fullname nvarchar (50) not null ,
)
create table author_book(
authorid int not null,
bookid int not null
foreign key (authorid) references author(id),
foreign key (bookid) references book(id)
)




