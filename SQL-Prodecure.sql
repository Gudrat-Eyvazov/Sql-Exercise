create database PhoneStore
use PhoneStore
create table Brend(
ID int primary key identity,
BrendName nvarchar(50)
)
create table Phone(
ID int primary key identity,
PhoneName nvarchar(50) not null,
Ram int not null,
Storage int not null,
BrendId int not null,
foreign key (BrendId) references Brend(ID)
)
create procedure Usp_Brend @brendname nvarchar(50) as
insert into Brend(brendname)
values
(@brendname)
exec Usp_Brend 'One Plus'

create procedure Usp_Phone @PhoneName nvarchar(50),@Ram int,@Storage int,@BrendId int as
insert into Phone (PhoneName,Ram,Storage,BrendId)
values(@PhoneName,@Ram,@Storage,@BrendId)
exec Usp_Phone 'X3 Pro',6,128,3

create view [AllPhoneData] as
select Phone.ID 'ID', Phone.PhoneName'Telefon adi',Phone.Ram'Ram',Phone.Storage'Yaddas',Brend.BrendName'brend adi' from Phone join Brend on BrendId=Brend(ID)
select*from [AllPhoneData]


create procedure Usp_UpdatePhone @ID int = null, @PhoneName nvarchar(50) = null,@Ram int = null,@Storage int = null,@BrendId int  = null as
Update Phone 
set PhoneName= ISNULL( @PhoneName,PhoneName),Ram=ISNULL(@Ram,Ram), Storage=ISNULL (@Storage,Storage), BrendId=ISNULL( @BrendId,BrendId) where ID=@ID
exec Usp_UpdatePhone 1,'iphone 13 pro',null,null,null

create Procedure Usp_DeletePhone @ID int as
delete from Phone 
where ID=@ID
exec Usp_DeletePhone 1
