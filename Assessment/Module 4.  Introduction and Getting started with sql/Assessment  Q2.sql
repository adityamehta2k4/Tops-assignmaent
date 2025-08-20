CREATE DATABASE SchoolDB;
USE SchoolDB;

CREATE TABLE Student (
    StdID INT PRIMARY KEY,
    StdName VARCHAR(50),
    Sex VARCHAR(10),
    Percentage INT,
    Class VARCHAR(5),
    Sec CHAR(1),
    Stream VARCHAR(20),
    DOB DATE
);

INSERT INTO Student VALUES
(1001, 'Surekha Joshi', 'Female', 82, '12', 'A', 'Science', '1998-03-08'),
(1002, 'Maahi Agarwal', 'Female', 56, '11', 'C', 'Commerce', '2008-11-23'),
(1003, 'Sanam Verma', 'Male', 59, '11', 'C', 'Commerce', '2006-06-29'),
(1004, 'Ronit Kumar', 'Male', 63, '11', 'B', 'Commerce', '1997-11-05'),
(1005, 'Dipesh Pulkit', 'Male', 78, '11', 'B', 'Science', '2003-09-14'),
(1006, 'Jahanvi Puri', 'Female', 60, '11', 'B', 'Commerce', '2008-07-11'),
(1007, 'Sanam Kumar', 'Male', 23, '12', 'F', 'Commerce', '1998-03-08'),
(1008, 'Sahil Saras', 'Male', 56, '11', 'C', 'Commerce', '2008-11-07'),
(1009, 'Akshra Agarwal', 'Female', 72, '12', 'B', 'Commerce', '1996-10-01'),
(1010, 'Stuti Mishra', 'Female', 39, '11', 'F', 'Science', '2008-11-23'),
(1011, 'Harsh Agarwal', 'Male', 42, '11', 'C', 'Science', '1998-03-08'),
(1012, 'Nikunj Agarwal', 'Male', 49, '12', 'C', 'Commerce', '1998-06-28'),
(1013, 'Akriti Saxena', 'Female', 89, '12', 'A', 'Science', '2008-11-23'),
(1014, 'Tani Rastogi', 'Female', 82, '12', 'A', 'Science', '2008-11-23');

-- 1. Display all records

SELECT * FROM Student;

-- 2. Display Name & DOB

SELECT StdName, DOB FROM Student;

-- 3. Students with percentage ≥ 80

SELECT * FROM Student WHERE Percentage >= 80;

-- 4. Student Name, Stream, Percentage where Percentage > 80

SELECT StdName, Stream, Percentage 
FROM Student 
WHERE Percentage > 80;

-- 5. Science students with percentage > 75

SELECT * 
FROM Student 
WHERE Stream = 'Science' AND Percentage > 75;

