
--Assignments
--1.	Write a statement that will select the City column from the Customers table

create table Customers
(
customerid int primary key,
name varchar(20),
city varchar(20),
pincode int,
country varchar(20),
)

select *from customers
insert into customers values (1,'Tejal','Kochi',423335,'India')
insert into customers values (2,'Prachi','Mumbai',423336,'Japan')
insert into customers values (3,'Neha','Banglore',423337,'Us')
insert into customers values (4,'Rutuja','Nagpur',423338,'Germany')
insert into customers values (5,'Swara','Mumbai',423331,'Uk')
insert into customers values (7,'Tanvi','Pune',423332,'India')
insert into customers values (8,'Swara','Mumbai',423331,'Uk')
insert into customers values (9,'Teju','Trichy',423331,'Uk')

select city from customers

--2.	Select all the different values from the Country column in the Customers table.

select distinct country from customers

--3.	Select all records where the City column has the value "Mumbai

select * from customers where city = 'Mumbai'

--4.	Use the NOT keyword to select all records where City is NOT "Pune".

select * from customers where not city = 'Pune'

--5.	Select all records where the CustomerID column has the value 105.

select * from customers where customerid = 2

--6.	Select all records where the City column has the value 'Mumbai' and the PostalCode column has the value 423332.

select * from customers where city = 'Mumbai' and pincode = 423331

--7.	Select all records where the City column has the value 'Berlin' or 'London'.

select * from customers where city = 'Pune' or city='Mumbai'

--8.	Select all records from the Customers table, sort the result alphabetically by the column City.

select city from customers
order by city

--9.	Select all records from the Customers table, sort the result reversed alphabetically by the column City.

select city from customers
order by city desc

--10.	Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City

select country, city from customers
order by country,city 

--11.	Select all records from the Customers where the PostalCode column is empty
select * from customers
update Customers set Pincode = '123456' where customerid=1
update Customers set Pincode = '123457' where customerid=2
update Customers set Pincode = '123458' where customerid=3
update Customers set Pincode = '123459' where customerid=4
update Customers set Pincode = '123451' where customerid=5
update Customers set Pincode = '123452' where customerid=6
update Customers set Pincode = '123453' where customerid=7
update Customers set Pincode = '1234544' where customerid=8
update Customers set Pincode = '1234555' where customerid=9

select * from customers where pincode is null


--12.	Select all records from the Customers where the PostalCode column is NOT empty.

select * from customers where pincode is not null

--13.	Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".

update customers set city ='Mumbai' where country ='Uk'

--14.	Delete all the records from the Customers table where the Country value is 'Norway'.

delete from customers where country = 'Japan'

--15.	Use the MIN function to select the record with the smallest value of the Price column.
--16.	Use an SQL function to select the record with the highest value of the Price column.
--17.	Use the correct function to return the number of records that have the Price value set to 20
--18.	Use an SQL function to calculate the average price of all products.
--19.	Use an SQL function to calculate the sum of all the Price column values in the Products table

--20.	Select all records where the value of the City column starts with the letter "p".

select * from customers where city like 'p%'

--21.  Select all records where the value of the City column ends with the letter "p".

select * from customers where city like '%p'

--22.  Select all records where the value of the City column contains the letter "p".

select * from customers where city like '%p%'

--23.  Select all records where the value of the City column starts with letter "p" and ends with the letter "m".

select * from customers where city like 'p%m'

--24.  Select all records where the value of the City column does NOT start with the letter "p".

select * from customers where city not like 'p%'

--25.  Select all records where the second letter of the City is an "a".

select * from customers where city like '_a%'

--26.  Select all records where the first letter of the City is an "a" or a "c" or an "s".

select * from customers where city like '[nmp]%'

--27.  Select all records where the first letter of the City starts with anything from an "a" to an "f".

select * from customers where city like '[a-f]%'

--28.  Select all records where the first letter of the City is NOT an "a" or a "c" or an "m".

--(select * from customers where city  like '[!acf]%')
select * from customers where city  not like '[acm]%'

--29.	Use the IN operator to select all the records where the Country is either "Norway" or "France".

select * from customers where city IN ('Pune', 'Kochi')

--30.	Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".

select * from customers where not city IN ('Pune', 'Kochi')

--31.	Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 14

create table Product
(
pid int primary key,
pname varchar(20),
price int not null,
)


select *from Product
insert into Product values(11,'book', 10)
insert into Product values(12,'notebook', 11)
insert into Product values(13,'pencil', 12)
insert into Product values(14,'colorpen', 13)
insert into Product values(15,'sketchpen', 14)
insert into Product values(16,'dress', 15)
insert into Product values(18,'shirts', 16)
insert into Product values(19,'Pants', 5)
insert into Product values(20,'Jeans', 9)
insert into Product values(21,'shorts', 4)

select * from Product where price between 10 and 20

--40.  Add a column of type DATE called Birthday in Persons table
drop table Persons
create table Persons
(
birthday date,
)

select * from Persons
alter table Persons add Date Date

--41.  Delete the column Birthday from the Persons table
drop table Persons
create table Persons
(
birthday date,
name varchar(20),
)
select * from Persons
alter table Persons drop column birthday





















-----------------------------------------------------------------------------
