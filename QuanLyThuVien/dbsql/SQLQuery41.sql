CREATE PROCEDURE spLayMuonTraSachByMaThe
    @MaThe INT
AS
BEGIN
    SELECT MaMuonSach, MaThe, TienDatCoc, GhiChu
    FROM MuonTraSach
    WHERE MaThe = @MaThe
END


CREATE PROCEDURE spLayMuonTraSachChiTietByMaThe
    @MaThe INT
AS
BEGIN
    SELECT MaMuonSach, MaCuonSach, NgayMuon, NgayHenTra, NgayTra, TrangThai, SoLuong
    FROM MuonTraSachChiTiet
    WHERE MaMuonSach IN (SELECT MaMuonSach FROM MuonTraSach WHERE MaThe = @MaThe)
END

CREATE PROCEDURE spLayMaCuonSachByMaDauSach
    @MaDauSach INT
AS
BEGIN
    SELECT TOP 1 MaCuonSach
    FROM CuonSach
    WHERE MaDauSach = @MaDauSach
END