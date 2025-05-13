--create table orderdetail
--(orderId int,
--productId int,
--dateofpurchase date,
--price float,
--constraint pk_orderdetail primary key(orderId,productId))

DROP TABLE orderdetail

create table orderdetail
(orderId int not null,
productId int not null,
dateofpurchase date,
price float)

ALTER TABLE orderdetail
ADD constraint pk_orderdetail primary key(orderId,productId)

INSERT INTO OrderDetail (OrderID, ProductID, DateOfPurchase, Price)
VALUES
(101, 1, '2024-05-01', 19.99),
(101, 2, '2024-05-01', 29.99),
(102, 3, '2024-05-02', 15.50),
(103, 2, '2024-05-03', 29.99),
(104, 4, '2024-05-04', 45.00),
(105, 1, '2024-05-05', 19.99),
(106, 5, '2024-05-06', 60.75),
(107, 3, '2024-05-06', 15.50),
(108, 6, '2024-05-07', 99.99),
(109, 2, '2024-05-08', 29.99);


select *from orderdetail