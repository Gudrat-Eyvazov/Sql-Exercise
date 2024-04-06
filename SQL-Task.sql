create database imtahan
use imtahan
create table student(
id int primary key identity,
ad nvarchar (50) not null,
result int not null)

create table fenn(
id int primary key identity,
ad nvarchar(50) not null,
)

create table stududent_fenn(
studentid int not null,
fennid int not null,
foreign key (studentid) references student(id),
foreign key (fennid) references fenn(id)
)
select*from student

