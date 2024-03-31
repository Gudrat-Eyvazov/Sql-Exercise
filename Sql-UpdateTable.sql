create database [user]
use [user]
create table usertable(
id int primary key identity(1,1),
fullname nvarchar(30) not null,
gmail nvarchar(50) unique check(gmail like'%@gmail.com%'),
gender nvarchar (30) check(gender='male'or gender='famale'),
country nvarchar (50) default 'Aze'
)
insert into usertable(fullname,gmail,gender,country)
values
('aska','as@gmail.com','famale','asya'),
('sinan','gudrateyvazov@gmail.com','male','amerika'),
('senan','senanqocayev@gmail.com','male','almanya')

select * from usertable
select*from usertable where fullname like 's%'

delete from usertable where id=1
select*from usertable

update usertable
set gmail='sinaneyvazov@gmail.com' where id=2
select * from usertable
select * from usertable order by id desc

select * from usertable where country='amerika'or fullname='sinan'

select * from usertable order by id offset 5 

