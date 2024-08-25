-- Câu 4

CREATE DATABASE Company;
GO
USE Company;
GO

CREATE TABLE Employees
(
    ssn     INT PRIMARY KEY,
    salary  REAL,
    phone   CHAR(15)
);
GO

CREATE TABLE Departments
(
    dno       INT PRIMARY KEY,
    dname     CHAR(30),
    budget    REAL,
    managerid INT REFERENCES Employees(ssn)
);
GO

CREATE TABLE Child
(
    ssn     INT FOREIGN KEY REFERENCES Employees(ssn),
    cname   CHAR(30),
    age     INT,
    CONSTRAINT PK_Child PRIMARY KEY (ssn, cname)
);
GO

CREATE TABLE Works_In
(
    ssn INT FOREIGN KEY REFERENCES Employees(ssn),
    dno INT FOREIGN KEY REFERENCES Departments(dno),
    CONSTRAINT PK_WorksIn PRIMARY KEY (ssn, dno)
);
GO
