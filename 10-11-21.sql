create database book_details;
use book_details;
create table book_detail(
book_id int,
book_name varchar(20),
author_name varchar(30),
book_price int,
 published_year INT,
 book_volume varchar (50) );
 

  
  select * from book_detail;
   insert into book_detail value (1, 'DBMS', 'Bagalur Swamy', 495, '2005' ,' Y3');
    
     insert into book_detail value (2, 'data structure', 'padma reddy', 595, '2017' ,' Y6'); 
     
    insert into book_detail value (3, 'algorithm', 'jeff', 600, '2010' ,' Y4');
    insert into book_detail value   (4, '400 days', 'chetan bhagath', 500, '2003' ,' Y1');
    insert into book_detail value (5, 'the jungle book', 'rudyand aiplrg', 800, '2011' ,' Y5');
    insert into book_detail value (6, 'hirarchy', 'bhagat', 500, '2006' ,' Y1');
    insert into book_detail value (7, 'wings fire', 'abdul kalam', 500, '2005' ,' Y3');
    insert into book_detail value (8, 'jcr', 'Bagalur Swamy', 795, '2005' ,'Y1');
    insert into book_detail value  (9, 'computer network', 'ramana', 1000, '2009' ,' Y1');
    insert into book_detail value (10, 'the fault star', 'jhon green', 1300, '2012' ,' Y2');
    
    select  * from book_detail;
    
    
    -- ----- ---
    SELECT COUNT(*) FROM Book_Details;
    
ALTER TABLE Book_Details ADD COLUMN No_Of_Pages INT;
ALTER TABLE Book_Details DROP COLUMN No_Of_Pages;
ALTER TABLE Book_Details ADD COLUMN No_Of_Pages INT AFTER Book_Name;
ALTER TABLE Book_Details change  Book_Price book_amount int ;
SHOW TABLES;
DESCRIBE book_details;
SELECT DISTINCT Book_Author FROM book_details;
TRUNCATE Books;
DROP TABLE books;
DROP DATABASE library;

USE library;
CREATE TABLE Book_Details (
	Book_id TINYINT,
    Book_Name VARCHAR(30) UNIQUE,
    Book_Author VARCHAR(30) NOT NULL,
    Book_Price FLOAT DEFAULT 500,
    Publish_Year  YEAR CHECK(Publish_Year > 2000),
    Volume CHAR(5),
    PRIMARY KEY(Book_id)
);
DESCRIBE Book_details;
INSERT INTO Book_Details VALUE(1, 'DBMS', 'Balaguru Swamy', 500.00,'2007', 'V2'),(2, 'Data Structure', 'Padma Reddy', 595.00,'2015', 'V3'),
								(3, 'My Journy', 'Abdul Kalam', 780.00,'2008', 'V1'),(4, 'The wings of Fire', 'Abdul Kalam', 600.00,'2009', 'V1'),
                                (5, 'Whispher of Time', 'Krishna Saksena', 1200.00,'2007', 'V7'),(6, 'Cheque book', 'Vasdev Mohi', 800.00,'2019', 'V6');
;
INSERT INTO Book_Details VALUE(7, 'The Testaments', 'Margaret Atwood', 650.00,'2017', 'V5'),(8, 'Making of New India', 'Dr. Bibek Debroy', 2000.00,'2013', 'V3'),
								(9, 'Indian Fiscal Federalism', 'Dr. Y.V. Reddy	', 850.00,'2012', 'V1'),(10, 'Darkness to light', 'Lamar Odom', 1200.00,'2012', 'V1');

INSERT INTO Book_Details(Book_Id, Book_Name, Book_Author, Publish_Year) VALUE(11,'Making of Legend', 'Bindeshwar Pathak','2016'),(12, 'Indian Cultures as Heritage', 'Romila Thapar','2020');
SELECT*FROM Book_Details;
SELECT * FROM Book_Details WHERE Volume IS NULL;
SELECT * FROM Book_Details WHERE Volume IS NOT NULL;
ALTER TABLE Book_Details MODIFY Book_Name VARCHAR(35) NOT NULL;
SELECT DISTINCT Book_Author FROM Book_Details;
UPDATE Book_Details SET Volume = 'V2' WHERE Book_Id = 4;
UPDATE Book_Details SET Volume = 'V9' WHERE Book_Id = 2;
ALTER TABLE book_details ADD COLUMN offer INT;
ALTER TABLE Book_Details DROP COLUMN offer;
DELETE FROM Book_Details WHERE Book_id = 1;

