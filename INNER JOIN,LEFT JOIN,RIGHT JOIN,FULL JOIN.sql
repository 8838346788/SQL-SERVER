create table Employee(
Empid int not null,
EmpFirstName varchar(100),
EmpLastName varchar(100),
Dateofbirth date,
Gender char(3),
Departmentid int not null,
Constraint pk_Employee Primary key(Empid,Departmentid)
)

INSERT INTO Employee

values 
(1001,'Veeramani','vezhaventhan','1998-09-09','M',10),
(1002,'Devi','Ramraj','2007-08-14','F',11),
(1003,'Anitha','Renganathan','1999-07-08','F',12),
(1004,'vicky','Ganeshan','1999-10-21','M',13),
(1005,'Elaiyaraja','Ravikumar','1998-06-12','M',14),
(1006,'Suresh','Kumar','1999-05-28','M',15),
(1007,'Vignesh','Paruvadhurai','1998-01-01','M',16),
(1008,'Anbuselvan','Krishnamoorti','1991-04-05','M',17)

INSERT INTO Employee(empid,departmentid)

values(1009,18),(1010,19)


CREATE TABLE Department(
 Departmentid int primary key not null,
 departmentName varchar(100))


INSERT INTO Department

VALUES(10,'Mechanical'),
(11,'Doctor'),
(12,'Teacher'),
(13,'Engineer'),
(14,'Civil'),
(15,'production')
INSERT INTO Department

VALUES
(18,'Marketing'),
(19,'degitel')
--INNER JOIN
SELECT * FROM  Employee e
inner join Department d
on e.departmentid=d.departmentid

--LEFT OUTER JOIN

SELECT * FROM Employee e
left outer join Department d
on e.Departmentid=d.Departmentid

--RIGHT JOIN
SELECT * FROM Employee e
right join Department d
on e.Departmentid=d.Departmentid

--FULL OUTER JOIN
SELECT* FROM Employee E
FULL OUTER JOIN  Department d

on e.Departmentid=d.Departmentid



