select * from UserDetailas


select * from Users
select * from States
select * from Countries
select * from MaritalStatus
insert into MaritalStatus values('Married','m'),('unmarried','um')

insert into Countries values('India','+91'),('UK','+90'),('USA','+61'),('Kuwait','+71'),('Canada','+81')
delete from Countries where Id in(1,2)
insert into Users values('ramya','Bingi',1,1002,'Sircilla',1,3966878676),('ravali','gunnala',1,1002,'Sircilla',1,7681368876)
('Srikanth','Adepu',1,1003,'Sircilla',1,7678326876),('Devansh','Adepu',1,1003,'Sircilla',2,345346463),
('Srivalli','Thouta',1,1004,'Sircilla',1,4536456546)


select FirstName,Code from Users  as u  join Countries  as c on c.Id=u.CId where CountryName='India'