SELECT*FROM Book_Details ORDER BY Book_Price;
SELECT * FROM Book_Details ORDER BY Book_Price DESC;

SELECT * FROM Book_Details LIMIT 8;
SELECT * FROM Book_Details ORDER BY Book_Id DESC LIMIT 6;

-- --- --------------------------------------
    
    update book_detail set book_volume = 'v1' where book_id = 6;
    
        select  * from book_detail where book_name like '%book%';
        
        select  * from book_detail where book_name like '%a';
        
        
        select  * from book_detail where book_name like 'a%';
        
        select  * from book_detail where book_name like '_a%';
        
        select  * from book_detail where book_name like '%a%';
        
        select  * from book_detail where book_name like '____a%';
        
        select  * from book_detail where book_name like '___a%';
    
    select  * from book_detail where book_name like '_a_a%';
    
    select CURDATE() as present_date;
    
     select CURtime() as present_time;
     
     select date ('2021-11-11 03:44:02') as extracted_date;
     
     select date (now()) as extracted_date;
     
     select time (now()) as extracted_time;
     
      select time ('2021-11-11 03:44:02') as extracted_time;
    
     select now() as present_time_date;
     
      select dayofmonth ('2021-11-11 03:44:02') as extracted_day;
      
      select dayofmonth ('2021-11-11 03:44:02') as extracted_day;
      
      select month ('2021-11-11 03:44:02') as extracted_month;
      
      select year ('2021-11-11 03:44:02') as extracted_year;
     
     select week('2021-11-11 03:44:02') as extracted_week;
     
     select dayname ('2021-11-11 03:44:02') as extracted_day_name;
    
    
    select max(book_price) from book_detail;
    
     select min(book_price) from book_detail;
     
      select avg(book_price) from book_detail;
      
       select sum(book_price) from book_detail;
       
       select count(book_price) from book_detail;
       
       select count(book_id) from book_detail;
    
   
    select count(*) as no_of_books from book_detail;
    
	select count(book_name) from book_detail group by author_name;
     
	select author_name,count(book_name) from book_detail group by author_name;
    
    select author_name,count(book_name) as no_of_books_written_by_author from book_detail group by author_name;
    
    select book_price,count(book_price) as no_of_books_in_price from book_detail group by book_price;
    
	select book_price,count(*) as no_of_books_in_price from book_detail group by book_price;
    
	select published_year,count(*) as no_of_books_published_inyear from book_detail group by published_year;
    
    select published_year,count(*) as no_of_books_published_inyear from book_detail group by published_year;
    
    select published_year,count(published_year) as no_of_books_published_inyear from book_detail  where published_year >2006 group by published_year;
    
    -- get the number of copies of each book from book_detail
    
    select book_name , count(book_name)  as no_of_copies from book_detail group by book_name;
    
    
    -- get the highest cost of the book published_in_each_year
    
    select published_year, max(book_price) as highest_cost_of_book from book_detail group by published_year;
    
    
    -- get the lowest cost of the book published_in_each_year
    
    select published_year, min(book_price) as lowest_cost_of_book from book_detail group by published_year;
    
    -- 
    
    select published_year, book_name, min(book_price) as lowest_cost_of_book from book_detail group by published_year, book_name;
    
    -- get the no of books written by each authour in each year from book detail table
    
    select author_name, published_year, count(book_name) as no_of_books_each_year_each_author from book_detail group by author_name, published_year;
    
    -- get the lowest and highest cost of the book published_in_each_year
        
    select published_year, min(book_price) as lowest_cost_of_book, max(book_price) as highest_cost_of_book from book_detail group by published_year;
    
    -- get the total sum of the book price in each year from book detail table
    
     select published_year, sum(book_price) as total_sum_of_book from book_detail group by published_year;
    
    -- get the total sum of the book price in each year and sort year in ascending order from book detail table
    
     select published_year, sum(book_price) as total_sum_of_book from book_detail group by published_year  order by published_year;
    
      -- get the total sum of the book price in each year from book detail table which sum is having more thann 2000
   
   select published_year, sum(book_price) as total_sum_of_bookinyear from book_detail group by published_year having total_sum_of_bookinyear>2000;
   
   -- get the books by volume from book detail table which volume having more than 2
    
    select book_volume, count(book_name)  as no_of_books_in_volume from book_detail group by book_volume having book_volume>2;
    
    -- get the lowest cost of the book by each author having cost less than 1000 from book_detail
    
    select author_name, min(book_price) as lowest_cost_of_book_byauthor from book_detail group by author_name having lowest_cost_of_book_byauthor<1000;
    
    -- get the details of the book where highest cost
    
    -- nested query/sub queries
    
    select * from book_detail where book_price = (select max(book_price) from book_detail );
    
     -- get the details of 2nd highest cost  of the book from book_detail table
     
	select * from book_detail where book_price=(select max(book_price) as 2nd_highest_cost from book_detail where book_price <(select max(book_price) from book_detail ));
       
        -- get the  2nd highest cost  of the book from book_detail table
       
	select max(book_price) as 2nd_highest_cost from book_detail where book_price <(select max(book_price) from book_detail );
    
     -- get the  3rd highest cost  of the book from book_detail table
    
      select max(book_price) as 3rd_highest_cost from book_detail where book_price < 
      (select max(book_price) as 2nd_highest_cost from book_detail where book_price <
      (select max(book_price) from book_detail ));
      
      -- get the details of 3rd highest cost  of the book from book_detail table
      
       select * from book_detail where book_price =
	  (select max(book_price) as 3rd_highest_cost from book_detail where book_price < 
      (select max(book_price) as 2nd_highest_cost from book_detail where book_price <
      (select max(book_price) from book_detail )));
    
    -- get the details of OF HIGHEST AND 2nd highest cost  of the book from book_detail table
    
     select * from book_detail where book_price in ((select max(book_price) from book_detail ), 
     (select max(book_price) as 2nd_highest_cost from book_detail where book_price <(select max(book_price) from book_detail )));
    
    -- get the details of OF book which has cost  higher than average price of the book from book_detail table
    
    select avg(book_price) from book_detail;
    
    select book_price from book_detail where book_price >(select avg(book_price) from book_detail );
        
    
    select * from book_detail where book_price in (select book_price from book_detail where book_price >(select avg(book_price) from book_detail ));
    
    
    -- get the details of OF book by book name which has published year greater than 2000
    
