select * from employees

--inline value function
--CREATE FUNCTION dbo.udf_empbyDept(@deptid int)
--RETURNS TABLE 
--AS
--RETURN 
--SELECT * FROM Employees WHERE Department_id= @deptid

--select * from dbo.udf_empbydept(7002)
--end

--multi value_function
CREATE FUNCTION dbo.udf_persons()
RETURNS @PERSONDATA Table (ID int,Name varchar(100))
AS
BEGIN 
INSERT INTO @PERSONDATA
SELECT EMPID,EMPFIRSTNAME FROM EMPLOYEES

INSERT INTO @PERSONDATA 
SELECT STUDENT_ID,STUDENTNAME, FROM STUDENTMARKS
RETURN 
END

SELECT * FROM dbo.udf_persons()