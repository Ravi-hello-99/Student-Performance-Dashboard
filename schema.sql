-- schema.sql
CREATE DATABASE Student_Performance;
GO
USE Student_Performance;
GO

CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY,
    StudentName NVARCHAR(100),
    Gender NVARCHAR(10),
    DateOfBirth DATE,
    Department NVARCHAR(50),
    EnrollmentYear INT
);

CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY IDENTITY,
    SubjectName NVARCHAR(100),
    Department NVARCHAR(50),
    Credits INT
);

CREATE TABLE Exams (
    ExamID INT PRIMARY KEY IDENTITY,
    ExamName NVARCHAR(50),
    ExamDate DATE,
    SubjectID INT FOREIGN KEY REFERENCES Subjects(SubjectID)
);

CREATE TABLE Marks (
    MarkID INT PRIMARY KEY IDENTITY,
    StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
    ExamID INT FOREIGN KEY REFERENCES Exams(ExamID),
    MarksObtained FLOAT,
    MaxMarks FLOAT,
    Grade NVARCHAR(5)
);

CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY IDENTITY,
    StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
    SubjectID INT FOREIGN KEY REFERENCES Subjects(SubjectID),
    AttendanceDate DATE,
    Status NVARCHAR(10)
);