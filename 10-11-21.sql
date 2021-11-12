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
    
    
    
    