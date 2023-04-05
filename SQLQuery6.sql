--inner join 

select emp. *, dept.deptname
from tblemployee emp
inner join tblDept dept on dept.deptid=emp.deptid

select emp. *, dept.deptname
from tblemployee emp
inner join tblDept dept on dept.deptid=emp.deptid
where dept.deptname in ('HR', 'Development')
order by emp.empname

--display emp who is from pune city and hr dept
--display emp from hr dept and salary is less than 30000
--display emp frpm development and hr desc of their salary
drop table employee1
create table employee1
(
empid int primary key,
city varchar(20),
)

create table employee2
(
empid int primary key,
name varchar(20),
hr_dept varchar(20),
)

select *from employee1
select *from employee2

insert into employee1 values (1,'Kochi')
insert into employee1 values (2,'Banglore')
insert into employee1 values (3,'Mumbai')
insert into employee1 values (4,'Pune')
insert into employee1 values (5,'Nagpur')

insert into employee2 values (1,'Tejal','AB')
insert into employee2 values (2,'Tanvi','CD')
insert into employee2 values (3,'Neha','EF')
insert into employee2 values (4,'Shraddha','GH')
insert into employee2 values (5,'Pallavi','IJ')

--display emp who is from pune city and hr dept
select employee1.empid,employee1.city,employee2.name,employee2.hr_dept
from employee1
inner join employee2 on employee1.empid = employee2.empid

--display emp from hr dept and salary is less than 30000
