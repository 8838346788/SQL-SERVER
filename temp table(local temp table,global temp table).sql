create table #customer(
customerid int primary key,
Name varchar (100),
Cus_Address varchar(100),
productid int,
modifieddate DATETIME DEFAULT(0)
);

drop table #customer
INSERT INTO #customer (customerid, Name, Cus_Address, productid) VALUES
(201, 'Alice', '123 Main St', 101),
(202, 'Bob', '456 Elm St', 102),
(203, 'Charlie', '789 Maple St', 103),
(204, 'Diana', '321 Oak St', 104),
(205, 'Ethan', '654 Pine St', 105),
(206, 'Fiona', '987 Cedar St', 106),
(207, 'George', '111 Birch St', 107),
(208, 'Hannah', '222 Walnut St', 108),
(209, 'Ian', '333 Chestnut St', 109),
(210, 'Jill', '444 Spruce St', 110),
(211, 'Kevin', '555 Redwood St', 111),
(212, 'Luna', '666 Aspen St', 112),
(213, 'Mike', '777 Fir St', 113),
(214, 'Nina', '888 Sequoia St', 114),
(215, 'Oscar', '999 Poplar St', 115),
(216, 'Paula', '1010 Dogwood St', 116),
(217, 'Quinn', '1111 Beech St', 117),
(218, 'Rachel', '1212 Magnolia St', 118),
(219, 'Steve', '1313 Alder St', 119),
(220, 'Tina', '1414 Cypress St', 210);


select * from #customer

create table #products
(
productid int primary key,
productName varchar(100),
productnumber varchar(200),
color varchar(100),
Brond varchar(100))

INSERT INTO #products (productid, productName, productnumber, color, Brond) VALUES
(101, 'Wireless Mouse', 'WM1001', 'Black', 'Logitech'),
(102, 'Gaming Keyboard', 'GK2001', 'RGB', 'Razer'),
(103, 'HD Monitor', 'HDM3001', 'Black', 'Dell'),
(104, 'USB-C Charger', 'UC4001', 'White', 'Anker'),
(105, 'Bluetooth Speaker', 'BS5001', 'Blue', 'Sony'),
(106, 'Laptop Stand', 'LS6001', 'Silver', 'AmazonBasics'),
(107, 'Noise Cancelling Headphones', 'NC7001', 'Black', 'Bose'),
(108, 'Webcam', 'WC8001', 'Black', 'Logitech'),
(109, 'External SSD', 'ESD9001', 'Grey', 'Samsung'),
(110, 'Smartphone Tripod', 'ST10001', 'Black', 'UBeesize'),
(111, 'Office Chair', 'OC11001', 'Grey', 'HermanMiller'),
(112, 'Standing Desk', 'SD12001', 'Black', 'FlexiSpot'),
(113, 'LED Desk Lamp', 'LD13001', 'White', 'Philips'),
(114, 'Air Fryer', 'AF14001', 'Black', 'Ninja'),
(115, 'Coffee Maker', 'CM15001', 'Silver', 'Breville'),
(116, 'Yoga Mat', 'YM16001', 'Purple', 'Manduka'),
(117, 'Dumbbell Set', 'DS17001', 'Black', 'Bowflex'),
(118, 'Running Shoes', 'RS18001', 'Blue', 'Nike'),
(119, 'Wireless Router', 'WR19001', 'White', 'TP-Link'),
(120, 'Backpack', 'BP20001', 'Black', 'North Face');

select * from #products


SELECT 
    c.customerid,
    c.Name,
    c.Cus_Address,
	c.modifieddate,
	p.productid,
    p.productName,
    p.productnumber,
    p.Brond
FROM #customer c
JOIN #products p ON c.productid = p.productid;



select productid into #products from #customer
where modifieddate>='2000-09-09'

select p.* from #products p join #customer c on p.productid=c.productid

--Global temp table
create table ##customer(
customerid int primary key,
Name varchar (100),
Cus_Address varchar(100),
productid int,
modifieddate DATETIME DEFAULT(0)
);

drop table ##customer


INSERT INTO ##customer (customerid, Name, Cus_Address, productid) VALUES
(201, 'Alice', '123 Main St', 101),
(202, 'Bob', '456 Elm St', 102),
(203, 'Charlie', '789 Maple St', 103),
(204, 'Diana', '321 Oak St', 104),
(205, 'Ethan', '654 Pine St', 105),
(206, 'Fiona', '987 Cedar St', 106),
(207, 'George', '111 Birch St', 107),
(208, 'Hannah', '222 Walnut St', 108),
(209, 'Ian', '333 Chestnut St', 109),
(210, 'Jill', '444 Spruce St', 110),
(211, 'Kevin', '555 Redwood St', 111),
(212, 'Luna', '666 Aspen St', 112),
(213, 'Mike', '777 Fir St', 113),
(214, 'Nina', '888 Sequoia St', 114),
(215, 'Oscar', '999 Poplar St', 115),
(216, 'Paula', '1010 Dogwood St', 116),
(217, 'Quinn', '1111 Beech St', 117),
(218, 'Rachel', '1212 Magnolia St', 118),
(219, 'Steve', '1313 Alder St', 119),
(220, 'Tina', '1414 Cypress St', 210);


select * from ##customer

create table ##products
(
productid int primary key,
productName varchar(100),
productnumber varchar(200),
color varchar(100),
Brond varchar(100))

INSERT INTO ##products (productid, productName, productnumber, color, Brond) VALUES
(101, 'Wireless Mouse', 'WM1001', 'Black', 'Logitech'),
(102, 'Gaming Keyboard', 'GK2001', 'RGB', 'Razer'),
(103, 'HD Monitor', 'HDM3001', 'Black', 'Dell'),
(104, 'USB-C Charger', 'UC4001', 'White', 'Anker'),
(105, 'Bluetooth Speaker', 'BS5001', 'Blue', 'Sony'),
(106, 'Laptop Stand', 'LS6001', 'Silver', 'AmazonBasics'),
(107, 'Noise Cancelling Headphones', 'NC7001', 'Black', 'Bose'),
(108, 'Webcam', 'WC8001', 'Black', 'Logitech'),
(109, 'External SSD', 'ESD9001', 'Grey', 'Samsung'),
(110, 'Smartphone Tripod', 'ST10001', 'Black', 'UBeesize'),
(111, 'Office Chair', 'OC11001', 'Grey', 'HermanMiller'),
(112, 'Standing Desk', 'SD12001', 'Black', 'FlexiSpot'),
(113, 'LED Desk Lamp', 'LD13001', 'White', 'Philips'),
(114, 'Air Fryer', 'AF14001', 'Black', 'Ninja'),
(115, 'Coffee Maker', 'CM15001', 'Silver', 'Breville'),
(116, 'Yoga Mat', 'YM16001', 'Purple', 'Manduka'),
(117, 'Dumbbell Set', 'DS17001', 'Black', 'Bowflex'),
(118, 'Running Shoes', 'RS18001', 'Blue', 'Nike'),
(119, 'Wireless Router', 'WR19001', 'White', 'TP-Link'),
(120, 'Backpack', 'BP20001', 'Black', 'North Face');

select * from ##products
select p.* from ##products p join ##customer c on p.productid=c.productid