
INSERT INTO [dbo].[Nxb] (TenNXB, GhiChu) VALUES 
('Nhà xuất bản Trẻ', 'Nhà xuất bản nổi tiếng về sách thiếu nhi.'),
('Nhà xuất bản Kim Đồng', 'Chuyên xuất bản sách cho thiếu nhi và thanh thiếu niên.'),
('Nhà xuất bản Văn học', 'Chuyên xuất bản sách văn học cổ điển và hiện đại.');


INSERT INTO [dbo].[TheLoai] (TenTheLoai) VALUES 
('Tiểu thuyết'),
('Khoa học'),
('Lịch sử'),
('Văn học thiếu nhi'),
('Tự truyện');


INSERT INTO [dbo].[DauSach] (MaNxb, MaTheLoai, TenSach, MoTa, TacGia, NamXuatBan, NgonNgu, Gia, loaiSach) VALUES 
(1, 1, 'Cô gái đến từ hôm qua', 'Một câu chuyện về tình yêu tuổi học trò.', 'Nguyễn Nhật Ánh', '2018-05-15', 'Tiếng Việt', 50000, 'Sách giấy'),
(2, 2, 'Lịch sử Việt Nam', 'Khái quát lịch sử Việt Nam qua các thời kỳ.', 'Trần Quốc Vượng', '2019-03-10', 'Tiếng Việt', 120000, 'Sách giấy'),
(3, 4, 'Harry Potter và Hòn đá phù thủy', 'Cuốn sách đầu tiên trong series Harry Potter.', 'J.K. Rowling', '2017-07-20', 'Tiếng Anh', 150000, 'Sách ngoại văn');

INSERT INTO [dbo].[CuonSach] (MaDauSach, ViTri, TrangThai) VALUES 
(1, 'Kệ A1', 'Còn'),
(1, 'Kệ A2', 'Còn'),
(2, 'Kệ B1', 'Đang mượn'),
(3, 'Kệ C1', 'Còn');

INSERT INTO [dbo].[DocGia] (TenDocGia, GioiTinh, NgaySinh, DiaChi, Email, SoDienThoai) VALUES 
('Nguyễn Văn A', 'Nam', '1990-01-01', 'Hà Nội', 'vana@gmail.com', '0123456789'),
('Trần Thị B', 'Nữ', '1995-05-10', 'Hồ Chí Minh', 'tranb@gmail.com', '0987654321'),
('Lê Văn C', 'Nam', '1988-12-15', 'Đà Nẵng', 'vanc@gmail.com', '0912345678');

INSERT INTO [dbo].[NhanVien] (HoVaTen, Email, SoDienThoai, NgaySinh) VALUES 
('Nguyễn Văn D', 'vand@gmail.com', '0123456789', '1985-06-20'),
('Trần Thị E', 'tranE@gmail.com', '0987654321', '1990-02-14');


INSERT INTO [dbo].[TaiKhoan] (Email, SoDienThoai, MatKhau) VALUES 
('user1@gmail.com', '0123456789', 'password1'),
('user2@gmail.com', '0987654321', 'password2');


INSERT INTO [dbo].[MuonTraSach] (MaThe, TienDatCoc, GhiChu) VALUES 
(1, 50000, 'Mượn sách trong 2 tuần'),
(2, 100000, 'Mượn sách trong 1 tháng');


INSERT INTO [dbo].[MuonTraSachChiTiet] (MaMuonSach, MaCuonSach, NgayMuon, NgayHenTra, TrangThai, SoLuong) VALUES 
(1, 1, '2025-03-01', '2025-03-15', 'Đang mượn', 1),
(2, 3, '2025-03-02', '2025-03-16', 'Đang mượn', 1);

INSERT INTO [dbo].[Log_TaiSach] (MaTaiKhoan, NgayTaiVe, MaCuonSach) VALUES 
(1, '2025-03-01', 1),
(2, '2025-03-02', 3);

INSERT INTO [dbo].[PhieuPhat] (MaNhanVien, MaThe, NgayLap, TienPhat) VALUES 
(1, 1, '2025-03-10', 20000),
(2, 2, '2025-03-11', 30000);


INSERT INTO [dbo].[PhongPhucVu] (TenPhong, GioBatDau, GioKetThuc) VALUES 
('Phòng đọc sách', '08:00:00', '17:00:00'),
('Phòng mượn sách', '08:00:00', '18:00:00');

INSERT INTO [dbo].[TheThuVien] (MaDocGia, NgayCapThe, NgayHetHan, TrangThai) VALUES 
(1, '2025-01-01', '2026-01-01', 1),
(2, '2025-02-01', '2026-02-01', 1);

-
INSERT INTO [dbo].[ThongBao] (TenThongBao, NoiDung, MaTaiKhoan) VALUES 
('Thông báo mượn sách', 'Xin vui lòng trả sách đúng hạn.', 1),
('Thông báo sự kiện', 'Tham gia sự kiện đọc sách vào cuối tuần này!', 2);
