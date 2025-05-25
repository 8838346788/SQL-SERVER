CREATE TABLE STUDENTMARKS(
STUDENT_ID INT,
STUDENTNAME VARCHAR(100),
TAMIL INT,
ENGLISH INT,
MATHS INT,
BIOLOGY INT,
PHYSICS INT,
CHEMISTRY INT,
TOTAL_MARK INT)

SELECT* FROM STUDENTMARKS
INSERT INTO STUDENTMARKS
VALUES
(1020,'VEERAMANI',90,80,70,60,80,90,470),
(1030,'DEVI',90,80,80,90,95,85,520),
(1040,'RAJA',30,50,70,25,50,60,285),
(1025,'KANNAN',40,20,40,45,60,55,260),
(1035,'SANJAY',50,45,60,55,30,65,305)

CREATE FUNCTION dbo.udf_PassOrFail (@marks INT)
RETURNS CHAR(1)
AS
BEGIN
    DECLARE @grade CHAR(1);

    IF (@marks >= 35)
        SET @grade = 'P';
    ELSE
        SET @grade = 'F';

    RETURN @grade;
END;

SELECT dbo.udf_passorfail(90)

select student_id,studentname,
dbo.udf_passorfail(tamil)as tamil,
dbo.udf_passorfail(english)as english,
dbo.udf_passorfail(maths)as maths,
dbo.udf_passorfail(biology)as biology,
dbo.udf_passorfail(physics) as physics,
dbo.udf_passorfail(chemistry) as chemistry

from studentmarks

select*from studentmarks

where dbo.udf_passorfail (english)='f';