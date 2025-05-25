--select * from Employees

--CREATE TABLE Employees_audit(
--Empid int,
--Opration varchar(100),
--Updatedate datetime)
--DROP TABLE EMPLOYEES_AUDIT
--INSERT INTO Employees
--values(1016,'mani','ajith','1999-09-10','m',1017,7003,25000)

--SELECT * FROM Employees_audit

--insert from employees where empid=1005
--DELETE FROM EMPLOYEES WHERE EMPID=1006
--CREATE TRIGGER TRG_EMP_AUDIT
--ON EMPLOYEES
--AFTER INSERT,DELETE
--AS 
--BEGIN
--INSERT INTO EMPLOYEES_AUDIT

--SELECT EMPID,'INS',GETDATE()
--FROM INSERTED

--UNION ALL
--SELECT EMPID,'DEL',GETDATE()
--FROM  DELETED
--END


SELECT * INTO Employees_deleted from employee_details

alter table employees_deleted 
add active bit

alter table employees_deleted 
add EndDate datetime 

select * from Employees_deleted

delete from Employees_deleted where empid=1009

CREATE TRIGGER TRG_EMP_DELETED
ON Employees_deleted
INSTEAD OF DELETE
AS
BEGIN
    UPDATE Employees_deleted
    SET ACTIVE = 0,
        EndDate = GETDATE()
    WHERE EMPID IN (
        SELECT EMPID FROM DELETED
    );
END;
