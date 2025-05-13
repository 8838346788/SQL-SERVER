use veera
create table products(

    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL,
    QuantityInStock INT DEFAULT 0,
    Supplier VARCHAR(100),
    IsActive BIT DEFAULT 1,
    DateAdded DATETIME DEFAULT GETDATE()
);

INSERT INTO Products (
    ProductName, Category, Price, QuantityInStock, Supplier, IsActive, DateAdded
) VALUES
('Wireless Mouse', 'Electronics', 25.99, 150, 'Tech Supplies Inc.', 1, GETDATE()),
('Bluetooth Keyboard', 'Electronics', 45.50, 100, 'Tech Supplies Inc.', 1, GETDATE()),
('LED Monitor 24"', 'Electronics', 120.00, 75, 'Display World', 1, GETDATE()),
('USB-C Charger', 'Accessories', 19.99, 200, 'ChargeFast', 1, GETDATE()),
('Gaming Chair', 'Furniture', 199.99, 30, 'FurniCo', 1, GETDATE()),
('Office Desk', 'Furniture', 150.00, 20, 'FurniCo', 1, GETDATE()),
('Notebook A5', 'Stationery', 2.99, 1000, 'Paper Goods Co.', 1, GETDATE()),
('Ballpoint Pen', 'Stationery', 0.99, 2000, 'InkFlow', 1, GETDATE()),
('Desk Organizer', 'Office Supplies', 12.75, 250, 'OfficeSmart', 1, GETDATE()),
('Sticky Notes Pack', 'Office Supplies', 5.50, 600, 'NoteMax', 1, GETDATE()),
('LED Strip Light', 'Home & Office', 22.00, 180, 'BrightLights Ltd.', 1, GETDATE()),
('Wall Clock', 'Home & Office', 18.95, 90, 'HomeDeco', 1, GETDATE()),
('Table Lamp', 'Home & Office', 29.99, 80, 'BrightLights Ltd.', 1, GETDATE()),
('Water Bottle', 'Fitness', 15.00, 300, 'HydrateNow', 1, GETDATE()),
('Yoga Mat', 'Fitness', 25.00, 120, 'FlexFit', 1, GETDATE()),
('Resistance Bands', 'Fitness', 10.99, 500, 'FlexFit', 1, GETDATE()),
('Smartwatch', 'Wearables', 129.99, 65, 'TimeTech', 1, GETDATE()),
('Fitness Tracker', 'Wearables', 89.99, 85, 'TimeTech', 1, GETDATE()),
('Laptop Stand', 'Accessories', 35.00, 140, 'StandCo', 1, GETDATE()),
('Phone Holder', 'Accessories', 11.49, 220, 'GripTech', 1, GETDATE()),
('Screen Cleaner Kit', 'Accessories', 8.25, 300, 'CleanView', 1, GETDATE()),
('HDMI Cable', 'Electronics', 6.99, 400, 'CableWorks', 1, GETDATE()),
('Ethernet Cable', 'Electronics', 5.49, 500, 'CableWorks', 1, GETDATE()),
('Surge Protector', 'Electronics', 18.95, 180, 'SafeVolt', 1, GETDATE()),
('External Hard Drive', 'Electronics', 75.00, 60, 'StoragePro', 1, GETDATE()),
('Flash Drive 64GB', 'Electronics', 12.99, 450, 'StoragePro', 1, GETDATE()),
('Printer Ink - Black', 'Office Supplies', 22.50, 160, 'InkFlow', 1, GETDATE()),
('Printer Ink - Color', 'Office Supplies', 27.99, 140, 'InkFlow', 1, GETDATE()),
('Shredder', 'Office Supplies', 85.00, 40, 'OfficeSmart', 1, GETDATE()),
('Monitor Stand', 'Furniture', 30.00, 100, 'FurniCo', 1, GETDATE()),
('Cable Organizer', 'Accessories', 7.95, 280, 'GripTech', 1, GETDATE()),
('Webcam 1080p', 'Electronics', 49.99, 90, 'VisionTech', 1, GETDATE()),
('Bluetooth Speaker', 'Electronics', 39.95, 110, 'SoundWave', 1, GETDATE()),
('Portable Projector', 'Electronics', 210.00, 25, 'VisionTech', 1, GETDATE()),
('Laptop Backpack', 'Accessories', 45.00, 130, 'BagPro', 1, GETDATE()),
('Ergonomic Mouse Pad', 'Accessories', 9.99, 250, 'ComfortZone', 1, GETDATE()),
('Digital Thermometer', 'Health', 15.49, 170, 'MediTech', 1, GETDATE()),
('First Aid Kit', 'Health', 22.00, 140, 'SafeCare', 1, GETDATE()),
('Electric Kettle', 'Home Appliances', 35.00, 95, 'HomeDeco', 1, GETDATE()),
('Air Purifier', 'Home Appliances', 130.00, 40, 'CleanAir Co.', 1, GETDATE());

SELECT * FROM products

SELECT * FROM products where productname like '% cable'

SELECT * FROM products where price like '[0-9]%'

SELECT * FROM products where  Category like'% supplies'

