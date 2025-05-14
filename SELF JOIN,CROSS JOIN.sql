CREATE TABLE EMPLOYEES
(
Empid int primary key not null,
Firstname varchar(100),
Lastname varchar(100),
DateofBirth date,
Gender char(3),
ManagerId int
)

INSERT INTO EMPLOYEES

values 
(1001,'Veeramani','vezhaventhan','1998-09-09','M',1002),
(1002,'Devi','Ramraj','2007-08-14','F',1003),
(1003,'Anitha','Renganathan','1999-07-08','F',1004),
(1004,'vicky','Ganeshan','1999-10-21','M',1005),
(1005,'Elaiyaraja','Ravikumar','1998-06-12','M',1006),
(1006,'Suresh','Kumar','1999-05-28','M',1007),
(1007,'Vignesh','Paruvadhurai','1998-01-01','M',1008),
(1008,'Anbuselvan','Krishnamoorti','1991-04-05','M',1009)

--SELF JOIN
SELECT E1.Empid,e1.firstName,e1.lastname,e1.managerid,
e2.firstname+''+e2.lastname as MANAGER_NAME
FROM employees e1
join EMPLOYEES e2
on e1.ManagerId=e2.empid

SELECT E1.Empid,e1.firstName,e1.lastname,e1.managerid,
e2.firstname+''+e2.lastname as MANAGER_NAME
FROM employees e1
LEFT join EMPLOYEES e2
on e1.ManagerId=e2.empid

--CROSS JOIN
SELECT e1.firstName+''+e1.lastname AS employees_1,
e2.firstname+''+e2.lastname as Employees_2
FROM employees e1
CROSS join EMPLOYEES e2

WHERE E1.EMPID<>E2.EMPID

