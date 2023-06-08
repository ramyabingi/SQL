select * from users

create procedure Spgetusers
as
begin
select * from users
end


create procedure Spinsertusers 
@Name varchar(50),
@Surname varchar(50),
@City varchar(50),
@Email varchar(50),
@Password varchar(50)
as
begin
insert into Users values(@Name,@Surname,@City,@Email,@Password)
end

create procedure Spupdateusers
@UID int ,
@Name varchar(50),
@Surname varchar(50),
@City varchar(50),
@Email varchar(50),
@Password varchar(50)
as
begin
update Users set @Name=Name,@Surname=Surname,@City=City,@Email=Email,@Password=Password where @UID=UID
end


create procedure Spdeleteusers1
@UID int
as
begin
delete from Users where UID=@UID
end