select published_year from book_detail where published_year>2000;

select book_name from book_detail where published_year in (select published_year from book_detail where published_year>2000);

select * from book_detail where book_name in
 (select book_name from book_detail where published_year in 
(select published_year from book_detail where published_year>2000));
    
   
   
   
   SET AUTOCOMMIT=0;

DELETE FROM book_detail WHERE book_id=8;
ROLLBACK;
DELETE FROM book_detail WHERE book_id=7;
SAVEPOINT T1;
DELETE FROM Books_details WHERE BOOK_id=8;
SAVEPOINT T2;
ROLLBACK;

CREATE TABLE Books_Details (
Book_id TINYINT PRIMARY KEY,
Book_Name VARCHAR(30),
Book_Author VARCHAR(20),
Book_Price FLOAT,
Publication_Year YEAR,
Book_Volume CHAR(10)
);

select * from Books_Details;


insert into Books_Details select * from Books_Details where Book_id in (select Book_id from Books_Details);


    -- dcl -- data control language
    
    select user, host  from mysql.user; 
    
    create user 'TempUser2'@'localhost';
    
    -- grant means giving permission for particular table or user
    
    show grants for 'TempUser2'@'localhost';
    
    -- syntax for grant is: grant list_of_permission ON table_name TO user;
    
    grant select, update on book_detail to 'TempUser2'@'localhost';
    
    -- giving ALL permissions
    
    grant USAGE on book_detail to 'TempUser2'@'localhost';
    
    -- how to take back permission given frm user or avioding to give permissions or restrict the data
    
         -- syntax for revoke is: revoke list_of_permission ON table_name FROM user;
         
revoke create , delete on book_detail from 'TempUser2'@'localhost';

-- creating relation between tables

-- foriegn key

create database peachMode;

use peachMode;

