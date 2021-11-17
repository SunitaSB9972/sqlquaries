create database library;
use library;
create table book_details(
          Book_id tinyint,
          Book_name varchar(20) unique,
          Author_name varchar(30) not null,
          Book_price float default 500 ,
          Publish_year year,
          Book_volume char(10)
);
show tables;
select*from book_details;
insert into book_details value (1,'DBMS','Balguru swamy',495.00,'2005','v3'),
 (2,'Data Structure','Padma Reddy',595.00,'2009','v5'),
 (3,'Algorithm','jeff',600.00,'2010','v4');
 insert into book_details value (5,'The Jungle Book','Rudyard Aiping',800.00,'2011','v5'),
                               (6,'Heirarchy','Bhagat',500.00,'2003','v3'),
                               (7,'Wings of fire','Abdul Kalam',500.00,'2005','v6'),
                               (8,'jCR','Balguru Swamy',795,'2005','v1'),
                               (9,'CN','Raman',1000,'2009','v1'),
                               (10,'The fault Stars','John Green',1020,'2012','v2');
						
 insert into book_details (Book_id,Book_name,Author_name,Book_price,Publish_year,Book_volume) value (4,'400 days','chetan bhagat',400.00,'2019','v5');
 select Book_id,Book_name,Author_name from book_details;
 select*from book_details where Publish_year = '2005';
 select*from book_details where Publish_year >='2005';
 select*from book_details where Publish_year >='2005' OR Book_price >=500;
 select*from book_details where Publish_year >='2005' and Book_price <=500;
 select*from book_details where Publish_year >='2005' and Author_name = 'Balguru swamy' and Book_price <=500;
 
 alter table book_details add column No_of_pages int;
 alter table book_details add column No_of_page int after Book_name;
 alter table book_details add column No_of_pages int before Book_price;
 alter table book_details drop column No_of_pages;
 alter table book_details rename column Book_price to Book_amount;
 alter table book_details modify Book_name varchar(35);
 alter table book_details add constraint primary key(Book_name);
 alter table book_details drop constraint 
 alter table book_details drop column No_of_pages;
 
 truncate book_details;
 drop table book_details;
 drop database library;
 
 describe book_details;
 
 select*from book_details where Book_volume is null;
 select*from book_detaills where Book_volume is not null;
 select Author_name from book_details;
 select distinct Author_name from book_details;
 select distinct Author_name,Publish_year from book_details;
 
 delete from book_details;
 delete from book_details where Book_id =1;
 delete from book_details where Book_id = 2 and Book_name = 'DBMS';
 
 update book_details set Book_price  = 1300 where Book_id = 2;
 update book_details set Book_price =1400 where Book_id=10;
 update booK_details set Author_name='Balguru Swamy' where Book_id=2;
 update book_details set Book_volume='v5' where Book_id=2;
 
 select*from book_details order by Book_price;
 select*from book_details order by Book_price desc;
 select*from book_details order by Book_name;
 select*from book_details order by Book_name desc;
 
 select*from book_details limit 10;
 select*from book_details limit 5; 
 select*from book_details order by Book_id desc limit 5;
 
 select*from book_details where Book_name in ('DBMS','Data structure');
 select*from book_details where Book_price in(500,549);
 select*from book_details where Book_name='Data structure' or Book_name='DBMS';
 
 select*from book_details where Book_pruce between 400 and 500;
 select*from book_details where Pulish_year between '2005' and '2010' order by Publish_year;
 
 select Book_price as Book_amount where Book_amount >400;
 select Book_price as Book_with_amount_greater_than_400 from book_details where Book_price;
 
 select*from book_details where Book_name like '%stars'; 
 select*from book_details where Book_name like 'the%';
 select*from book_details where Book_name like '%Jungle';
 select*from book_details where Book_name like 'T%';
 select*from book_details where Book_name like '_a_a%';
 
 select curdate();
 select curdate() as Present_date;
 select curtime() as Present_time;
 select now() as Present_datetime;
 select date('2010-11-11 10:56:01') as Extracted_date;
 select date(now()) as Extracted_date;
 select time('2010-11-11 10:56:01') as Extracted_time;
 select time(now()) as Extracted_time;
 select dayofmonth('2010-11-11 10:56:01') as Extracted_day;
 select month('2010-11-11 10:56:01') as Extracted_month;
 select year('2010-11-11 10:56:01') as Extracted_year;
 select week('2010-11-11 10:56:01') as Extracted_week;
 select dayname('2010-11-11 10:56:01') as Extracted_week;
 
 select*from book_details;
 select*from book_details where Book_price=1800;
 
 select max(Book_price) from book_details;
 select min(Book_price) from book_details;
 select max(Book_price) as Highest_cost_of_book from book_details;
 select min(Book_price) as lowest_cost_of_book from book_details; 
 select avg(Book_price) as average_cost_of_book from book_details;
 select sum(Book_price) as Total_cost_of_book from book_details;
 select count(Book_id) as Total_NO_of_book from book_details;
 select count(*) as Total_NO_of_book from book_details; 
 
 -- get the No of books Written by each author from book_details table
 select Author_name,count(Book_name) from book_details group by Author_name;
 select Author_name,count(Book_name) as No_of_Books_WrittenBy_Author from book_details group by Author_name;
 
 -- get the No of Books by each price from book_details
 select Book_price,count(Book_price) as No_of_Books_in_price from book_details group by Book_price;
 
  -- get the No of Books published in each year from book_details
 select Publish_year,count(Book_name) as No_Of_Books_in_year from book_details group by Publish_year;
  
  -- get the No of Books published in each year after 2005 from book_details 
  select Publish_year,count(Book_name) as No_Of_Books_in_year from book_details where Publish_year>2005  group by Publish_year;
  
  
  
  
  
  
  -- ROLLBACK can only be used with DML commands(INSERT,UPDATE,DELETE)
SET AUTOCOMMIT=0;
DELETE FROM Books_details WHERE BOOK_id=8;
ROLLBACK;
DELETE FROM Books_details WHERE BOOK_id=7;
SAVEPOINT T1;
DELETE FROM Books_details WHERE BOOK_id=8;
SAVEPOINT T2;
ROLLBACK;
