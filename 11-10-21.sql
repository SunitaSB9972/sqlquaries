CREATE DATABASE employetable;
show databases;
use employetable;
select * from employetable;
CREATE DATABASE studentdetail;
show databases;
use studentdetail;
create table studentdetail_details(
id int,
name varchar(20),
gmailid varchar(30),
 DOB date,
 gender char,
 location varchar (50) );
 
 select * from studentdetail_details;
 describe studentdetail_details;
 show tables;
 alter table studentdetail_details add column salary decimal;
 alter table studentdetail_details add column usn int;
 
 alter table studentdetail_details drop column salary;
 
 alter table studentdetail_details add column salary decimal after DOB;
 
 alter table studentdetail_details modify column salary int;
 
alter table studentdetail_details rename to empdetails;
 
  select * from empdetails;
  
  insert into empdetails value (1, 'sunita', 'sunita@gmail.com ' , '1994-06-01' , 40000, 'f' ,'gadag', 1234);
  
  insert into empdetails value (2, 'vanita', 'vanita@gmail.com ' , '1995-02-10' , 50000, 'f' ,'bijAPUR', 1234);
  
 insert into empdetails value 
 (3, 'prayag', 'prayag@gmail.com ' , '2000-09-08' , 800000, 'm' ,'dharwad', 5678),
 (4, 'prithvi', 'prithvi@gmail.com ' , '1989-04-20' , 60000, 'm' ,'blore' , 1290),
  (5, 'darshan', 'darsh@gmail.com ' , '1994-05-22' , 70000, 'm' ,'hubli' , 2568),
   (6, 'kruthi', 'kruthi@gmail.com ' , '1995-04-27' , 100000, 'f' ,'haveri' , 9876);
   
create table trainers(
id int primary key,
name varchar(30) not null,
domain varchar(20) unique,
age int check(age >18),
yop float,
salary decimal default 20000
 );
  
  create database institutes;
   show databases;
  
 show tables;
 
   
   create database tainer;
    use tainer;
create table trainer1(
id int primary key,
name varchar(30) not null,
domain varchar(20) unique,
age int check(age >18),
yop float,
salary decimal default 20000
 );
 
 insert into trainer1 value (1, 'asha', 'corejava' , 30, 7.5 ,60000);
  
  insert into trainer1 value (2, 'niknj', 'web' , 23, 3.0,  30000);
  
 insert into trainer1 value 
 (3, 'omkar', 'framework' , 30, 9.0,  100000),
 (4, 'sharath', 'jdbc' , 28, 6.0,  70000),
  (5, 'vinay', 'sql', 27, 5.5, 65000),
   (6, 'akshara', 'hr' , 28, 7.9, 100000 );
   
   select * from trainer1;
   
   select * from trainer1 order by name;
   
   select * from trainer1 where salary > 40000;
   
   select * from trainer1 where salary > 40000  and age > 28;
   
   select * from trainer1 where salary = 60000 and age =30;
   
    select * from trainer1 order by salary desc;
    
   
 describe trainer1;
 
 select * from trainer1 where salary = 60000 or age =30;
 
 use trainer1;
 