-- 2
CREATE PROCEDURE usp_TT_DauSach
    @ISBN VARCHAR(10)
AS
    SELECT COUNT(*) AS SoLuong
    FROM CuonSach
    WHERE TinhTrang = '0';

EXECUTE usp_TT_DauSach "123";
GO