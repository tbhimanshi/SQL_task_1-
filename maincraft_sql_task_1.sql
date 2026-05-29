-- SQL Data Analysis Internship – Task 1
-- Student Management Database
-- Name - Himanshi Mahavar
-- batch - 24th May 2026
-- mail - mahavarhimanshi@gmail.com
-- Date   : 30-05-2026


-- TASKS:
-- 1.Database and table Creation

CREATE DATABASE StudentManagement;
USE StudentManagement;

/* Creates a new database named StudentManagement and Tells SQL to work inside the StudentManagement database. */

CREATE TABLE Students(
StudentID INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(50),
Gender VARCHAR(10),
Age INT,
Grade VARCHAR(10),
MathScore INT,
ScienceScore INT,
EnglishScore INT
);

-- INSERT 10 RECORDS

INSERT INTO Students VALUES
(1,'Rahul Kumar','Male',22,'A',85,78, 90),
(2,'Kirti Singh','Female',21,'B+',84,81,90),
(3,'Priya Shukla','Female',19,'B',72,88,80),
(4,'Aman Singh','Male',22,'A',95,91,89),
(5,'Pooja Sharma','Female',20,'B',78,81,79),
(7,'Sneha Kumari','Female',19,'C',67,70,75),
(6,'Arjun Singh','Male',21,'C',60,72,68),
(8,'Simran Madhwani','Female',20,'C',74,69,77),
(9,'Kanha Agrawal','Male',20,'A',88,90,86),
(10,'Vedant','Male', 20,'B',80,85,82),
(11,'Neha Yadav','Female',19,'A',92,89,94),
(12,'Daksh Salvi','Male', 20,'B',80,85,82),
(13,'Aisha Agarwal','Female',21,'C',76,69,77),
(14,'Nandini Gupta','Female',20,'D',61,67,56);

/* This creates a table named Students and inserts these values in the tables columns and rows fields . */

-- 1. SHOW ALL STUDENT DETAILS 
SELECT * FROM Students;

-- 2. AVERAGE SCORE IN EACH SUBJECT
SELECT AVG(MathScore) AS Avg_Math From Students;
SELECT AVG(ScienceScore) AS Avg_Science From Students;
SELECT AVG(EnglishScore) AS Avg_English From Students;

-- 3. TOP PERFORMER (HIGHEST TOTAL SCORE)
SELECT *,(MathScore+ScienceScore+EnglishScore) AS TotalScore FROM Students ORDER BY TotalScore DESC LIMIT 1;

-- 4. COUNT STUDENTS PER GRADE
SELECT Grade,COUNT(*) AS TotalStudents FROM Students GROUP BY Grade;

-- 5. AVERAGE SCORE BY GENDER
SELECT Gender, AVG((MathScore + ScienceScore + EnglishScore)/3) AS AverageScore FROM Students GROUP BY Gender;

-- 6. STUDENTS WITH MATH SCORE > 80
SELECT * FROM Students WHERE MathScore>80;

-- 7. UPDATE A STUDENT'S GRADE
UPDATE Students SET Grade = 'A' WHERE StudentID = 2;

-- CHECK UPDATED DATA
SELECT * FROM Students;