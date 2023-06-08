create database TravelBiz
use TravelBiz
create table bus(Svno varchar(30) primary key,
fromplace varchar(50),
toplace varchar(50),
capacity int,
arrtime varchar(50),
deptime varchar(50),
tname varchar(50),
bustype varchar(50))
------------------------------------------------------------------------------------------

create table pickuppoint(id int,pid varchar(30) primary key,pname varchar(30))

----------------------------------------------------------------------------------------

create table destination(id int ,did varchar(50) primary key,dname varchar(50))

--------------------------------------------------------------------------------------------

create table buspickuppoint(
svno varchar(30) foreign key references bus(svno),
pid varchar(30) foreign key references pickuppoint (pid),
primary key(svno,pid))

-----------------------------------------------------------------------------------------------
create table busdestination(svno varchar(30) foreign key references bus(svno),
did varchar(50) foreign key references destination(did),
primary key(svno,did))
--------------------------------------------------------------------------------------------------------

create table faredestination(svno varchar(30) foreign key references bus(svno),
fdid varchar(50) foreign key references destination(did),
fdeptime varchar(50),
tdid varchar(50) foreign key references destination(did),
tdeptime varchar(30),
fare money)

-----------------------------------------------------------------------------------

select * from bus
select * from pickuppoint
select * from destination
select * from buspickuppoint
select * from busdestination
select * from faredestination






















