-- JOINS in SQL
-- when we want to join 2 or more tables to get the data 
--we can use joins 
-- we will combine both the tables columns & then generate the result 
-- in join there must be a match column in the 2 or more tables
-- types of joins
--1. Inner join
--2. Left join
--3. right join
--4. full join / full outer join
--5. self join
--6. cross join / cartesion product

select * from tblDept
select * from tblemployee


-- 1. inner join --> select the records that have matching values in both the table
-- example --> customer -> orders

select emp.*,dept.deptname
from tblemployee emp
inner join tblDept dept on dept.deptid=emp.deptid



select emp.*,dept.deptname
from tblemployee emp
inner join tblDept dept on dept.deptid=emp.deptid
where dept.deptname in('HR','Development')
order by emp.empname
--2. 

--display emp who is from pune city & hr dept
select emp.*,dept.deptname
from tblemployee emp
inner join tblDept dept on dept.deptid=emp.deptid
where dept.deptname='hr' and emp.city='Pune'


-- display emp from hr dept & salary is less than 30000
select emp.*,dept.deptname
from tblemployee emp
inner join tblDept dept on dept.deptid=emp.deptid
where dept.deptname='hr' and emp.salary<30000

--display emp from development & hr desc of their salary
select emp.*,dept.deptname
from tblemployee emp
inner join tblDept dept on dept.deptid=emp.deptid
where dept.deptname in ('hr','development')
order by emp.salary desc


-- 2. left join -->all records from left table & matching data from another table
-- records those are not matched, will be return as null
select emp.*,dept.deptname
from tblemployee emp 
left join tblDept dept on dept.deptid=emp.deptid


--3. right join --> all records from right table & matching data from left table
--records those are not matched , will return as null
select emp.*,dept.deptname
from tblemployee emp 
left join tblDept dept on dept.deptid=emp.deptid

select dept.deptname,emp.*
from tblemployee emp 
right join tblDept dept on dept.deptid=emp.deptid
------------------------------------------------------------------------------------------
--self join
drop table employee3
create table employee3
(
empid int primary key,
empname varchar(20),
city varchar(20),
deptid int,
salary int,
--managerid int,
)

select *from employee3
insert into employee3 values (1,'Tejal','Kochi',101,10000)
insert into employee3 values (2,'Tanvi','Kochi',102,20000)
insert into employee3 values (3,'Trisha','Banglore',103,30000)
insert into employee3 values (4,'Sejal','Banglore',101,40000)
insert into employee3 values (5,'Disha','Mumbai',102,50000)
insert into employee3 values (6,'Pooja','Mumbai',103,25000)
insert into employee3 values (7,'Rutuja','Pune',101,55000)
insert into employee3 values (8,'Prachi','Pune',102,35000)
insert into employee3 values (9,'Priyanka','Nagpur',103,25000)

alter table employee3 add managerid int
select * from employee3--prachi, priyanka, rutuja

update employee3 set managerid=1001 where empid in(1,2)
update employee3 set managerid=1002 where empid in(3,4)
update employee3 set managerid=1003 where empid in(5,6)

select empname as 'Manager' from employee3 where managerid is null

select emp.empname as 'Employee Name', man.empname as 'Manager name'
from employee3 emp, employee3 man
where man.empid=emp.managerid

--cross join
drop table Tshirts
create table Tshirts
(
tshirts varchar(20)
)

insert into Tshirts values ('tshirts')

create table color
(
color varchar(20)
)
select * from size
select * from color
select * from Tshirts


insert into color values ('Yellow')
insert into color values ('green')
insert into color values ('black')

create table size
(
size varchar(20)
)
insert into size values ('S')
insert into size values ('M')
insert into size values ('XL')

select * from Tshirts cross join color cross join size
select * from color cross join size
------------------------------------------------------------------
select city, count(empid) as 'Count'
from employee3
group by city

--display dept wise count of emp
select deptid, count(empid) as 'emp count'
from employee3
group by deptid

--display country wise count of customer
drop table Customers
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

select country, count(customerid) as 'customer count'
from customers
group by country