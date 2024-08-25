create database Test;
use Test;
Go

-- 2. Stored procedure liệt kê những thông tin của đầu sách, thông tin tựa sách và số lượng sách hiện chưa được mượn của một đầu sách cụ thể (ISBN).
create proc usp_SL_SachChuaMuon
	@isbn varchar(10)
as
	select Dausach.ma_tuasach, Dausach.ngonngu, Dausach.trangthai, 
		Tuasach.tuasach, Tuasach.tacgia, Tuasach.tomtat, 
		T.SoLuong
	from Dausach, Tuasach, 
		(select Cuonsach.isbn, COUNT(*) as SoLuong
		from Cuonsach
		where Cuonsach.tinhtrang = '0' and Cuonsach.isbn=@isbn
		group by Cuonsach.isbn) as T
	where Dausach.isbn = T.isbn and Tuasach.ma_tuasach = Dausach.ma_tuasach;

exec usp_SL_SachChuaMuon @isbn='123';
go


-- 3.	Viết hàm tính tuổi của người có năm sinh được nhập vào như một tham số của hàm.
create function ufn_TinhTuoi(@year int)
returns int as
begin
	return YEAR(getdate()) - @year
end;
go

select dbo.ufn_TinhTuoi(2000);