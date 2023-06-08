create database PRODUCT_RAMYA
use PRODUCT_RAMYA
create table Categories(CId int primary key identity(1,1),CategoryName varchar(100))
create table Products(PId int primary key identity(1,1),ProductName varchar(100) unique not null,CategoryId int Foreign 
key references Categories(CId),Product_Descprition varchar(100) not null,MRP decimal not null)
insert into Categories values('Laptops'),('Fridges'),('Desktops')
insert into Products values('Mobile',1,'Realme',30000)
select * from Categories
select * from Products
drop table Categories
drop table Products
create procedure SpGetCategories
as
begin
select * from Categories
end
exec SpGetCategories

create procedure Sp1GetProducts1
as
 begin
 select PId,ProductName,CategoryName,Product_Descprition,MRP from Products p join Categories c on 
 c.CId=p.CategoryId 
 end
 exec Sp1GetProducts1


create procedure SpinsertCategory1 @CategoryName varchar(100)
as 
begin
insert into Categories values(@CategoryName)
end
exec SpinsertCategory1 'Furnitures'

create procedure SpinsertProducts @ProductName varchar(100),@CategoryId int,@Product_Descprition varchar(100),@MRP decimal
as
begin
insert into Products values(@ProductName,@CategoryId,@Product_Descprition,@MRP)
end
exec SpinsertProducts 'dsfgf',2,'vf',5555

create procedure SpUpdateCategory1  @CId int,@CategoryName varchar(100)
as 
begin
update  Categories  set CategoryName=@CategoryName where CId=@CId
end
exec SpUpdateCategory1 1, 'Furniture'

create procedure SpUpdateProducts1  @PId int, @ProductName varchar(100),@CategoryId int,@Product_Descprition varchar(100),@MRP decimal
as
begin
update   Products  set ProductName=@ProductName,CategoryId=@CategoryId,Product_Descprition=@Product_Descprition,MRP=@MRP where PId=@PId
end
exec SpUpdateProducts1 1, 'Chair',1,'xxx',1000

create procedure SpDeleteCategory @CId int
as
begin
delete from Categories where CId=@CId
end
exec SpDeleteCategory  1005

create procedure SpDeleteProducts @PId int
as
begin
delete from Products where PId=@PId
end
exec SpDeleteProducts 

create procedure SpGetBycategoryId @CId int
as
begin
select *  from Categories where CId=@CId
end
exec SpGetBycategoryId 1

create procedure SpGetByProductId @PId int
as
begin
select *  from Products where PId=@PId
end
exec SpGetByProductId 1  

SpDeleteCategory


sp_helptext SpDeleteCategory

select * from categories