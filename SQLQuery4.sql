--create table book -> id , name, price, author,publication,contact
--sp_help book
-- id pk, name - not null, pulication - default (TQ) contact - unique

create table Book
(
id int,
name varchar(20),
price int,
author varchar(20),
publication varchar(20),
contact int
)

--primary key
alter table Book alter column id int not null
alter table Book add constraint pk_Book primary key(id)

--check
alter table Book add constraint chk_Book check(price>=0)

--unique constraint
alter table Book add constraint unique_Book unique(contact)

--default
alter table Book add constraint default_Book default'TQ' for publication

--drop
alter table Book drop constraint default_Book

sp_help Book


-----------------------------------------------------------------------------------------------------------------
--FK constraint

create table tblDept
(
deptid int primary key,
deptname varchar(20)
)

 --1 hr
 --2 admin 
create table tblemployee 
( 
empid int primary key identity(1,1), 
empname varchar(40),
city varchar(20),
deptid int,
constraint fk_deptemp foreign key (deptid) references tblDept(deptid)
)


alter table tblemployee add constraint fk_deptemp foreign key(deptid) references tblDept(deptid)

alter table tblemployee drop constraint fk_deptemp

-----------------------------------------------------------------------------------------------------------------------

-- non cluster index --> applies on col where values may be duplicate 
create index in_employee on tblemployee (empname,city)

--cluster index --> applies on the PK column 
create unique index in_employee2 on tblemployee(empid)

drop index in_employee

--remove the table (remove the table & its schema from the DB) 
drop table employee

-- truncate table (remove all the records)
truncate table employee

-----------------------------------------------------------------------------------------------------------


--DML-> insert
select * from tblDept
select * from tblemployee

insert into tblDept values (1, 'HR')
insert into tblDept values (2, 'Admin')
insert into tblDept values (3, 'Development')

insert into tblemployee values ('Rohan', 'Mumbai',1)
insert into tblemployee values ('Suraj', 'Pune',1
insert into tblemployee values ('sunny', 'nasik',2)
insert into tblemployee values ('bunny', 'kochi',2)
insert into tblemployee values ('ram', 'chennai',3)
insert into tblemployee values ('ntr', 'rajkot',3)
insert into tblemployee values ('vijay', 'satara',4)
insert into tblemployee values ('vikram', 'raigad',4)


truncate table tblemployee