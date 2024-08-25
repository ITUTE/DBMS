-- Câu 9
--- Câu 9.a
SELECT *
FROM DEPT_SUMMARY;

SELECT Dno AS D, COUNT(*) AS C, SUM(Salary) AS Total_s, AVG(Salary) AS Average_s
FROM Employee
GROUP BY Dno;

--- Câu 9.b
SELECT D, C
FROM DEPT_SUMMARY
WHERE TOTAL_S > 100000;

SELECT tmp.D AS D, tmp.C AS C
FROM
    (SELECT Dno AS D, COUNT(*) AS C, SUM(Salary) AS Total_s
    FROM Employee
    GROUP BY Dno) AS tmp
WHERE tmp.TOTAL_S > 100000;

--- Câu 9.c
---- Tìm mã phòng và Lương trung bình của phòng có số nhân viên nhiều hơn phòng 0.

SELECT D, AVERAGE_S
FROM DEPT_SUMMARY
WHERE C > (SELECT C FROM DEPT_SUMMARY WHERE D = 0);

WITH TmpTable AS
(
    SELECT  Dno AS D, 
            COUNT(*) AS C, 
            SUM(Salary) AS Total_s, 
            AVG(Salary) AS Average_s
    FROM Employee
    GROUP BY Dno
)
SELECT  TmpTable.D AS D, 
        TmpTable.Average_s AS AVERAGE_S
FROM TmpTable   
WHERE TmpTable.C > (SELECT TmpTable.C 
                    FROM TmpTable 
                    WHERE TmpTable.D = 0);

--- Câu 9.d
UPDATE DEPT_SUMMARY
SET D = 3
WHERE D = 4;

--- Câu 9.e
DELETE FROM DEPT_SUMMARY
WHERE C > 4;