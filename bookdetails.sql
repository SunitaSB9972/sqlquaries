CREATE DATABASE liberary;
USE liberary;
CREATE TABLE Books_Details(
Book_Id TINYINT,
Book_Name VARCHAR(20),
Author_Name VARCHAR(30),
Book_Price FLOAT,
Publish_Year YEAR,
Book_Volume CHAR(10)
);
SHOW TABLES;
SELECT *FROM books_details;
describe books_details;

-- ways to insert
INSERT into books_details VALUE(1,'DBMS','Balguru Swammy',345.45,'1999',"V6");
INSERT into books_details VALUE(2,'Data Structure','Padma Reddy',500.00,'1995',"V3"),(3,'Algorithm','Jeff',400.00,'2010',"V4"),(4,'The Jungle Book','Rudyard Aipling',600.50,'2000',"V1");
INSERT into books_details VALUE(1,'DBMS','Balguru Swammy',245.45,'1999',"V1");

-- second way to insert

insert into books_details(Book_Id,Book_Name,Author_Name,Book_Price,Publish_Year)value(4,'c','Chethan Bhagat',456.90,'1999');
insert into books_details(Book_Id,Book_Name,Book_Price,Publish_Year)value(5,'Hierarchy',656.90,'1908');

select Book_Id,Book_Name,Author_Name from books_details;

select *from books_details where Publish_Year='1999';
select *from books_details where Publish_Year='1908';
select *from books_details where Publish_Year>='2005';
select *from books_details where Publish_Year>='1999' and Book_Price<=400;

-- alter tables
alter table books_details add column no_of_pages int;
select * from books_details;
-- SELECT * FROM liberary.books_details;
alter table books_details add column num_Of_pages int after Book_Name;
alter table books_details drop column no_of_pages;
alter table books_details drop column num_Of_pages;
alter table books_details rename column Book_Price to Book_Amount;
alter table books_details rename to books;

select * from books;
truncate books;
drop table books_details;
drop database liberary;

-- order by
select * from books_details order by Book_Price;
select *from books_details;
select * from books_details order by Book_Volume;
select * from books_details order by Book_Price desc;
select * from books_details order by Book_Name;
select * from books_details order by Book_Name desc;

select * from books_details limit 4;
select * from books_details order by Book_Id asc limit 4;
select * from books_details order by Book_Id desc limit 3;

select * from books_details where Book_Name='The Jungle Book' or Book_Name='Hierarchy';
select * from books_details where Book_Name in('The jungle book','c','DBMS');
select * from books_details where Book_Id in(1,3,5) order by Book_Id asc limit 5;
select * from books_details where Book_Price between 500 and 1000;
select * from books_details where Book_Price between 100 and 500 order by Publish_Year;

-- as
select book_price as book_with_amount_greater_than_500 from books_details where book_price>500;
select B.book_price as book_amount from books_details B;
select book_price from books_details;