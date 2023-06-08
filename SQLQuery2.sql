select * from MarritalStatus

create procedure GetMarital
as
begin
select * from MarritalStatus
end
exec GetMarital