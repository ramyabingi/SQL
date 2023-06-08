create table Usersinfo(
Id int primary key identity(1,1),FirstName varchar(50),LastName varchar(50),Address varchar(50),
DateofBirth date,Gender varchar(50),MobileNumber Bigint,Email varchar(50),Password varchar(50))

drop table Usersinfo

insert into UsersInfo  values('Ramya','bingi','Sircilla','05-02-1824' ,'male',573653365564,'raas@gmail.com','dssf')

create table USERS
(Id int primary key identity(1,1),FirstName varchar(50),LastName varchar(50),Address varchar(50),
DateofBirth varchar(50),MobileNumber bigint,Email varchar(50),Password varchar(50))

insert into USERS values('Ramya','bingi','sircilla','05-06-1245',3443433565,'ramya@gmail.com','fgfdf4546')