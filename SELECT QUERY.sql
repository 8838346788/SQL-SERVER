use veera
CREATE TABLE customers (
	customer_id INT  PRIMARY KEY,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255) NOT NULL,
	street VARCHAR (255),
	city VARCHAR (50),
	state VARCHAR (25),
	zip_code VARCHAR (5)
);
INSERT INTO customers (
    customer_id,
    first_name,
    last_name,
    phone,
    email,
    street,
    city,
    state,
    zip_code
)
VALUES (
    2,
    'veeramani',
    'v',
    '8838436788',
    'veeramani761998@gmail.com',
    'north street',
    'ariyalur',
    'tamilnadu',
    '90192'
);
INSERT INTO customers (
    customer_id,
    first_name,
    last_name,
    phone,
    email,
    street,
    city,
    state,
    zip_code
)
VALUES (
    10,
    'lice',
    'Johnson',
    '9187264616',
    'licejohnson@gamil.com',
    '100 NG ',
    'Thailand',
    'TH',
    '49237'
);
INSERT INTO customers (
    customer_id,
    first_name,
    last_name,
    phone,
    email,
    street,
    city,
    state,
    zip_code
)
VALUES
(30, 'Alice', 'Johnson', '555-321-6789', 'alice.johnson@example.com', '100 Maple Ave', 'Riverdale', 'OH', '43055'),
(31, 'Bob', 'Smith', '555-654-1234', 'bob.smith@example.com', '200 Oak St', 'Springfield', 'IL', '62701'),
(3, 'Charlie', 'Brown', '555-432-5678', 'charlie.brown@example.com', '300 Pine Rd', 'Greenville', 'SC', '29601'),
(4, 'David', 'Williams', '555-987-6543', 'david.williams@example.com', '400 Cedar Blvd', 'Columbus', 'OH', '43210'),
(5, 'Eva', 'Davis', '555-876-1234', 'eva.davis@example.com', '500 Birch Ln', 'Tucson', 'AZ', '85701'),
(6, 'Frank', 'Miller', '555-765-4321', 'frank.miller@example.com', '600 Elm Dr', 'Phoenix', 'AZ', '85001'),
(7, 'Grace', 'Taylor', '555-654-9876', 'grace.taylor@example.com', '700 Maple St', 'Dallas', 'TX', '75201'),
(8, 'Hank', 'Anderson', '555-543-2109', 'hank.anderson@example.com', '800 Oak Dr', 'Atlanta', 'GA', '30301'),
(9, 'Ivy', 'Moore', '555-432-1098', 'ivy.moore@example.com', '900 Pine St', 'New York', 'NY', '10001'),
(32, 'Jack', 'Jackson', '555-321-2345', 'jack.jackson@example.com', '1000 Cedar Ave', 'Los Angeles', 'CA', '90001'),
(11, 'Kelly', 'White', '555-210-9876', 'kelly.white@example.com', '1100 Birch St', 'San Francisco', 'CA', '94102'),
(12, 'Liam', 'Harris', '555-321-5678', 'liam.harris@example.com', '1200 Oak Ave', 'Chicago', 'IL', '60601'),
(13, 'Mia', 'Martin', '555-432-8765', 'mia.martin@example.com', '1300 Pine Blvd', 'Boston', 'MA', '02108'),
(14, 'Noah', 'Garcia', '555-543-7654', 'noah.garcia@example.com', '1400 Maple Dr', 'Seattle', 'WA', '98101'),
(15, 'Olivia', 'Lee', '555-654-2345', 'olivia.lee@example.com', '1500 Elm Rd', 'Denver', 'CO', '80202'),
(16, 'Paul', 'Perez', '555-765-9876', 'paul.perez@example.com', '1600 Birch Ave', 'Houston', 'TX', '77001'),
(17, 'Quinn', 'Wilson', '555-876-2345', 'quinn.wilson@example.com', '1700 Pine St', 'Miami', 'FL', '33101'),
(18, 'Rita', 'Martinez', '555-987-5432', 'rita.martinez@example.com', '1800 Oak Blvd', 'Austin', 'TX', '73301'),
(19, 'Steve', 'Roberts', '555-654-8765', 'steve.roberts@example.com', '1900 Cedar Ln', 'Portland', 'OR', '97201'),
(20, 'Tina', 'Walker', '555-543-3210', 'tina.walker@example.com', '2000 Birch St', 'Charlotte', 'NC', '28201'),
(21, 'Ursula', 'Hall', '555-432-4321', 'ursula.hall@example.com', '2100 Oak Rd', 'Orlando', 'FL', '32801'),
(22, 'Victor', 'Allen', '555-321-8765', 'victor.allen@example.com', '2200 Elm Blvd', 'Indianapolis', 'IN', '46201'),
(23, 'Wendy', 'Young', '555-210-2345', 'wendy.young@example.com', '2300 Pine Ave', 'Minneapolis', 'MN', '55101'),
(24, 'Xander', 'King', '555-321-3456', 'xander.king@example.com', '2400 Maple Rd', 'Detroit', 'MI', '48201'),
(25, 'Yara', 'Scott', '555-432-7654', 'yara.scott@example.com', '2500 Birch Blvd', 'Las Vegas', 'NV', '89101'),
(26, 'Zane', 'Adams', '555-543-8765', 'zane.adams@example.com', '2600 Oak St', 'Salt Lake City', 'UT', '84101'),
(27, 'Ava', 'Nelson', '555-654-2345', 'ava.nelson@example.com', '2700 Pine Dr', 'Columbus', 'OH', '43215'),
(28, 'Ben', 'Carter', '555-765-4321', 'ben.carter@example.com', '2800 Cedar Ave', 'Cleveland', 'OH', '44101'),
(29, 'Carmen', 'Gonzalez', '555-876-5432', 'carmen.gonzalez@example.com', '2900 Birch Rd','varkas ','GH','43171')


select * from customers

select * from customers where customer_id=30

select * from customers where customer_id>=10

select * from customers where customer_id<=10

select * from customers where customer_id between 10 and 25

select * from customers where street ='100 NG'

SELECT *FROM customers WHERE city<>'ATLANA'

select * from customers where STATE IN ('OH','AZ','GA')


