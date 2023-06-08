select * from Countries
select * from States
select * from Users

create table MaritalStatus(Id int Primary key identity(1,1),StatusName varchar(50),Code varchar(50))
alter table  Users 
drop coloumn SId int 
alter table Users
add MId int foreign key references MaritalStatus(Id)
alter table Users
add Aadharnumber bigint 