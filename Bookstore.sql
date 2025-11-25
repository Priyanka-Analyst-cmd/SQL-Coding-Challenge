create database bookstore;
use bookstore;

-- create table 1
create table books (
book_id int primary key,
title varchar(20) not null,
Author varchar(30) not null,
ISBN varchar(50) unique,
price decimal(8.2), check(price>0)
);

-- create table 2
create table orders (
order_id int primary key,
book_id int,
order_date date not null,
Quantity int check(quantity>0),
foreign key (Book_id) references books (book_id)
);

-- Alter table 
alter table books
add constraint uq_isbn unique (ISBN);

-- Insert table from books 
insert into books(book_id,title,author,ISBN,price) values 
(1,'Gitanjali', 'RabindranathTagore', '978-0333422175',95),
(2,'SwamiandFriends','R.K.Narayan','978-1604594614',80),
(3,'TheGodofSmallThings','ArundhatiRoy','978-2824903477',90),
(4,'ASuitableBoy','VikramSeth','978-3849532314',70),
(5,'TheGreatIndianNovel', 'ShashiTharoor', '978-3861842064',85);

-- Retrive
select *from books;

-- Insert table orders
insert into orders(order_id,book_id,order_date,quantity)values
(101,1,'2025-11-01',5),
(102,2,'2025-11-02',3),
(103,3,'2025-11-03',7),
(104,4,'2025-11-07',2),
(105,5,'2025-11-09',4);

-- update
update books set price = 75.50 where book_id=4;
update orders set quantity=6 where order_id=102;

select *from books;
select *from orders;

-- drop table 
delete from orders where order_id=103;
truncate table orders;

 



 