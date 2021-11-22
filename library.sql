CREATE DATABASE library;

USE library;

CREATE TABLE Book_Details (
	Book_id TINYINT,
    Book_Name VARCHAR(30),
    Book_Author VARCHAR(30),
    Book_Price FLOAT,
    Publish_Year  YEAR,
    Volume CHAR(5)
);


DESCRIBE Book_details;

INSERT INTO Book_Details VALUE(1, 'DBMS', 'Balaguru Swamy', 500.00,'2007', 'V2'),(2, 'Data Structure', 'Padma Reddy', 595.00,'2015', 'V3'),
								(3, 'My Journy', 'Abdul Kalam', 780.00,'2008', 'V1'),(4, 'The wings of Fire', 'Abdul Kalam', 600.00,'2009', 'V1'),
                                (5, 'Whispher of Time', 'Krishna Saksena', 1200.00,'2007', 'V7'),(6, 'Cheque book', 'Vasdev Mohi', 800.00,'2019', 'V6');
;

SELECT Book_Name FROM Book_Details WHERE Publish_Year >= "2015";

SELECT * FROM Book_Details WHERE Book_Id = 1;

SELECT COUNT(*) FROM Book_Details;

ALTER TABLE Book_Details ADD COLUMN No_Of_Pages INT;

ALTER TABLE Book_Details DROP COLUMN No_Of_Pages;

ALTER TABLE Book_Details ADD COLUMN No_Of_Pages INT AFTER Book_Name;

ALTER TABLE Book_Details RENAME COLUMN Book_Price to Book_Amount;

ALTER TABLE Book_Details RENAME TO Books;

SELECT * FROM Books;

TRUNCATE Books;

DROP TABLE books;

DROP DATABASE library;

USE library;

