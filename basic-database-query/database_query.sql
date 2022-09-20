
CREATE DATABASE customer_database;

USE customer_database;

CREATE TABLE customers(
Id INT AUTO_INCREMENT,
First_Name VARCHAR(50) NOT NULL,
Last_Name VARCHAR(50) NOT NULL,
Date_of_Birth DATE NOT NULL,
Phone VARCHAR(20),
Address VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(50) NOT NULL,
Points INT,
PRIMARY KEY (Id)
);

SELECT * FROM customers;

INSERT INTO customers (First_Name, Last_Name, Date_of_Birth, Phone, Address, City, State, Points) VALUES
('Babara', 'MacCaffrey', '1986-03-28', '781-932-9754', '0 Sage Terrace', 'Waltham', 'MA', '2273'),
('Ines' ,'Brushfield' ,'1986-04-13' ,'804-427-9456' ,'14187 Commercial Trail' ,'Hampton','VA','947'),
('Freddi' ,'Boagey' ,'1985-02-07' ,'719-724-7869' ,'251 Springs Junction' ,'Colorado Springs' ,'CO' ,'2967'),
('Ambur','Roseburgh','1974-04-14' ,'407-231-8017','30 Arapahoe Terrace', 'Orlando', 'FL', '457'),
('Clemmie','Betchley','1973-11-07',NULL,'5 Spohn Circle','Arlington','TX','3675'); 

SELECT * FROM customers;

SELECT * FROM customers WHERE Points > 1000 LIMIT 2;

SELECT * FROM customers WHERE Date_of_Birth BETWEEN '1980-01-01' AND '1990-01-01' OR Points < 1000;

SELECT * FROM customers ORDER BY Points;

SELECT * FROM customers ORDER BY Points DESC;

SELECT * FROM customers WHERE  CONCAT(First_Name,Last_Name) LIKE '%burgh%';

SELECT * FROM customers WHERE  CONCAT(First_Name,Last_Name) REGEXP 'burgh';

SELECT * FROM customers WHERE Phone = '';

ALTER TABLE customers CHANGE Date_of_Birth dob DATE;

SELECT MAX(Points), First_Name FROM customers WHERE Points = (SELECT MAX(Points) FROM customers);

SELECT *, CASE
	WHEN Points<1000 THEN 'The customer is bronze member'
	WHEN Points>1000 AND Points<2000 THEN 'The customer is silver member'
	WHEN Points>2000 AND Points<3000 THEN 'The customer is gold member'
	ELSE 'The customer is platinum member'
	END AS 'Customr_Quality' FROM customers;

SELECT *, CASE
	WHEN Points<1000 THEN 'The customer is bronze member'
	WHEN Points>1000 AND Points<2000 THEN 'The customer is silver member'
	WHEN Points>2000 AND Points<3000 THEN 'The customer is gold member'
	WHEN Points>3000 THEN 'The customer is platinum member'
	END AS 'Customr_Quality' FROM customers;

