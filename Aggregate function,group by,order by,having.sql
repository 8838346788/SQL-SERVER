create table products(
productid int primary key not null,
name varchar(100) not null,
productnumber varchar(100),
color varchar(100),
size char(10),
listprice float,
brand VARCHAR(50),
model VARCHAR(50)
)


INSERT INTO products (productid, name, productnumber, color, size, listprice, brand, model) 
VALUES
(1, 'Wireless Mouse', 'WM1001', 'Black', 'M', 29.99, 'LogiTech', 'M185'),
(2, 'Mechanical Keyboard', 'MK1002', 'White', 'L', 89.99, 'KeyChron', 'K6'),
(3, 'LED Monitor 24"', 'LM1003', 'Black', '24"', 149.99, 'Samsung', 'S24F350'),
(4, 'Smartphone X10', 'SP1004', 'Blue', '6.1"', 699.00, 'OnePlus', '10R'),
(5, 'Bluetooth Speaker', 'BS1005', 'Red', 'S', 45.00, 'JBL', 'Flip5'),
(6, 'Gaming Chair', 'GC1006', 'Black/Red', 'XL', 199.99, 'Razer', 'Iskur'),
(7, 'USB-C Hub', 'UC1007', 'Gray', 'S', 39.50, 'Anker', 'A8352'),
(8, 'Laptop Sleeve', 'LS1008', 'Gray', '13"', 19.95, 'AmazonBasics', 'SlimFit'),
(9, 'Noise Cancelling Headphones', 'HP1009', 'Black', 'L', 249.99, 'Sony', 'WH-1000XM4'),
(10, 'Smartwatch Series 7', 'SW1010', 'Silver', '42mm', 399.00, 'Apple', 'Series7'),
(11, 'Portable SSD 1TB', 'SD1011', 'Black', '1TB', 129.99, 'SanDisk', 'Extreme'),
(12, 'Webcam HD', 'WC1012', 'Black', 'HD', 59.95, 'LogiTech', 'C920'),
(13, 'Drone Pro', 'DR1013', 'White', 'M', 599.00, 'DJI', 'Mini 3 Pro'),
(14, 'LED Desk Lamp', 'DL1014', 'White', 'M', 34.99, 'Philips', 'SmartLamp'),
(15, 'External DVD Drive', 'ED1015', 'Silver', 'S', 29.95, 'LG', 'GP65NB60'),
(16, 'Smart TV 50"', 'TV1016', 'Black', '50"', 499.99, 'Samsung', 'QLED50'),
(17, 'Fitness Tracker', 'FT1017', 'Pink', 'S', 79.00, 'Fitbit', 'Charge 5'),
(18, 'Graphics Tablet', 'GT1018', 'Black', 'M', 119.99, 'Wacom', 'Intuos'),
(19, 'Coffee Maker', 'CM1019', 'Silver', 'L', 89.00, 'Nespresso', 'Essenza'),
(20, 'Electric Toothbrush', 'ET1020', 'White', 'S', 59.99, 'Oral-B', 'Pro 1000'),
(21, 'Wireless Charger', 'WC1021', 'Black', 'M', 24.99, 'Belkin', 'BoostUp'),
(22, 'Projector 1080p', 'PJ1022', 'White', 'L', 279.00, 'Epson', 'HomeCinema'),
(23, 'Microwave Oven', 'MO1023', 'Black', '30L', 129.00, 'Panasonic', 'NN-SN966S'),
(24, 'Bluetooth Earbuds', 'BE1024', 'Black', 'S', 59.99, 'Anker', 'Soundcore Liberty'),
(25, 'Digital Camera', 'DC1025', 'Black', 'M', 549.99, 'Canon', 'EOS M50'),
(26, 'Robot Vacuum', 'RV1026', 'White', 'M', 399.00, 'iRobot', 'Roomba i3'),
(27, 'Electric Kettle', 'EK1027', 'Silver', '1.7L', 39.95, 'Breville', 'IQ Kettle'),
(28, 'Standing Desk', 'SD1028', 'Brown', 'L', 299.99, 'FlexiSpot', 'E5'),
(29, 'Smart Lock', 'SL1029', 'Silver', 'S', 199.00, 'August', 'Wi-Fi Smart Lock'),
(30, 'Smart Bulb 4-pack', 'SB1030', 'Multicolor', 'S', 49.99, 'TP-Link', 'Kasa'),
(31, 'Streaming Stick', 'SS1031', 'Black', 'S', 39.99, 'Roku', 'Express 4K+'),
(32, 'Tablet 10"', 'TB1032', 'Gray', '10"', 229.00, 'Lenovo', 'Tab M10'),
(33, 'Air Purifier', 'AP1033', 'White', 'L', 159.00, 'LEVOIT', 'Core 300'),
(34, 'Wireless Router', 'WR1034', 'Black', 'M', 89.00, 'Netgear', 'Nighthawk AX4'),
(35, 'Dash Cam', 'DC1035', 'Black', 'S', 99.99, 'Garmin', 'Dash Cam Mini 2'),
(36, 'Thermostat Smart', 'TH1036', 'White', 'S', 249.00, 'Google', 'Nest'),
(37, 'Laptop Stand', 'LS1037', 'Silver', 'M', 29.95, 'Rain Design', 'mStand'),
(38, 'Wireless Keyboard', 'WK1038', 'Black', 'L', 49.95, 'Microsoft', 'Sculpt'),
(39, 'Power Bank 20000mAh', 'PB1039', 'Black', 'XL', 39.95, 'Anker', 'PowerCore'),
(40, 'VR Headset', 'VR1040', 'Black', 'L', 299.00, 'Meta', 'Quest 2');
INSERT INTO products (productid, name, productnumber,size, listprice, brand, model) 
VALUES
(41, 'mobile phone', 'MB1040', 'L', 2000.00, 'iphone', 'Quest 3')

select *from products

select count(productid) from products

select sum (listprice) from products

select min (listprice) from products

select max (listprice) from products

select avg (listprice) from products

select color, COUNT(productid)

FROM products group by color


SELECT color, count(productid) 
 as num_of_products FROM products
WHERE color is not null
group by color


SELECT color ,sum (listprice)
as total_list_price FROM products
WHERE color is not null 
group by color


SELECT color,size ,avg (listprice)
as avg_list_price FROM products
WHERE color is not null 
group by color,size


SELECT color,size ,avg (listprice)
as avg_list_price FROM products
WHERE color is not null and size is not null
group by color,size
order by color,size



SELECT color,count (productid)
as num_of_products FROM products
WHERE color is not null 
group by color
having count (productid)>10



SELECT color,count (productid)
as num_of_products FROM products
WHERE color is not null 
group by color
HAVING sum (listprice) >100


SELECT color FROM products
group by color
order by color desc

SELECT color,size,count(size) as num_of_size FROM products
WHERE color is not null and size is not null
group by color,size
order by color,size



