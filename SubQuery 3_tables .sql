CREATE TABLE locations(
 street_address varchar (100) ,
 pincode bigint,
 City varchar(100),
 State_province varchar(100),
 Location_id int)

 drop table locations

 INSERT INTO LOCATIONS (street_address, pincode, city, state_province, location_id) VALUES
('123 Main St', 100001, 'New York', 'New York', 2001),
('456 Oak Ave', 200002, 'Los Angeles', 'California', 2002),
('789 Pine Rd', 300003, 'New York', 'Illinois', 2003),
('101 Maple Dr', 400004, 'Houston', 'Texas', 2004),
('202 Elm St', 500005, 'New York', 'Arizona', 2005),
('303 Cedar Ln', 600006, 'Philadelphia', 'Pennsylvania', 2006),
('404 Birch Blvd', 700007, 'San Antonio', 'Texas', 2007),
('505 Spruce Ct', 800008, 'San Diego', 'California', 2008);

CREATE TABLE DEPARTMENTS (
    department_id INT,
    departmentName VARCHAR(100),
    manager_id INT,
    location_id INT
);
drop table departments
 INSERT INTO DEPARTMENTS (department_id, departmentName, manager_id, location_id)
 VALUES
(7001, 'Finance', 1002, 2001),
(7002, 'Human Resources', 1003, 2002),
(7003, 'IT', 1004, 2003),
(7004, 'Sales', 1005, 2004),
(7005, 'Marketing', 1006, 2005),
(7006, 'Research & Development', 1007, 2006),
(7007, 'Customer Service', 1008, 2007),
(7008, 'Logistics', 1009, 2008);

create table Employees(
Empid int not null,
EmpFirstName varchar(100),
EmpLastName varchar(100),
Dateofbirth date,
Gender char(3),
manager_id int,
Department_id int,
salary int
)

drop table EMPLOYEES
INSERT INTO EMPLOYEES
values 
(1001,'Veeramani','vezhaventhan','1998-09-09','M',1002,7001,5000),
(1002,'Devi','Ramraj','2007-08-14','F',1003,7002,6000),
(1003,'Anitha','Renganathan','1999-07-08','F',1004,7003,4500),
(1004,'vicky','Ganeshan','1999-10-21','M',1005,7004,6000),
(1005,'Elaiyaraja','Ravikumar','1998-06-12','M',1006,7005,5000),
(1006,'Suresh','Kumar','1999-05-28','M',1007,7006,11000),
(1007,'Vignesh','Paruvadhurai','1998-01-01','M',1008,7007,10000),
(1008,'Anbuselvan','Krishnamoorti','1991-04-05','M',1009,7008,8000)

select * from Employees

SELECT AVG(SALARY)  FROM employees

SELECT * FROM EMPLOYEES WHERE SALARY > 6500


SELECT * FROM EMPLOYEES WHERE SALARY >(SELECT AVG (SALARY)  FROM employees)
Order by salary

SELECT * FROM EMPLOYEES WHERE SALARY <(SELECT AVG (SALARY)  FROM employees)
Order by salary

select * from employees
select * from departments
select * from locations

SELECT * FROM Employees  WHERE department_id in(
SELECT Department_id from departments WHERE Location_id in 
(select location_id from locations Where city='New york'))

SELECT * INTO EMPLOYEES_NEWYORK FROM EMPLOYEES 
 WHERE 1=0
 SELECT * FROM EMPLOYEES_NEWYORK

 INSERT INTO EMPLOYEES_NEWYORK
 SELECT * FROM Employees  WHERE department_id in(
SELECT Department_id from departments WHERE Location_id in 
(select location_id from locations Where city='New york'))

UPDATE employees
set salary =(select avg (salary) from employees)

where salary < (select avg (salary) from employees)

select min (salary) from employees

select * from employees
select * from Departments

select * from  employees 
where department_id in ( select department_id from DEPARTMENTS where departmentName in ('finance','Marketing'))