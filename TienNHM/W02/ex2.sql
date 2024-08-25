-- Bài tập 2

CREATE DATABASE University;
GO
USE University
GO

CREATE TABLE Students
(
    s_id     CHAR(10) PRIMARY KEY,
    s_name   CHAR(50),
    s_login  CHAR(20),
    age      CHAR(3),
    gpa      REAL
);
GO

CREATE TABLE Faculty
(
    f_id    CHAR(10) PRIMARY KEY,
    f_name  CHAR(50),
    sal     REAL
);
GO

CREATE TABLE Courses
(
    c_id    CHAR(10) PRIMARY KEY,
    c_name  CHAR(50),
    credits INT
);
GO

CREATE TABLE Rooms
(
    r_no      INT PRIMARY KEY,
    r_address CHAR(100),
    capacity  INT
);
GO

CREATE TABLE Enrolled
(
    s_id    CHAR(10) FOREIGN KEY REFERENCES Students(s_id),
    c_id    CHAR(10) FOREIGN KEY REFERENCES Courses(c_id),
    grade   CHAR(20)
);
GO

CREATE TABLE Teaches
(
    f_id    CHAR(10) FOREIGN KEY REFERENCES Faculty(f_id),
    c_id    CHAR(10) FOREIGN KEY REFERENCES Courses(c_id)
);
GO

CREATE TABLE Meets_In
(
    c_id    CHAR(10) FOREIGN KEY REFERENCES Courses(c_id),
    r_no    INT FOREIGN KEY REFERENCES Rooms(r_no),
    at_time CHAR(20)
);
GO