-- CREATE A DATABASE NAMED SCHOOL
create database school;

-- USE THE DATABASE SCHOOL
use school;

-- CREATE A TABLE STUDENT
create table student(
student_ID int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50),
roll_no int not null,
marks int,
grade varchar(1) check(Grade in ('A','B','C','D'))
);

-- display the student table	

desc student;

--  DISPLAY THE DATA IN THE STUDENT TABLE
select * from student;

-- 	ADD THE COLUMN CONTACT TO THE STUDENT TABLE
alter table student add contact varchar(15);

-- DISPLAY THE NEW TABLE STRUCTURE
desc student;
-- REMOVE GRADE COLUMN FROM THE STUDENT TABLE
alter table student drop grade;
desc student;

-- RENAME THE STUDENT TABLE TO CLASSTEN
rename table student to classten;
desc classten;
-- will get error when use the below command
desc student;

-- INSERT DATA INTO CLASSTEN 
insert into classten(first_name,last_name,roll_no,marks,contact)
values
('Nikila','M',10,216,'+91 3738930327'),
('Anju','James',5,345,'+91 3974586584'),
('Alby','John',1,225,'+91 9845321734');

-- DISPLAY THE DATA IN THE TABLE
select * from classten;

-- DELETE ALL ROWS FROM THE TABLE
truncate table classten;

-- DISPLAY THE DATA IN THE TABLE
select * from classten;

-- REMOVE THE TABLE FROM THE DATABASE
drop table classten;

desc classten;






	