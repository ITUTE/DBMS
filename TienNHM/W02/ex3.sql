-- Bài tập 3

CREATE DATABASE Company;
GO
USE Company;
GO

CREATE TABLE Emp
(
    eid     INT PRIMARY KEY,
    ename   NVARCHAR(30),
    age     INT,
    salary  REAL
);
GO

CREATE TABLE Dept
(
    did       INT PRIMARY KEY,
    dname     NVARCHAR(50),
    budget    REAL,
    managerid INT
);
GO

CREATE TABLE Works
(
    eid         INT,
    did         INT,
    pct_time    INT,
    CONSTRAINT FK_EmpWorks FOREIGN KEY (eid) REFERENCES Emp(eid),
    CONSTRAINT FK_DeptWorks FOREIGN KEY (did) REFERENCES Dept(did),
    CONSTRAINT PK_Works PRIMARY KEY (eid, did)
);
GO

-- Câu 3.3.	Dùng SQL định nghĩa lại quan hệ Dept 
-- sao cho mọi department được đảm bảo có một người quản lý.

CREATE TABLE Dept
(
    did       INT PRIMARY KEY,
    dname     NVARCHAR(50),
    budget    REAL,
    managerid INT NOT NULL
);
GO

-- Câu 3.4.	Viết một câu lệnh SQL để thêm nhân viên ‘John Doe’ 
-- với eid = 101, age = 32, và salary = 15.000

INSERT INTO Emp VALUES(101, 'John Doe', 32, 15.000);
GO

-- Câu 3.5.	Viết một câu lệnh SQL để tăng 10% lương cho mọi nhân viên.

UPDATE Emp
SET salary = salary * 1.1;
GO

-- Câu 3.6.	Viết câu lệnh SQL để xóa department ‘Toy’.

DELETE FROM Dept
WHERE dname = 'Toy';
GO

-- Vì Bảng Works_In, có cột did tham chiếu đến Dept(did). 
-- Do đó, khi xóa 1 record trong bảng Dept thì sẽ vi phạm toàn vẹn dữ liệu về tham chiếu.
-- Vì thế, câu truy vấn trên không thực hiện được trên SQL Server.







-- Câu 5
USE Company;
GO

-- Câu 5.1.	Định nghĩa một ràng buộc mức bảng trên Emp 
-- sao cho đảm bảo mọi nhân viên đều có lương ít nhất là 10.000.

ALTER TABLE Emp
ADD CONSTRAINT Con_Salary
CHECK (salary >= 10000);
GO

-- Câu 5.2.	Định nghĩa một ràng buộc mức bảng trên Dept
-- sao cho đảm bảo tất cả người quản lý đều có tuổi lớn hơn 30.

CREATE FUNCTION dbo.Check_Age(@managerid int)
RETURNS INT AS
BEGIN
    DECLARE @age INT;
    SET @age = (SELECT age FROM Emp WHERE Emp.eid = @managerid);
    IF @age > 30
        RETURN 1;
    RETURN 0;
END;
GO

ALTER TABLE Dept
ADD CONSTRAINT Con_Age
CHECK (dbo.Check_Age(managerid)=1);
GO

-- C2

CREATE FUNCTION dbo.AgeOfManager(@managerid int)
RETURNS INT AS
BEGIN
    DECLARE @age INT;
    SET @age = (SELECT Emp.age FROM Emp WHERE Emp.eid = @managerid);
	RETURN @age;
END;
GO

ALTER TABLE Dept
ADD CONSTRAINT Con_Age
CHECK (dbo.AgeOfManager(managerid) > 30);
GO

-- Câu 5.3.	Định nghĩa một assertion trên Dept sao cho đảm bảo là mọi người quản lý đều có tuổi lớn hơn 30

ALTER TABLE Dept DROP  CONSTRAINT Con_Age;
DROP FUNCTION dbo.Check_Age;

ALTER TABLE Dept
ADD ASSERTION Con_AgeOfManager 
CHECK (dbo.AgeOfManager(managerid) > 30);
GO

-- Câu 5.4.	Viết câu lệnh SQL để xóa tất cả thông tin về những Employees có lương cao hơn lương của người quản lý của họ. 
-- Phải đảm bảo là tất cả các ràng buộc toàn vẹn liên quan phải được thỏa mãn sau khi cập nhật.

-- Emp làm việc tại phòng nào?
-- Lương của quản lý phòng đó là bao nhiêu?

--CREATE FUNCTION dbo.GetSalaryOfManager(@managerid INT)
--RETURNS INT AS
--BEGIN
--    DECLARE @salary INT;
--    SET @salary = (SELECT Emp.salary FROM Emp WHERE Emp.eid = @managerid);
--    RETURN @salary;
--END
--GO

--DROP FUNCTION dbo.GetSalaryOfManager;
--GO

--ALTER TABLE Works 
--DROP CONSTRAINT FK_DeptWorks;

--ALTER TABLE Works 
--ADD CONSTRAINT FK_DeptWorks FOREIGN KEY (did) REFERENCES Dept(did)
--ON DELETE CASCADE;
--GO

