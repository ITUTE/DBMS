USE DormitoryManagement;
GO

--Lấy thông tin chi tiết các dịch vụ
CREATE OR ALTER PROC [dbo].[USP_GetServicesInfo]
AS
BEGIN
	SELECT s.SERVICE_ID, s.SERVICE_NAME, s.PRICE_PER_UNIT, u.UNIT_NAME
	FROM DBO.SERVICE s INNER JOIN dbo.UNIT u ON s.UNIT_ID = u.UNIT_ID;
END
GO

create DATABASE QuanLy;
Go


-- ------------------

use quanly;

create TABLE Emp(
	eid int PRIMARY KEY,
	ename string,
	age int,
	salary real,
	did int,
	constraint fk_did FOREIGN key (did) REFERENCES Dep(did)
);

GO

create FUNCTION Max()
RETURNS TABLE AS
RETURN
(
	SELECT Emp.name, MaxLuong
	FROM Emp, 
		(SELECT MAX(Emp.Salary) AS MaxLuong
		FROM Emp
		GROUP BY Emp.did) AS T
	WHERE Emp.did = T.did AND Emp.Salary = MaxLuong
);