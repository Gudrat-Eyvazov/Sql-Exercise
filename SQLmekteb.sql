create database mekteb
use mekteb
create table student(
id int primary key identity,
name nvarchar(50) not null,
surname nvarchar(50) not null
)