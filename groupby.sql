select * from Users
select * from States
select * from Countries
CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),       
   PRIMARY KEY (ID)
);

insert INTO CUSTOMERS VALUES(1, 'Ramesh', 32, 'Ahmedabad', 2000.00);
insert INTO CUSTOMERS VALUES(2, 'Khilan', 25, 'Delhi', 1500.00);
insert INTO CUSTOMERS VALUES(3, 'kaushik', 23, 'Kota', 2000.00);
insert INTO CUSTOMERS VALUES(4, 'Chaitali', 25, 'Mumbai', 6500.00);
insert INTO CUSTOMERS VALUES(5, 'Hardik', 27, 'Bhopal', 8500.00);
insert INTO CUSTOMERS VALUES(6, 'Komal', 22, 'MP', 4500.00);
insert INTO CUSTOMERS VALUES(7, 'Muffy', 24, 'Indore', 10000.00);

insert INTO CUSTOMERS VALUES(8, 'Muffy', 24, 'Indore', 5000.00);

insert INTO CUSTOMERS VALUES(9, 'Ramesh', 24, 'Mumbai', 12000.00);
insert INTO CUSTOMERS VALUES(10, 'Muffy', 24, 'Indore', 15000.00);
insert INTO CUSTOMERS VALUES(11, 'Komal', 25, 'Indore', 20000.00);
insert INTO CUSTOMERS VALUES(12, 'Komal', 25, 'Indore', 30000.00);
insert INTO CUSTOMERS VALUES(13, 'Komal', 25, 'Indore', 2000.00);



select * from CUSTOMERS

SELECT Age, AVG(SALARY) as avg_salary 
FROM CUSTOMERS
GROUP BY AGE

SELECT COUNT(Name) as Net_cust, AGE
FROM Customers
GROUP BY AGE

SELECT AGE, MAX(salary) AS max_salary
FROM CUSTOMERS
GROUP BY AGE
ORDER BY MAX(salary) DESC

SELECT AGE, AVG(salary) AS avg_salary
FROM CUSTOMERS
GROUP BY AGE
HAVING AGE > 24

select * from CUSTOMERS where salary=(select Max(salary) from CUSTOMERS);

select top 1 salary from CUSTOMERS 

--select * from CUSTOMERS order by SALARY desc Limit 

--select top 1 SALARY from (select top 3 SALARY from CUSTOMERS order by SALARY desc)
--order by Salary asc

select top 1 * from (select top 2 SALARY from CUSTOMERS order by SALARY desc) order by SALARY asc

select top 2 Salary from CUSTOMERS order by SALARY desc

select * from CUSTOMERS where Id=(select min(Id) from CUSTOMERS)
select * from CUSTOMERS
select * from CUSTOMERS where Id=(select max(Id) from CUSTOMERS)

create table Ramya As select * from CUSTOMERS;

select * ,count(NAME)from CUSTOMERS Group by NAME 
SELECT DISTINCT NAME FROM CUSTOMERS ORDER BY NAME;

select * from CUSTOMERS
------delete duplicate data---------------------------
delete from CUSTOMERS where ID not in 
(select max(ID) from CUSTOMERS where NAME='Muffy')and NAME='Muffy'
--SECOND HIGHEST SALARY-------
select max(SALARY) from CUSTOMERS where Salary<(select Max(Salary) from CUSTOMERS )
----THIRD HIGHEST SALARY-------------------
select max(SALARY) from CUSTOMERS where Salary<(select Max(Salary) from CUSTOMERS  where SALARY
<(select Max(Salary) from CUSTOMERS )) 
---second minimum Salary------------
select min(Salary) from CUSTOMERS where SALARY>(select min(SALARY) from CUSTOMERS )

----THIRD HIGHEST SALARY----------------------------------
select min(Salary) from CUSTOMERS where SALARY>(select min(SALARY) from CUSTOMERS where SALARY>
(select min(SALARY) from CUSTOMERS) )
----  TO FETCH first record----------
select * from CUSTOMERS where ID=(select min(ID) from CUSTOMERS)
----  TO FETCH last record----------
select * from CUSTOMERS where ID=(select max(ID) from CUSTOMERS)

----GEt EVEN RECORD---------
select * from CUSTOMERS where ID % 2=0;
-------GEt ODD RECORD---------
select * from CUSTOMERS where ID % 2=1;

SELECT NAME, SUM(SALARY) FROM CUSTOMERS   
GROUP BY NAME  
HAVING SUM(SALARY)>2300;   

----GROUPBY IN SINGLE COLUMN--------
SELECT AGE, AVG(SALARY) as avg_salary
FROM CUSTOMERS
GROUP BY age
----GROUPBY IN MULTIPLE COLUMN--------
SELECT NAme, age, SUM(salary) AS total_salary
FROM CUSTOMERS
GROUP BY NAME, age

--------single CTE-----------QUERY-------------------
--WITH cte_name (column_names)   
--AS (query)     
--SELECT * FROM cte_name;    


--------single CTE-----------QUERY-------------------
WITH customers_in_NewYork  
AS (SELECT NAME,AGE,ADDRESS FROM CUSTOMERS WHERE NAME = 'Ramesh')  
SELECT Name, Age, Address FROM customers_in_NewYork; 


------multiple CTE-------QUERY-----------------------
--WITH   
--   cte_name1 (column_names) AS (query),  
--   cte_name2 (column_names) AS (query)  
--SELECT * FROM cte_name  
--UNION ALL  
--SELECT * FROM cte_name;    

------multiple query-------------------------

WITH   
customers_in_Delhi  
    AS (SELECT * FROM CUSTOMERS WHERE ADDRESS = 'Delhi'),  
customers_in_kOTA  
    AS (SELECT * FROM CUSTOMERS WHERE ADDRESS = 'kOTA')  
SELECT Name, Age, Address FROM customers_in_Delhi  
UNION ALL  
SELECT Name, Age, Address FROM customers_in_kOTA;  


CREATE VIEW [Mumbai Customers] AS
SELECT ID, Name, ADDRESS
FROM Customers
WHERE ID=2

SELECT * FROM [Mumbai Customers];


SELECT COUNT(DISTINCT AGE) as UniqueAge  FROM CUSTOMERS

select * from CUSTOMERS

delete from CUSTOMERS
where ID not in
(select max(ID) as Distict
from CUSTOMERS where NAME='Muffy')and NAME='Muffy'

select * from CUSTOMERS where NAME like '____%'

select  * from CUSTOMERS  where NAME like 'r%'
select  top 2 Name as Person_Name,Salary from CUSTOMERS order by SALARY desc




select top 2 Name,Salary from CUSTOMERS order by SALARY asc

select top 2 Name,count(Salary) as Salary from CUSTOMERS
group by NAME
--END WITH LETTER------------------
select * from CUSTOMERS where NAME like '%y'

SElect sum(Salary) as TotalSal from CUSTOMERS 

select count(Address) from CUSTOMERS 
where ADDRESS='mumbai'
group by NAME

select * from CUSTOMERS where Salary between 5000 and 10000

ALTER TABLE CUSTOMERS
RENAME COLUMN Salary to Sal;
























