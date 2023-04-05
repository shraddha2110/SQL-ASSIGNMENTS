--subquery with update, delete & insert

-- give hike by 20% to the emp who work in developemt dept

update tblemployee set salary=salary+(salary*0.20) where deptid=
(
select deptid from tblDept where deptname='development'
)

select * from tblemployee where deptid=4

-- delete with subquery
-- remove the emp who work in admin dept
delete from tblemployee where deptid=
(select deptid from tblDept where deptname='Admin')



--Subquery with insert statement

create table tblProject
(
empid int,
empname varchar(40),
city varchar(40)
)

select * from tblProject


insert into tblProject select empid,empname,city from tblemployee where deptid=
(
select deptid from tblDept where deptname='development'
)




--ALL keyword

--All keyword is used when subquery returns multiple values

insert into tblProject select empid,empname,city from tblemployee where salary < all
(
select avg(salary) from tblemployee
)
-- display emp list who have > salary than the avg salary of their dept
select * from tblemployee where salary <all(
select avg(salary) from tblemployee group by deptid
)

--find the name of emp who has 2nd highest salary using subquery

select * from tblemployee where salary=(
select max(salary)from tblemployee where salary<>
(
select max(salary)from tblemployee
))




--Join vs Subquery

Join → combine 2 or more tables to get the data based on common column
We can return a multiple columns.
Join is faster than subquery


Subquery → its a nested query that we put in the where clause or can be nest in to select, insert,update or delete statement.
The result of one query that needs to be passed to another statement.
So when we need to return a scalar value we can use subquery,






--function in SQL
--1. built in function
--2. user defined function


--1. built in function in SQL

--len --> to find the length

select empname, len(empname)as 'word length' from tblemployee

-- upper & lower 
select UPPER(empname) as 'emp name' from tblemployee
select lower(empname) as 'emp name' from tblemployee

--TRIM, LTRIM, RTRIM
select TRIM(empname) as 'trim fun' from tblemployee
select LTRIM(empname) as 'trim fun' from tblemployee
select RTRIM(empname) as 'trim fun' from tblemployee

--substring

select empname,SUBSTRING(empname,1,3) as' temp name' from tblemployee

-- concat

select CONCAT(empname,'->',city,'->',salary)as 'result' from tblemployee

--replace
--            col    old     new  
select REPLACE(city,'pune','PUNE') from tblemployee

select REVERSE(empname) from tblemployee

-- isnull()

select city from tblemployee
-- product  price * qty --> 
--price * isnull(qty,1)
--100 *2 -> 200
--100 *1 -> 100
select ISNULL(city,'NA')as 'City' from tblemployee

-- cast --> conversion from one data type to another data type

select cast(salary as varchar(20)) as'Salary' from tblemployee

select cast(CURRENT_TIMESTAMP as date)

select year(cast(CURRENT_TIMESTAMP as date))

select month(cast(CURRENT_TIMESTAMP as date))

select day(cast(CURRENT_TIMESTAMP as date))

select cast(CURRENT_TIMESTAMP as time)

alter table tblemployee add joiningdate date

select * from tblemployee -- yyyy-mm-dd
update tblemployee set joiningdate= cast('2023-2-10'as date) where empid=1
