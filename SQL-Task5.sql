create database tehsil
use tehsil
create table sagird(
id int primary key identity,
name nvarchar(30) not null,
result int not null,
)
create table kurs (
id int primary key identity,
name nvarchar(30) not null,
categoryid int not null,
foreign key (categoryid) references category(id)
)

create table sagird_kurs(
sagirdid int not null,
kursid int not null,
foreign key (sagirdid) references sagird(id),
foreign key (kursid) references kurs(id)
)
create table category(
id int primary key identity,
name nvarchar(30) not null)
create view [kurs melumatlari] as
select kurs.name'kursadi', category.name 'categoia novu' from kurs join category on categoryid=categoryid