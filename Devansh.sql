create database UserDetailas
use UserDetailas

create table Employees(Id int primary key identity(1,1),FirstName varchar(50),LastName varchar(50),Address 
varchar(50),DateOfBirth date,Gender varchar)

select * from Employees