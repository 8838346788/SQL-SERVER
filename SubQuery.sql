CREATE TABLE SALESMAN(
salesman_Id int primary key not null,
Name varchar(100),
city varchar(100),
commission int)
 
 DROP TABLE SALESMAN

INSERT INTO SALESMAN (salesman_Id, Name, city, commission) VALUES
(1001, 'John Smith', 'New York', 15),
(1002, 'Emily Davis', 'Los Angeles', 12),
(1003, 'Michael Brown', 'Chicago', 10),
(1004, 'Sarah Johnson', 'Houston', 18),
(1005, 'James Wilson', 'Phoenix', 14),
(1006, 'Linda Martinez', 'New York', 16),
(1007, 'Robert Taylor', 'San Antonio', 13),
(1008, 'Mary Anderson', 'San Diego', 11),
(1009, 'William Thomas', 'New York', 17),
(1010, 'Patricia Jackson', 'San Jose', 19),
(1011, 'David White', 'Austin', 10),
(1012, 'Barbara Harris', 'Chicago', 12),
(1013, 'Richard Martin', 'Fort Worth', 15),
(1014, 'Susan Thompson', 'Columbus', 14),
(1015, 'Joseph Garcia', 'Charlotte', 13),
(1016, 'Karen Martinez', 'San Francisco', 11),
(1017, 'Charles Robinson', 'Indianapolis', 16),
(1018, 'Lisa Clark', 'Seattle', 18),
(1019, 'Thomas Rodriguez', 'Denver', 17),
(1020, 'Betty Lewis', 'Boston', 19);


CREATE TABLE ORDERS(
ord_no int,
purch_amt int,
Ord_date date,
Customer_id int,
salesman_id int
)

INSERT INTO ORDERS (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
(5001, 500, '2025-01-15', 201, 1001),
(5002, 750, '2025-01-17', 202, 1002),
(5003, 1200, '2025-02-05', 203, 1003),
(5004, 400, '2025-02-20', 204, 1004),
(5005, 950, '2025-03-10', 205, 1005),
(5006, 1100, '2025-03-22', 206, 1006),
(5007, 300, '2025-04-01', 207, 1007),
(5008, 670, '2025-04-12', 208, 1008),
(5009, 1500, '2025-04-15', 209, 1009),
(5010, 800, '2025-04-18', 210, 1010),
(5011, 900, '2025-04-20', 211, 1011),
(5012, 1000, '2025-04-25', 212, 1012),
(5013, 720, '2025-05-01', 213, 1013),
(5014, 450, '2025-05-03', 214, 1014),
(5015, 600, '2025-05-05', 215, 1015),
(5016, 880, '2025-05-07', 216, 1016),
(5017, 770, '2025-05-10', 217, 1017),
(5018, 1300, '2025-05-12', 218, 1018),
(5019, 940, '2025-05-14', 219, 1019),
(5020, 500, '2025-05-16', 220, 1020);

SELECT * FROM ORDERS

SELECT * FROM SALESMAN


SELECT * FROM SALESMAN WHERE Name ='john smith'
SELECT * FROM ORDERs WHERE  Salesman_id=1001

SELECT * FROM ORDERS WHERE Salesman_id =(SELECT SALESMAN_id from Salesman WHERE Name ='john smith')


SELECT SALESMAN_ID FROM Salesman WHERE city='New York'
SELECT * FROM ORDERs WHERE  Salesman_id in (1001,1006,1009)
SELECT * FROM ORDERS WHERE Salesman_id in (SELECT SALESMAN_id from Salesman WHERE city ='New York')