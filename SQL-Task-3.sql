create database company
use company
create table customers(
id int primary key identity(1,1) ,
[name] nvarchar(50) not null,
surname nvarchar (50)not null,
salary float,
)
drop table customers
insert into customers([name],surname,salary)
values
('sinan','eyvazov',1500),
('nihat','quliyev',1200),
('lionel','messi',50000),
('cristiano','ronaldo',70000)

select *from customers

update customers
set salary=2000 where surname='eyvazov'

delete from customers  where surname='quliyev'

select avg (salary) as 'cemi' from customers

select* from customers  
where salary > (select avg (salary) from customers)



