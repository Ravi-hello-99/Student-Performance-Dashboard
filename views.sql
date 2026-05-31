-- views.sql
USE Student_Performance;
GO

CREATE VIEW vw_StudentPerformance AS
SELECT
    s.StudentID,
    s.StudentName,
    s.Department,
    s.Gender,
    sub.SubjectName,
    e.ExamName,
    m.MarksObtained,
    m.MaxMarks,
    ROUND((m.MarksObtained / m.MaxMarks) * 100, 2) AS Percentage,
    m.Grade
FROM Marks m
JOIN Students s ON m.StudentID = s.StudentID
JOIN Exams e ON m.ExamID = e.ExamID
JOIN Subjects sub ON e.SubjectID = sub.SubjectID;
GO

CREATE VIEW vw_AttendanceSummary AS
SELECT
    s.StudentName,
    s.Department,
    sub.SubjectName,
    COUNT(*) AS TotalClasses,
    SUM(CASE WHEN a.Status = 'Present' THEN 1 ELSE 0 END) AS Present,
    ROUND(SUM(CASE WHEN a.Status = 'Present' THEN 1.0 ELSE 0 END) / COUNT(*) * 100, 2) AS AttendancePct
FROM Attendance a
JOIN Students s ON a.StudentID = s.StudentID
JOIN Subjects sub ON a.SubjectID = sub.SubjectID
GROUP BY s.StudentName, s.Department, sub.SubjectName;
GO