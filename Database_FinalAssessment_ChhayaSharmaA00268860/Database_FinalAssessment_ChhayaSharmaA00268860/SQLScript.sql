DROP DATABASE IF EXISTS StudentAttendanceMgt;
CREATE DATABASE IF NOT EXISTS StudentAttendanceMgt;
USE StudentAttendanceMgt;

DROP TABLE IF EXISTS Student;
CREATE TABLE Student (
    RFIDTags double NOT NULL,
    Name VARCHAR(25) NOT NULL,
    Subject varchar(15) not null, 
    Mobile real not Null,
    Attendance varchar(15) not NULL
);
alter table Student auto_increment=987654321;
insert into Student values (987654321, "Jack", "Database",897655433, "y");
insert into Student values (987654322, "Joe", "Agile",897655433,"y");
insert into Student values (987654323, "Kate", "Client Side",897655433,"y");
insert into Student values (987654324, "Laura", "Agile",897655433,"y");
insert into Student values (987654325, "Prachi", "SD",897655433,"y");
insert into Student values (987654325, "Priya", "Database",897655433,"y");

DROP TABLE IF EXISTS subject;
create table subject(
	Subject varchar(15) not null, 
    lecturer varchar(50) not  null,
	Duration integer NOT NULL,
    Date DATE NOT NULL
    );
    
insert into subject values("SD","Declan Byrne",2, curdate());
insert into subject values("Agile","Michael Russel",2, curdate());
insert into subject values("Database","Sheila Fallon",2, curdate());
insert into subject values("Cllient Side","Enda Farrell",2, curdate());

DROP TABLE IF EXISTS adminLogin;
CREATE TABLE adminLogin (
    Username VARCHAR(25) NOT NULL,
    Password varchar(25) not null,
    PRIMARY KEY (Username)
);

INSERT INTO adminLogin VALUES ("Chhaya","Sharma");

DROP TABLE IF EXISTS studentLogin;
CREATE TABLE studentLogin (
 Username varchar(25) NOT NULL,
 Password varchar(25) NOT NULL,
 primary key (Username)
);

insert into studentLogin values ("Joe", 12345);
insert into studentLogin values("Jack", 123456);
insert into studentLogin values("Priya", 1234567);
insert into  studentLogin values ("Prachi", 12345678);
insert into studentLogin values ("Kate", 123456789);
insert into studentLogin values ("Laura", 1234567890);

 select * FROM subject where lecturer = "Sheila Fallon" or lecturer = "Declan Byrne";
 SELECT RFIDTags, Name, Subject, Mobile, Now() as PerDate FROM Student;

select  RFIDTags, Name, Subject, Password from Student, studentlogin where Name = Username;

select * from Student INNER JOIN subject on Student.subject = subject.Subject;

select * from Student INNER JOIN studentlogin on Student.Name = studentlogin.username; 

Delete from Student where Name = "Joe";
select * from Student;

Update Student set Name = "Nancy" where RFIDTags = 987654321;
select * from Student;

Alter Table Student ADD Marks integer;
select * from Student;