create table customer(
cust_id  int ,
cust_name varchar(30) not null,
cust_mob bigint unique,
cust_email varchar (40) unique,
cust_addr varchar(50),
primary key(cust_id)
);

insert into customer value (11, 'sunita', 9387234511 ,'meghanqa@gmail.com', 'sagara'),
(02, 'rakshita', 9817263543 ,'rakshita@gmail.com', 'bihar'),(03, 'rakhi', 7918723451 ,'raakhi@gmail.com', 'bellary'),
(04, 'neha', 8187234511 ,'neha@gmail.com', 'bengalore'),(05, 'rehana', 9918723451 ,'rehana@gmail.com', 'hubli'),
(06, 'krishna', 9658723451 ,'krishna@gmail.com', 'shivamoga'),(07, 'bhavya', 9787234511 ,'bhavya@gmail.com', 'gadag'),
(08, 'kavya', 9087234511 ,'kavya@gmail.com', 'mysore'),(09, 'darshaN', 8887234511 ,'DARSHAN@gmail.com', 'dharwad'),
(010, 'akshata', 9787234515 ,'akshata@gmail.com', 'bijapur');

create database orders1;
   create table orders(
   order_id int,
   product_name varchar(40) not null,
   order_amount decimal check(order_amount>100),
   order_datetime datetime,
   cust_ref int,
   primary key (order_id),
   foreign key(cust_ref) references customer(cust_id));
   
   use orders1;
   
insert into orders value( 100, 'iphone' , 60000.00, '2021-11-16', 1 );
   
   select * from orders;
 
insert into orders value( 108, 'iphone' , 60000.00, '2021-11-16', 9 ),
( 101, 'oneplus' , 62000.00, '2021-11-15 35:00', 4 ),
( 102, 'watch' , 40000.00, '2021-11-14 24:00', 3 ),
( 103, 'redmi' , 50000.00, '2021-11-13 12:00', 4 ),
( 104, 'headset' , 70000.00, '2021-11-12 16:00', 5 ),
( 105, 'shirts' , 6000.00, '2021-11-11 05:00', 6),
( 106, 'laptop' , 55000.00, '2021-11-10', 5 ),
( 107, 'dress' , 3000.00, '2021-11-09', 8);

insert into orders (order_id, product_name, order_datetime, order_amount) value(109, 'camera', '2021-11-08 12:00', 45000);

select * from customer where cust_id=1;  

-- join conditions
-- combining 2 or more tablea togeather 
-- types of jions 1: innerjion, 2: left jion , 3: right jion, 4: full jion , 5: cross jion

-- inner jion : matching 

select O.order_id, O.product_name, O.order_amount, C.cust_id, C.cust_name, C.cust_email from customer C INNER JOIN orders O ON O.cust_ref = C.cust_id;

SELECT * FROM customer C INNER JOIN orders O ON O.cust_ref = C.cust_id;


-- left jion 

	SELECT * FROM customer C LEFT JOIN orders O ON O.cust_ref = C.cust_id;
  
-- right jion

    SELECT * FROM customer C RIGHT JOIN orders O ON O.cust_ref = C.cust_id;
    
-- full jion: using union all or union we cant use full jion keyword-- combination of left and right jion

SELECT * FROM customer C LEFT JOIN orders O ON O.cust_ref = C.cust_id

union all

SELECT * FROM customer C RIGHT JOIN orders O ON O.cust_ref = C.cust_id;
    
-- cross jion

create database offers;

use offers;

create table offer(
offer_id int ,
offer_name varchar (40),
offer_perchantage decimal check(offer_perchantage<50),
offer_ratings int,
order_ref int ,
primary key (offer_id),
foreign key(order_ref) references orders (order_id));
  
insert into offer value(1, 'end_of_yearSALE' , 35.50 , 4 , 3);

select * from offer;

select * from orders cross join offer;

-- view __ its a virtual table---- not original

create view sunita_customer as select * from customer where cust_name like 'sunita%' ;
         
 select * from  sunita_customer;  
  
  select * from  sunita_customer where cust_addr = 'sagara' ;  
  
  alter view sunita_customer as select * from customer where cust_addr = 'gadagron' ;
         
  create view   offer_given as select * from orders cross join offer;
  
  select * from  offer_given;  
  
   select * from  offer_given where order_amount>60000; 
   
   drop view offer_given;  
  
  
    
    