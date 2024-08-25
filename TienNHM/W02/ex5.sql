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

CREATE FUNCTION dbo.Check_Age(@e_id int)
RETURNS INT AS
BEGIN
    DECLARE @age INT;
    SELECT @age = age FROM Emp WHERE eid = @e_id;
    IF @age > 30
        RETURN 1
    RETURN 0
END;
GO

ALTER TABLE Dept
ADD CONSTRAINT Con_Age
CHECK (dbo.Check_Age(e_id)=1);
GO