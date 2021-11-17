CREATE DATABASE Library;
USE Library;


CREATE TABLE Book_Details(
Book_id TINYINT,
Book_Name VARCHAR(30)UNIQUE,
Book_Author VARCHAR(30)NOT NULL,
Book_Price FLOAT(10)DEFAULT 450,
Book_Year YEAR,
Book_Volume CHAR(10)

);
SELECT*FROM Book_details;
INSERT INTO Book_details(Book_id,Book_Name,Book_Author,Book_Price,Book_year,Book_Volume) VALUES(101,'Wings of Fire','A.P.J.Abdul Kalam',5000,2000,'v1');
INSERT INTO Book_details VALUES (102,'Horry Potter','J.K.HOWLING',290,1997,'v1');
INSERT INTO Book_details VALUES(103,'Chamber of Secrets','J.K.HOWLING',490,1999,'v2');
INSERT INTO Book_details VALUES(104,'Prisoner of Azkaban','J.K.HOWLING',599,2000,'v3');
INSERT INTO Book_details VALUES(105,'Globlet of Fire','J.K.HOWLING',300,2001,'v4');
INSERT INTO Book_details VALUES(106,'Globlet of Fire1','J.K.HOWLING',2000,2003,'v5');
SELECT Book_Name,Book_year FROM Book_details;
SELECT*FROM Book_details WHERE Book_Year='2000';
SELECT*FROM Book_details WHERE Book_Year<='2000' OR Book_Price>500;
SELECT * FROM Book_Details WHERE Book_id = 103;
SELECT COUNT(*) FROM Book_Details;
ALTER TABLE Book_Details ADD COLUMN No_Of_Pages INT;
ALTER TABLE Book_Details DROP COLUMN No_Of_Pages;
ALTER TABLE Book_Details ADD COLUMN No_Of_Pages INT AFTER Book_Name;
ALTER TABLE Book_Details rename COLUMN Book_Price TO Book_Amount;
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

SELECT Book_Author, COUNT(Book_Name) AS Count_Book_Author FROM Book_details GROUP BY Book_Author;

SELECT Book_Name, COUNT(Book_Price) AS Count_Book_Price FROM Book_Details GROUP BY Book_Price;

SELECT Publish_Year, COUNT(Book_Name) AS count_book_name, Book_Name FROM Book_Details WHERE Publish_Year > 2005 GROUP BY Publish_Year;

SELECT Publish_Year,SUM(Book_Price) AS Total_Sum_of_Book FROM Book_Details GROUP BY Publish_Year ORDER BY Publish_Year;

SELECT Volume,count(Book_Name) AS No_of_books_in_Volume FROM Book_Details GROUP BY Volume HAVING No_of_books_in_Volume>1;

SELECT Volume,count(Book_Name) AS No_of_books_in_volume FROM Book_Details GROUP BY Volume HAVING No_of_books_in_volume>1;

/*ROLLBACK can only be used with DML commands(INSERT,UPDATE,DELETE)--*/

SET AUTOCOMMIT=0;
DELETE FROM Book_Details WHERE Book_id=8;
ROLLBACK;
DELETE FROM Book_Details WHERE Book_id=7;	
SAVEPOINT T1;
DELETE FROM Books_details WHERE BOOK_id=8;
SAVEPOINT T2;
ROLLBACK;
SELECT*FROM Book_Details;