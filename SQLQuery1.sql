create database MEMBERS
use MEMBERS
create table MembersDetails
(Mno int primary key identity(1,1),Name varchar(50),PhoneNo bigint,ID_Proof varchar(50),Adhar_or_PanNo varchar(50) unique,
MembersId varchar(50),JoiningDate date)


drop table MembersDetails
insert into MembersDetails values('Madhu',9788326664,'Adar',367387687279,'Tjg4756','04-08-2022')

select * from MembersDetails

create procedure GetData
as
begin 
select * from MembersDetails
end

create procedure insertdata @Name varchar(50),@PhoneNo bigint,@ID_Proof varchar(50),@Adhar_or_PanNo varchar(50) ,
@MembersId varchar(50),@JoiningDate date
as
begin
insert into MembersDetails values (@Name,@PhoneNo,@ID_Proof,@Adhar_or_PanNo,@MembersId,@JoiningDate)
end

create procedure updatedata @Mno int ,@Name varchar(50),@PhoneNo bigint,@ID_Proof varchar(50),@Adhar_or_PanNo varchar(50) ,
@MembersId varchar(50),@JoiningDate date
as
begin
update MembersDetails set  Name=@Name,PhoneNo=@PhoneNo,ID_Proof=@ID_Proof,Adhar_or_PanNo=@Adhar_or_PanNo,MembersId=@MembersId,
JoiningDate=@JoiningDate where Mno=@Mno
end

create procedure deletedata @Mno int
as
begin
delete from MembersDetails where Mno=@Mno
end


create procedure Editdata @Mno int
as
begin
select * from MembersDetails where Mno=@Mno
end