CREATE TABLE Book_Details (
	Book_id TINYINT,
    Book_Name VARCHAR(30) UNIQUE,
    Book_Author VARCHAR(30) NOT NULL,
    Book_Price FLOAT DEFAULT(500),
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

SELECT * FROM Book_Details WHERE Volume IS NULL;

SELECT * FROM Book_Details WHERE Volume IS NOT NULL;

ALTER TABLE Book_Details MODIFY Book_Name VARCHAR(35) NOT NULL;

SELECT DISTINCT Book_Author FROM Book_Details;

UPDATE Book_Details SET Volume = 'V2' WHERE Book_Id = 4;

UPDATE Book_Details SET Volume = 'V9' WHERE Book_Id = 2;

DELETE FROM Book_Details WHERE Book_id = 1;

SELECT * FROM Book_Details;

SELECT * FROM Book_Details ORDER BY Book_Price;

SELECT * FROM Book_Details ORDER BY Book_Price DESC;

SELECT * FROM Book_Details LIMIT 8;

SELECT * FROM Book_Details ORDER BY Book_Id DESC LIMIT 6;

SELECT * FROM Book_Details WHERE Book_Name IN('My Journy', 'The wings of Fire', 'Making of Legend');

SELECT * FROM Book_Details WHERE Book_Price BETWEEN 500 AND 1000;

SELECT Book_Price AS Book_Amount FROM Book_DetaiLs WHERE Book_Price > 1000;

SELECT * FROM Book_Details WHERE Book_Name LIKE '%Fire';

SELECT * FROM Book_Details WHERE Book_Name LIKE 'THE%';

SELECT * FROM Book_Details WHERE Book_Name LIKE '%of%';

SELECT * FROM Book_Details WHERE Book_Name LIKE '_h%';

SELECT * FROM Book_Details WHERE Book_Name LIKE '_a_a%';

SELECT CURDATE(); 

SELECT CURTIME(); 

SELECT NOW(); 

SELECT DATE(NOW()); 

SELECT TIME(NOW()); 

SELECT DAYOFMONTH(NOW()); 

SELECT MONTH(NOW());

SELECT YEAR(NOW());

SELECT WEEK(NOW()); 

SELECT DAYNAME(NOW()); 

SELECT DAYOFWEEK(NOW()); 

SELECT DAYOFYEAR(NOW());

SELECT MAX(Book_Price) AS maximum FROM Book_Details; 

SELECT MIN(Book_Price) AS Minumum FROM Book_Details; 

SELECT AVG(Book_Price) AS average FROM Book_Details;

SELECT SUM(Book_price) AS Total FROM Book_Details; 

SELECT COUNT(*) AS Total_count FROM Book_Details;

select count(*) as ID from Book_Details;

select time('2021-11-13 09:30:56') as Extracted_Year;

select  week('2021-11-13 09:30:56') as Extracted_Week;

SELECT Book_Author, COUNT(Book_Name) AS Count_Book_Author FROM Book_details GROUP BY Book_Author;

SELECT Book_Name, COUNT(Book_Price) AS Count_Book_Price FROM Book_Details GROUP BY Book_Price;

SELECT Publish_Year, COUNT(Book_Name) AS count_book_name, Book_Name FROM Book_Details WHERE Publish_Year > 2005 GROUP BY Publish_Year;

SET AUTOCOMMIT = 0;
SELECT * 
FROM book_details;

DELETE FROM book_details
WHERE Book_id = 7;

ROLLBACK;

SELECT MAX(Book_Price) 
FROM book_details;

-- GET THE DETAILS OF THE BOOK WHICH HIGHEST COST

-- main query or outer query
SELECT *
FROM book_details	-- inner query
WHERE Book_Price = (SELECT MAX(Book_Price) FROM book_details);

-- Get the second highest cost of the book from the book_details table

SELECT MAX(Book_Price) AS Second_Highest_Cost_of_The_Book
FROM book_details
WHERE Book_Price < (SELECT MAX(Book_Price) FROM book_details);

-- GET THE DETAILS OF THE BOOK WHICH SECOND HIGHEST COST

SELECT *
FROM book_details
WHERE Book_Price =
 (SELECT MAX(Book_Price) AS Second_Highest_Cost_of_The_Book
 FROM book_details
 WHERE Book_Price < 
 (SELECT MAX(Book_Price)
 FROM book_details));
 
 -- to get the third hishest cost of the book_price from book_details table
 
 SELECT MAX(Book_price) AS Third_Highest_Cost_Of_Book_Price
 FROM book_details
 WHERE Book_Price < (SELECT MAX(Book_Price) AS Second_Highest_Cost_of_The_Book
 FROM book_details
 WHERE Book_Price < 
 (SELECT MAX(Book_Price)
 FROM book_details));

 -- to get details of the third hishest cost of the book_price from book_details table

SELECT *
FROM book_details
WHERE Book_Price = 
(SELECT MAX(Book_price) AS Third_Highest_Cost_Of_Book_Price
 FROM book_details
 WHERE Book_Price < (SELECT MAX(Book_Price) AS Second_Highest_Cost_of_The_Book
 FROM book_details
 WHERE Book_Price < 
 (SELECT MAX(Book_Price)
 FROM book_details)));
 
 -- get the details of the book which has a highest cost and second highest cost
 
SELECT *
FROM book_details
WHERE Book_Price 
 IN((SELECT MAX(Book_Price) AS Second_Highest_Cost_of_The_Book
 FROM book_details
 WHERE Book_Price < 
 (SELECT MAX(Book_Price)
 FROM book_details)),( 
 (SELECT MAX(Book_Price)
 FROM book_details)));
 
 SELECT * 
 FROM book_details
 WHERE Book_Price IN(2000,1200);
 
 -- GET THE DETAILS OF THE BOOKS SO WHICH HAS COST HIGHER THEN AVERAGE COST
 
 SELECT AVG(Book_Price)
 FROM book_details;
 
 SELECT *
 FROM book_details
 WHERE Book_Price >=
 (SELECT AVG(Book_Price)
 FROM book_details);
 
 -- OR
 
 SELECT Book_Price
 FROM book_details
 WHERE Book_Price > ( SELECT AVG(Book_Price)
 FROM book_details);
 
 SELECT * 
 FROM book_details
 WHERE Book_Price
 IN(SELECT Book_Price
 FROM book_details
 WHERE Book_Price > ( SELECT AVG(Book_Price)
 FROM book_details));
 
 -- TO GET THE DETAILS OF THE OOK NAME WHCIH HAS PUSLISH YEAR GRETAER THAN 2005
 
 SELECT Book_Name
 FROM book_details
 WHERE Publish_Year > '2005';
 
 SELECT *
 FROM book_details
 WHERE Book_Name 
 IN(SELECT Book_Name
 FROM book_details
 WHERE Publish_Year > '2005');
 
 -- OR
 
 SELECT *
 FROM book_details
 WHERE Book_Name
 IN(SELECT Book_Name
 FROM book_details
 GROUP BY Publish_Year
 HAVING Publish_Year >= 2005);
 
 
DELETE FROM book_details
WHERE Book_Name = (SELECT Book_Name
				FROM Books);

CREATE TABLE Books (
	Book_id TINYINT,
    Book_Name VARCHAR(30),
    Book_Author VARCHAR(30),
    Book_Price FLOAT,
    Publish_Year  YEAR,
    Volume CHAR(5)
);

SELECT *
FROM books;

INSERT INTO books
SELECT *
FROM book_details
WHERE Book_id IN(SELECT Book_id
FROM book_details);

UPDATE book_details
SET Book_Price = Book_Price + 100
WHERE Book_Name
IN(SELECT Book_name
FROM Books);

DELETE 
FROM book_details
WHERE Book_id
IN(SELECT Book_id 
FROM books
WHERE Book_id < 8);

SELECT *
FROM book_details;

SELECT USER,HOST FROM mysql.user; -- to see the users and host

-- creating a user 

CREATE USER 'TempUser'@'localhost';

SHOW GRANTS FOR 'TempUser'@'localhost';

GRANT SELECT,UPDATE ON book_details TO 'TempUser'@'localhost';

GRANT USAGE ON *.* TO `TempUser`@`localhost`; -- grants all the permission

GRANT ALL ON book_details TO `TempUser`@`localhost`;

REVOKE CREATE,DELETE ON book_details FROM 'TempUser'@'localhost';





CREATE DATABASE limeroad;

USE limeroad;

CREATE TABLE customer_details(
customer_id INT,
customer_Name VARCHAR(30) NOT NULL,
customer_Email VARCHAR(40) UNIQUE,
customer_Phone BIGINT UNIQUE,
customer_Address VARCHAR(50),
PRIMARY KEY(customer_id)
);

DESCRIBE customer_details;

INSERT INTO customer_details
VALUE(1, 'Akshay', 'akshay@gmail.com', 9876543219, 'Bagalkot'),(2, 'Akash', 'akash@gmail.com', 9876541256, 'Vijaypur'),(3, 'Prasanna', 'prasanna@gmail.com', 7755543219, 'Hubli'),
(4, 'prateek', 'prateek@gmail.com', 9745862456, 'Belgavi'),(5, 'Manoj', 'manoj@gmail.com', 7456845785, 'Assan'),
(6, 'Megharaj', 'megharaj@gmail.com', 8654412256, 'Dharwad'),(7, 'Krishna', 'krishna@gmail.com', 755466985, 'shivmoga'),
(8, 'Akshay', 'kavya@gmail.com', 6695874525, 'Raichur'),(9, 'Anup', 'anup@gmail.com', 7554526659, 'Bangalore'),
(10, 'Rohan', 'rohan@gmail.com', 9888566984, 'Mysore');

SELECT * 
FROM customer_details;

CREATE TABLE orders(
order_id INT,
product_Name VARCHAR(30) NOT NULL,
order_Amount DECIMAL CHECK(order_Amount > 100),
order_DateTime DATETIME,
customer_ref INT,
PRIMARY KEY(order_id),
FOREIGN KEY(customer_ref) REFERENCES customer_details(customer_id)
);

DESCRIBE orders;

SELECT *
FROM orders;

INSERT INTO orders
VALUE(100,'Headphone', 1200.00,'2021-11-10 10:00:00',1);

INSERT INTO orders
VALUE(101,'Sony Speakers', 5000.00,'2021-11-12 02:00:00',2);

INSERT INTO orders
VALUE(102,'Ipad', 80000.00,'2021-11-12 11:00:00',3),
		(103,'MI TV', 15000.00,'2021-11-15 09:00:00',4),
        (104,'Watch', 5500.00,'2021-11-10 10:30:00',5),
        (105,'Charger', 1600.00,'2021-11-11 20:00:00',6),
        (106,'"Mouse"', 999.00,'2021-11-16 21:00:00',7),
        (107,'LED Buld', 599.00,'2021-11-15 22:00:00',8),
        (108,'RGB Light', 1999.00,'2021-11-10 23:00:00',9),
        (109,'Sweat Shirt', 899.00,'2021-11-13 01:00:00',10),
        (110,'Extension Box', 190.00,'2021-11-12 01:30:00',9),
        (111,'Jean Pants', 1500.00,'2021-11-14 15:10:00',10);
        
UPDATE orders SET customer_ref = 4 WHERE order_id = 107;

INSERT INTO orders(order_id,product_Name,order_Amount,order_DateTime)
VALUE(112,'Sony Speakers', 5000.00,'2021-11-12 02:00:00');

SELECT *
FROM customer_details 
WHERE customer_id = 1;

SELECT O.order_id, O.product_Name, O.order_amount, O.customer_ref, C.customer_id,C.customer_Name, C.customer_Email
FROM customer_details C INNER JOIN orders O
ON O.customer_ref = C.customer_id;

-- Get all the custome details from customer table and get only matching order details

SELECT * FROM customer_details C LEFT JOIN orders O
ON O.customer_ref = C.customer_id;

SELECT * FROM customer_details C RIGHT JOIN orders O
ON O.customer_ref = C.customer_id;

-- FULL JOIN

SELECT * FROM customer_details C LEFT JOIN orders O
ON O.customer_ref = C.customer_id 
UNION ALL
SELECT * FROM customer_details C RIGHT JOIN orders O
ON O.customer_ref = C.customer_id;


CREATE TABLE offers(
offer_id INT,
offer_Name VARCHAR(20) NOT NULL,
offer_Percentage DECIMAL CHECK (offer_Percentage<50),
offer_ratings INT,
offer_ref INT,
PRIMARY KEY(offer_id),
FOREIGN KEY(offer_ref) REFERENCES orders(order_id)
);

INSERT INTO offers(offer_id, offer_Name, offer_Percentage, offer_ratings)
VALUE(1, 'Diwali Offer', 15, 5);

SELECT *
FROM offers;

-- CROSS JOINING THE OFFERS AND ORDERS
SELECT *
FROM orders
CROSS JOIN offers;

-- VIEW

CREATE VIEW speaker_orders AS
SELECT *
FROM orders
WHERE product_Name
LIKE 'Sony Speakers';

SELECT *
FROM speaker_orders;

SELECT *
FROM speaker_orders
WHERE order_id = 101;

ALTER VIEW speaker_orders
AS SELECT *
FROM orders
WHERE product_Name = 'Sony Speakers';

CREATE VIEW offers_given
AS SELECT * 
FROM orders
CROSS JOIN offers;

SELECT *
FROM offers_given;

SELECT *
FROM offers_given
WHERE order_Amount > 6000;

-- TO DROP THE VIEW
DROP VIEW offers_given;


