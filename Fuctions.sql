create database RamyaDivya
use RamyaDivya
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);
ALTER TABLE Orders
ADD CONSTRAINT FK_PersonOrder
FOREIGN KEY (PersonID) REFERENCES Persons(ID);


ALTER TABLE Orders
ADD FOREIGN KEY (PersonID) REFERENCES Persons(ID)

CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL)

--ADD PRIMARY KRY-------
ALTER TABLE Persons
ADD  PRIMARY KEY (ID);
--Drop Primary key--
ALTER TABLE Persons
drop constraint PRIMARY KEY  ;

insert into Persons values (2,'','sacf',22,'Sircilla')
select * from Persons

ALTER TABLE Persons
ADD CONSTRAINT df_City
DEFAULT 'Sandnes' FOR City;
truncate table Persons



create table EmployeeDetails
(Id int primary key identity(1,1),
FirstName varchar(50) ,LastName varchar(50) unique ,Address varchar(50) default 'Sircilla',
Age int not null
check (Age>17),Salary bigint
)

select * from EmployeeDetails
insert into EmployeeDetails values ('RAmya','jhgjs','Sircilla',18,300000)
--INDEXES------------------------
CREATE INDEX idx_lastname
ON Persons (LastName);

select * from Persons
select * from Employees

create table Employees
(Id int primary key identity(1,1),
FirstName varchar(50) ,LastName varchar(50) unique ,Address varchar(50) default 'Sircilla',
Age int 
check (Age>17),Salary bigint,
City varchar(50) unique)

insert into Employees values ('Ramya','Bingi','Sircilla',23,40000,'Karimnagar')
insert into Employees values ('Divya','Gali','Sircilla',22,40000,'Hyd')
drop table States

create table States
(SId int primary key identity(1,1),StateName varchar(50),Code varchar(50))
select * from States

select * from EmployeeDetails where Salary<(select Max(Salary) from EmployeeDetails)





