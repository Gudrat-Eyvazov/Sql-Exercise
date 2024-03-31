create database ListDma
use ListDma
create table StudentTable(
Id int,
 name nvarchar(25),
surname nvarchar(25)
)
Insert Into StudentTable(Id,name,surname)
Values
(1,'lionel ','Messi'),
(2,'cristiano','Ronaldo')
select*from StudentTable
delete from StudentTable where Id=1;

Update StudentTable
set name = 'luis ',surname='surname'
where Id=1;

create database Akedemiya 
use Akedemiya
create table StudentTable(
Id int ,
grade nvarchar (25),
fullname nvarchar(25),
bithday nvarchar(25),
[group] nvarchar (25)
)
Insert into StudentTable(Id,fullname,birthday,group)
values 
select*from StudentTable
delete from StudentTable where Id=1;





  