create table Employes(
Empid int not null,
EmpFirstName varchar(100),
EmpLastName varchar(100),
Dateofbirth date,
Gender char(3),
manager_id int,
Departmentid int 

)

drop table employes
INSERT INTO Employes

values 
(1001,'Veeramani','vezhaventhan','1998-09-09','M',10,110),
(1002,'Devi','Ramraj','2007-08-14','F',11,111),
(1003,'Anitha','Renganathan','1999-07-08','F',12,112),
(1004,'vicky','Ganeshan','1999-10-21','M',13,113),
(1005,'Elaiyaraja','Ravikumar','1998-06-12','M',14,114),
(1006,'Suresh','Kumar','1999-05-28','M',15,115),
(1007,'Vignesh','Paruvadhurai','1998-01-01','M',16,116),
(1008,'Anbuselvan','Krishnamoorti','1991-04-05','M',17,117)

INSERT INTO Employes(empid,departmentid)

values(1009,18),(1010,19)


CREATE TABLE Department(
 Departmentid int primary key not null,
 departmentName varchar(100))

 drop table department

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


select * from employes

select * from Department

select e.empid,e.Empfirstname,e.EmpLastName,e.departmentid,d.departmentName
from employes e
left join department d
on e.departmentid =d.departmentid

select  VIEW Employes_dept_details   As
select e.empid,e.Empfirstname,e.EmpLastName,e.departmentid,d.departmentName
from employes e
left join department d
on e.departmentid =d.departmentid

SELECT * FROM Employes_dept_details

CREATE VIEW employes_details As
select Empid,empfirstname,emplastname,departmentid

FROM Employes

select* from employes_details


ALTER VIEW Employes_dept_details As
select e.Empid,e.empfirstname,e.emplastname,e.Dateofbirth,e.departmentid,
d.departmentname
 
 FROM Employes e left join Department d
 on e.departmentid= d.departmentid


INSERT INTO employes_details

VALUES (1011,'Alice','Robert',15)

select *from employes_details

select * from employes

UPDATE employes_details
set EmpFirstName ='Vinoth'
WHERE empid=1001

UPDATE Employes_dept_details
set departmentName='IT'
WHERE empid=1001


SELECT* FROM  Employes_dept_details 