CREATE FUNCTION dbo.GetSalaryOfManager(@eid INT)
RETURNS INT AS 
BEGIN
    DECLARE @did INT;
    SET @did = (SELECT did FROM Works WHERE eid = @eid);
    DECLARE @managerid INT;
    SET @managerid = (SELECT managerid FROM Dept WHERE did = @did);
    DECLARE @salary INT;
    SET @salary = (SELECT Emp.salary FROM Emp WHERE Emp.eid = @managerid);
    RETURN @salary;  
END
GO

CREATE PROCEDURE dbo.DeleteEmployees AS
BEGIN
    DECLARE @eid_table TABLE(eid INT NOT NULL);
    INSERT INTO @eid_table 
        SELECT eid
        FROM Emp
        WHERE salary > dbo.GetSalaryOfManager(eid);
    DELETE FROM Works 
    WHERE Works.eid IN (SELECT eid FROM @eid_table);
    DELETE FROM Emp 
    WHERE Emp.eid IN (SELECT eid FROM @eid_table);
END
GO

EXEC dbo.DeleteEmployees;
GO





-- Câu 7

-- Câu 7.1.	Mỗi nhân viên phải có lương tối thiểu là 1000
ALTER TABLE Emp
ADD CONSTRAINT CK_Salary CHECK (salary >= 1000);
GO

-- Câu 7.2.	Mọi người quản lý cũng là một nhân viên
ALTER TABLE Dept
ADD CONSTRAINT FK_Manager FOREIGN KEY (managerid) REFERENCES Emp(eid);
GO

-- Câu 7.3.	Tổng tỉ lệ % thời gian làm việc cho các phòng ban của một nhân viên phải dưới 100%.
CREATE FUNCTION dbo.SumPctTime(@eid INT)
RETURNS INT AS
BEGIN
    DECLARE @sum INT;
    SET @sum = 0;
    SELECT @sum = SUM(pct_time)
    FROM Works
    WHERE eid = @eid;
    RETURN @sum;
END
GO

ALTER TABLE Works
ADD CONSTRAINT CK_PctTime CHECK (dbo.SumPctTime(eid) < 100);
GO

-- Câu 7.4.	Một người quản lý phải luôn có lương cao hơn bất kỳ một nhân viên nào mà người đó quản lý.
CREATE FUNCTION dbo.GetSalaryOfManager(@eid INT)
RETURNS INT AS 
BEGIN
    DECLARE @did INT;
    SET @did = (SELECT did FROM Works WHERE eid = @eid);
    DECLARE @managerid INT;
    SET @managerid = (SELECT managerid FROM Dept WHERE did = @did);
    DECLARE @salary INT;
    SET @salary = (SELECT Emp.salary FROM Emp WHERE Emp.eid = @managerid);
    RETURN @salary;  
END
GO

ALTER TABLE Emp
ADD CONSTRAINT CK_SalaryEmp
CHECK (salary < dbo.GetSalaryOfManager(eid));
GO

-- Câu 7.5.	Bất cứ khi nào một nhân viên được tăng lương, lương người quản lý cũng phải được tăng  tương ứng.

CREATE TRIGGER trg_IncSalary ON Emp
AFTER UPDATE AS
BEGIN
    DECLARE @old_Salary INT;
    SELECT @old_Salary = salary FROM deleted WHERE eid = deleted.eid;

    DECLARE @new_Salary INT;
    SELECT @new_Salary = salary FROM inserted WHERE eid = inserted.eid;

    DECLARE @delta INT;
    SET @delta = @new_Salary - @old_Salary;

    UPDATE Emp
    SET salary = salary + @delta
    WHERE eid = 
END
GO

-- Câu 7.6.	Bất cứ khi nào một nhân viên được tăng lương, lương người quản lý cũng phải được tăng tương ứng. 
-- Hơn nữa, bất cứ khi nào một nhân viên được tăng lương, ngân sách của phòng ban tương ứng 
-- cũng phải được tăng lớn hơn tổng lương của tất cả nhân viên thuộc phòng đó.


--- Câu 8
-- Câu 8.1.	Một view có department name, manager name và manager salary của mọi phòng ban.
CREATE VIEW view_1 AS 
SELECT dname as [Department name], ename as [Manager name], salary as [Manager salary]
FROM Dept, Emp
WHERE managerid = eid
GO

-- Câu 8.2.	Một view có employee name, supervisor name và employee salary của mỗi nhân viên thuộc phòng ‘Research’
CREATE VIEW view_2 AS
SELECT Emp.ename AS [Employee name], T.ename AS [Supervisor name], salary AS [Employee salary]
FROM Emp,
    (SELECT ename
    FROM Dept, Emp
    WHERE managerid = eid AND dname = 'Research') AS T;
GO

-- Câu 8.3.	Một view có project name, controlling department name, number of employees 
-- và tổng số giờ được làm việc mỗi tuần của mỗi dự án.

