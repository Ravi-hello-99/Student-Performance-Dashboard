-- data.sql
USE Student_Performance;
GO

INSERT INTO Students VALUES
('Ravi Kumar', 'Male', '2002-05-10', 'Computer Science', 2021),
('Priya Sharma', 'Female', '2001-08-22', 'Computer Science', 2021),
('Arjun Nair', 'Male', '2002-11-01', 'Mechanical', 2021),
('Sneha Rao', 'Female', '2003-01-15', 'Civil', 2022),
('Mohammed Ali', 'Male', '2001-07-30', 'Electrical', 2021);

INSERT INTO Subjects VALUES
('Mathematics', 'Common', 4),
('Data Structures', 'Computer Science', 3),
('Thermodynamics', 'Mechanical', 3),
('Structural Analysis', 'Civil', 4),
('Circuit Theory', 'Electrical', 3);

INSERT INTO Exams VALUES
('Midterm', '2024-08-15', 1),
('Final',   '2024-11-20', 1),
('Midterm', '2024-08-16', 2),
('Final',   '2024-11-21', 2);

INSERT INTO Marks VALUES
(1, 1, 72, 100, 'B'),
(1, 2, 85, 100, 'A'),
(2, 1, 90, 100, 'A'),
(2, 2, 78, 100, 'B'),
(3, 1, 55, 100, 'C'),
(3, 2, 60, 100, 'C'),
(4, 1, 40, 100, 'F'),
(5, 2, 95, 100, 'A');

INSERT INTO Attendance VALUES
(1, 1, '2024-07-01', 'Present'),
(1, 1, '2024-07-02', 'Absent'),
(2, 1, '2024-07-01', 'Present'),
(2, 1, '2024-07-02', 'Present'),
(3, 2, '2024-07-01', 'Absent'),
(4, 2, '2024-07-02', 'Present');