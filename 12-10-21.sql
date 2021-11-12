create database tainer2;
create table trainer1(
id int primary key,
name varchar(30) not null,
domain varchar(20) unique,
age int check(age >18),
yop float,
salary decimal default 20000
 );
  
create database order;
use order;
 
 create table orders(
 order_id int primary key,
 order_date date not null,
 order_amount decimal check(order_amount>100),
 customer_ref int);
 
 create database custorder;
 
 use custorder;
 
