create database computer
use computer 
create table notebook(
notebookname nvarchar(50) not null,
prize int not  null,
markaid int not null,
foreign key (markaid) references marka(id)
)
create table marka(
id int not null unique identity,
name nvarchar(50) primary key,
)
create procedure Usp_komputermelumati @notebookname nvarchar(50) ,@prize int,@markaid int as
insert into notebook (notebookname,prize,markaid)
values(@notebookname,@prize,@markaid)

exec Usp_komputermelumati 'tehbook',2500,5

select notebook.notebookname'notebookname',notebook.prize'qiymeti',marka.name'marka adi'from notebook join marka on markaid=id

update notebook
set notebookname='nitro7' where notebookname='nitro5'

create procedure usp_updatekompmelumati @notebookname nvarchar(50) ,@prize int as
update notebook
set notebookname=@notebookname,prize=@prize
where notebookname='nitro7'
execute usp_updatekompmelumati 'mackbookprom3' ,7000

drop procedure usp_updatekompmelumati


