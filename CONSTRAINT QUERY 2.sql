create table students(
studentid int not null ,
FirstName varchar(100) not null,
LastName varchar(100) not null,
DateofBirth date,
Gender char(1),
Address varchar(200),
EmailiD varchar(100),
MobileNumber bigint,
Country varchar(100) default 'india',
courseId int,
constraint pk_students primary key (studentid,courseid)
)

drop TABLE students

INSERT INTO students(StudentID, FirstName, LastName, DateOfBirth, Gender, Address,
    EmailID, MobileNumber,country, courseid
)
values 
	   (1007,'Anitha','Mannikandan','1998-10-2','F','1/671,North street,Thevanur','anitha1998@gmail.com',8838436757,'srilanka',305)

create table coursedetails(
courseid int primary key,
courseName varchar(100),
dateofjoining date,
dateofending date)

ALTER TABLE coursedetails
ADD  CGBA float


INSERT INTO coursedetails
VALUES 
(305,'Ayurvedha','2015-08-23','2020-03-23',9.4),
(303,'B.A','2016-08-23','2018-03-23',9.4),
       (304,'MA.B.Ed','2016-07-03','2022-05-03',9.5)
select * from students

select * from coursedetails

SELECT 
    S.StudentID,
    S.FirstName,
    S.LastName,
    s.DateofBirth ,
   s.Gender ,
   s.Address ,
   s.EmailiD ,
   s.MobileNumber,
   s.Country,
   c.courseid,
    C.CourseName,
    C.DateOfJoining,
    C.DateOfEnding
FROM 
    Students S
JOIN 
    CourseDetails C ON S.CourseID = C.CourseID;




