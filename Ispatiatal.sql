create Database Ispatialtic
use Ispatialtic
drop table Users
create table Users(UID int  primary key identity(1,1),Name varchar(50),
Surname varchar(50),City varchar(50),Email varchar(50),Password varchar(50))
insert into Users values ('Ramya','Bingi','Sircilla','ramya@gmail.com','654tutu')
select * from Users