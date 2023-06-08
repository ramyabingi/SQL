select * from Employee
select  GETDATE()
 

alter table Employee
add Modified_On smalldatetime default GETDATE()


   --Created_On datetime default CURRENT_TIMESTA

   UPDATE
    Employee
SET
    Modified_On = getdate();


	SELECT FirstName, LastName, Address,Salary  
INTO #EmployeeDet
FROM Employee
WHERE Id in (1,2,3)
create procedure Store
as
begin
CREATE TABLE #EMployeesDet (
	FirstName varchar(50),
	LastName varchar(50),
	Address varchar(50),
     Salary  bigint
	 
       
)
end
exec Store
select * from #EMployeesDet
INSERT INTO #EMployeesDet (FirstName, LastName, Address,Salary) 
SELECT FirstName, LastName, Address,Salary
FROM Employee
WHERE Salary>=25000

select * from #EMployeesDetai

create 

SELECT FirstName, LastName, Address,Salary
INTO #EMployeesDetai
FROM Employee
WHERE Salary <= 30000

create procedure Storepro
as
begin
CREATE TABLE ##EMployeesDetails (
	FirstName varchar(50),
	LastName varchar(50),
	Address varchar(50),
     Salary  bigint
	 
       
)
end
exec Store

create procedure Storeproget

as
begin
select * from ##EMployeesDetails
end
exec Storeproget



