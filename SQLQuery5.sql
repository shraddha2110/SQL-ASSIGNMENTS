--Assignment:
--1. create table product(id,name,price,company)
--2. display the product with hightest price to lowest price (first 3 products)
--3. display product name whose price is lowset price in product table
--4. display the product with lowest to highest price (skip first 3 products & display next 5 products)
--5. display product details with alphbetical order of product name & price 
--6. display product details with alphabetical order of company name& price
drop table Product1
create table Product1
(
pro_id int,
pro_name varchar(40),
price int,
company varchar(40)
)

select *from Product1

insert into Product1 values(1,'book', 1000,'sansui')
insert into Product1 values(2,'notebook', 1100, 'samsung')
insert into Product1 values(3,'pencil', 1200,'oppo')
insert into Product1 values(4,'colorpen', 1300,'vivo')
insert into Product1 values(5,'sketchpen', 1400,'realme')
insert into Product1 values(6,'dress', 1500,'redmi')
insert into Product1 values(7,'shirts', 1600,'airtel')
insert into Product1 values(8,'Pants', 500,'bsnl')
insert into Product1 values(9,'Jeans', 900,'apple')
insert into Product1 values(10,'shorts', 400,'idea')

--2. display the product with hightest price to lowest price (first 3 products)
select top 3 * from Product1
order by price desc

--3. display product name whose price is lowset price in product table
select top 1 pro_name, price from Product1
order by price asc

select top 1 pro_name, price from Product1
order by price

--4. display the product with lowest to highest price (skip first 3 products & display next 5 products)
select * from Product1
order by price
offset 3 rows
fetch next 5 rows only

--5. display product details with alphbetical order of product name & price 

select pro_name, price from Product1
order by pro_name, price asc

select pro_name, price from Product1
order by pro_name, price

--6. display product details with alphabetical order of company name& price
select company, price from Product1
order by company, price asc

select company, price from Product1
order by company, price         

