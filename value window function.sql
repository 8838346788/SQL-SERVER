CREATE TABLE Products (
    ProductID INT  ,
    ProductName VARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2) NOT NULL,
    QuantityInStock INT DEFAULT 0,
    Category VARCHAR(50),
    CreatedAt DATEtime default 0,
    standardcast INT,
    modifieddate DATETIME 
);

drop table products

INSERT INTO Products (
  ProductID,   ProductName, Description, Price, QuantityInStock, Category, standardcast,modifieddate
)
VALUES 
(1001,'Wireless Mouse', 'Ergonomic mouse with USB receiver', 19.99, 100, 'Electronics', 1,'1992-09-10'),
(1001,'Bluetooth Speaker', 'Portable speaker with 10hr battery life', 34.50, 80, 'Electronics', 2, '1992-09-11'),
(1001,'Gaming Keyboard', 'Mechanical keyboard with RGB lights', 49.99, 50, 'Electronics', 2, '1992-09-12'),
(1002,'Office Chair', 'Ergonomic office chair with lumbar support', 150.00, 20, 'Furniture', 3, '1993-09-13'),
(1002,'Standing Desk', 'Adjustable height desk', 299.99, 15, 'Furniture', 3, '1993-05-10'),
(1003,'LED Monitor 24"', 'Full HD monitor with HDMI', 129.99, 40, 'Electronics', 2, '1993-06-11'),
(1003,'USB-C Charger', 'Fast charging 65W USB-C adapter', 25.00, 200, 'Accessories', 1 ,'1994-06-12'),
(1004,'External SSD 1TB', 'Portable storage drive USB 3.2', 89.99, 60, 'Electronics', 2 ,'1995-07-10'),
(1004,'Smartphone Tripod', 'Adjustable tripod with phone holder', 18.00, 150, 'Photography', 1 ,'1996-07-11'),
(1005,'Webcam 1080p', 'Full HD webcam for video calls', 45.99, 75, 'Electronics', 2 ,'1998-08-10'),
(1005,'Noise Cancelling Headphones', 'Wireless over-ear headphones', 99.99, 35, 'Electronics', 2, '1995-08-12'),
(1005,'Electric Kettle', '1.7L stainless steel kettle', 29.95, 100, 'Home Appliances', 1, '1996-03-13'),
(1006,'Air Fryer', '5L digital air fryer with presets', 79.00, 25, 'Home Appliances', 3 ,'1997-03-10'),
(1006,'Coffee Maker', 'Programmable drip coffee maker', 59.90, 30, 'Home Appliances', 2, '1999-04-15'),
(1006,'Yoga Mat', 'Non-slip 6mm thick mat', 22.00, 120, 'Fitness', 1, '1997-05-12'),
(1007,'Dumbbell Set', 'Adjustable dumbbells up to 50 lbs', 119.00, 10, 'Fitness', 3 ,'1995-05-13'),
(1007,'Running Shoes', 'Men’s lightweight running shoes', 69.99, 45, 'Footwear', 2, '1994-08-15'),
(1007,'Backpack', 'Water-resistant laptop backpack', 39.50, 80, 'Accessories', 1 ,'1992-01-13'),
(1008,'LED Desk Lamp', 'Dimmable lamp with USB charging port', 27.75, 90, 'Home Decor', 1, '1999-01-16'),
(1008,'Wireless Router', 'Dual-band Wi-Fi 6 router', 129.99, 20, 'Networking', 2 ,'2010-02-10');

select * from products

select productid,standardcast,modifieddate from products order by productid,modifieddate

select productid,standardcast,modifieddate,first_value(standardcast) over
(partition by productid order by modifieddate) as initial_value
from products order by productid,modifieddate

select productid,standardcast,modifieddate,last_value(standardcast) over
(partition by productid order by modifieddate	RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as Final_value
from products order by productid,modifieddate

select productid,standardcast,modifieddate,
lag(standardcast) over(partition by productid order by modifieddate) as previous_value,
lead(standardcast) over(partition by productid order by modifieddate	) as next_value
from products order by productid,modifieddate



