create database PersonInfo
use PersonInfo

create table States (SId int Primary key identity(1,1),StateName varchar(100),Code varchar(100))
insert into States values('telangana','kj3'),('andraprdesh','42'),('karntaka','43')
insert into Countries values('India','+91'),('UK','+81'),('USA','+71')

create table Countries (CId int Primary key identity(1,1),CountryName varchar(100),Code varchar(100))

create table Employees(Id int Primary key identity(1,1),FirstName varchar(100),
state_Id int foreign key references States(SId),
country_Id int foreign key references Countries(CId),
Address varchar(100),Salary  bigint)
select * from States
select *  from Countries
select * from Employees
insert into Employees values('Swarna',1,1,'Sircilla',55000),('Varsha',2,1,'Karimnagar',65000),
('Divya',3,2,'Hyderbad',70000),('Srikanth',3,1,'Bangulor',60000),
insert into Employees values('Swarna',1,1,'Sircilla',55000),('Varsha',2,1,'Karimnagar',65000)

select FirstName,Code from Employees as e join Countries as c on e.country_Id=c.CId where 
CountryName='India'
update Employees set FirstName='Srivalli' where Id=1

alter table States
add Email varchar(100)
alter table States
drop Column Email 

select * from Employees where Salary=(select max(salary) from Employees)
select * from Employees where Salary<(select max(salary) from Employees where Salary < 
(select * from max(salary) from   Employees))

SELECT * FROM Employees 
WHERE salary= (SELECT DISTINCT(salary) 
FROM Employees ORDER BY salary DESC LIMIT 3,1);