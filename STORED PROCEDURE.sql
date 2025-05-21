
CREATE PROCEDURE GETPRODUCT @PROTID INT
AS
SELECT * FROM PRODUCTS WHERE PRODUCTID=@PROTID
create table products(
productid int primary key not null,
name varchar(100) not null,
productnumber varchar(100),
color varchar(100),
size char(10),
listprice float,
brand VARCHAR(50),
model VARCHAR(50),
modifieddate date
)
ALTER TABLE products
ALTER COLUMN size VARCHAR(20);

drop table products
INSERT INTO products (productid, name, productnumber, color, size, listprice, brand, model, modifieddate) VALUES
(1, 'Wireless Mouse', 'WM1001', 'Black', 'Medium', 19.99, 'Logitech', 'M325', '2025-05-01'),
(2, 'Gaming Keyboard', 'GK2002', 'RGB', 'Standard', 49.99, 'Razer', 'BlackWidow', '2025-05-01'),
(3, 'Laptop Stand', 'LS3003', 'Silver', 'Adjustable', 25.50, 'AmazonBasics', 'AB-LS1', '2025-05-01'),
(4, 'Bluetooth Speaker', 'BS4004', 'Blue', 'Small', 39.00, 'Sony', 'XB12', '2025-06-04'),
(5, 'USB-C Hub', 'UCH5005', 'Grey', 'Compact', 29.99, 'Anker', 'PowerExpand', '2025-06-05'),
(6, 'External SSD', 'SSD6006', 'Black', 'Portable', 89.99, 'Samsung', 'T7', '2025-06-06'),
(7, 'Headphones', 'NCH7007', 'Black', 'Large', 99.99, 'Bose', '700', '2025-05-01'),
(8, 'Webcam', 'WC8008', 'Black', 'Standard', 44.95, 'Logitech', 'C920', '2025-06-08'),
(9, 'Tripod', 'ST9009', 'Black', 'Flexible', 19.99, 'UBeesize', 'TR1', '2025-06-09'),
(10, 'LED Monitor', 'LM2410', 'Black', '24 inch', 129.00, 'Dell', 'SE2422H', '2025-05-10'),
(11, 'Gaming Chair', 'GC1011', 'Red', 'Large', 199.99, 'Secretlab', 'Titan', '2025-05-01'),
(12, 'Standing Desk', 'SD1212', 'White', '48x24', 299.00, 'FlexiSpot', 'E5', '2025-07-01'),
(13, 'Desk Lamp', 'DL1313', 'White', 'Adjustable', 27.99, 'Philips', 'DL100', '2025-07-01'),
(14, 'Coffee Maker', 'CM1414', 'Silver', '10-Cup', 59.99, 'Breville', 'BVC600', '2025-07-01'),
(15, 'Air Fryer', 'AF1515', 'Black', '5L', 79.00, 'Ninja', 'AF101', '2025-08-15'),
(16, 'Electric Kettle', 'EK1616', 'Stainless', '1.7L', 29.95, 'Hamilton', '40880', '2025-08-15'),
(17, 'Dumbbell Set', 'DS1717', 'Black', '50 lbs', 119.00, 'Bowflex', 'SelectTech', '2025-08-15'),
(18, 'Yoga Mat', 'YM1818', 'Purple', '6mm', 22.00, 'Manduka', 'PROlite', '2025-08-01'),
(19, 'Running Shoes', 'RS1919', 'Blue', '9', 69.99, 'Nike', 'Revolution 6', '2025-08-01'),
(20, 'Router', 'WR2020', 'White', 'Dual Band', 129.99, 'TP-Link', 'AX50', '2025-08-01'),
(21, 'Pencil', 'MP2121', 'Grey', '0.5mm', 2.99, 'Pentel', 'GG1000', '2025-08-22'),
(22, 'Inkjet Printer', 'IP2222', 'White', 'A4', 89.99, 'HP', 'DeskJet', '2025-08-22'),
(23, 'Tablet', 'GT2323', 'Black', 'Medium', 79.99, 'Wacom', 'Intuos', '2025-08-23'),
(24, 'Power Bank', 'PB2424', 'Black', '20K', 45.99, 'Anker', 'Core20', '2025-08-23'),
(25, 'Smartwatch', 'SW2525', 'Silver', '42mm', 199.99, 'Apple', 'Watch SE', '2025-08-01'),
(26, 'Fitness Band', 'FT2626', 'Black', 'Slim', 59.95, 'Fitbit', 'Inspire 3', '2025-05-26'),
(27, 'Projector', 'PJ2727', 'White', 'Mini', 129.00, 'ViewSonic', 'M1', '2025-05-27'),
(28, 'Earbuds', 'WE2828', 'White', 'In-Ear', 99.00, 'Samsung', 'Buds2', '2025-05-28'),
(29, 'Tablet 10"', 'T1029', 'Black', '10 inch', 149.99, 'Lenovo', 'Tab M10', '2025-05-03'),
(30, 'Toothbrush', 'ET3030', 'Blue', 'Rechargeable', 39.99, 'Oral-B', 'Pro1000', '2025-05-03'),
(31, 'Blender', 'BL3131', 'Red', '1.5L', 49.99, 'Ninja', 'BN401', '2025-05-03'),
(32, 'Smart Bulb', 'SL3232', 'RGB', 'A19', 14.99, 'Philips Hue', 'Color+', '2025-06-02'),
(33, 'USB Mic', 'UM3333', 'Black', 'Studio', 79.00, 'Blue', 'Yeti Nano', '2025-06-02'),
(34, 'WiFi Extender', 'RE3434', 'White', 'Dual Band', 49.99, 'Netgear', 'EX6120', '2025-06-02'),
(35, 'Photo Printer', 'PP3535', 'White', 'Compact', 129.00, 'Canon', 'Selphy CP1500', '2025-06-02'),
(36, 'Laptop Bag', 'LB3636', 'Grey', '15 inch', 39.99, 'Samsonite', 'Tectonic', '2025-06-05'),
(37, 'Webcam Cover', 'WC3737', 'Black', 'Slide', 4.99, 'CloudValley', 'CV1', '2025-06-06'),
(38, 'USB Fan', 'DF3838', 'White', 'Small', 15.99, 'Honeywell', 'HTF090B', '2025-06-05'),
(39, 'Scanner', 'DS3939', 'Black', 'A4', 89.99, 'Brother', 'ADS-1700W', '2025-06-05'),
(40, 'Monitor Stand', 'MS4040', 'Black', 'Wide', 29.95, 'VIVO', 'STAND-V000H', '2025-06-05');



END
EXEC GETPRODUCT 20
