USE [QuanLyThuVien]
GO
/****** Object:  User [DESKTOP1006\IT 1006]    Script Date: 4/28/2019 11:22:47 AM ******/
CREATE USER [DESKTOP1006\IT 1006] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[CuonSach]    Script Date: 4/28/2019 11:22:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuonSach](
	[MaCuonSach] [int] IDENTITY(1,1) NOT NULL,
	[MaDauSach] [int] NULL,
	[ViTri] [nvarchar](100) NULL,
	[TrangThai] [nvarchar](100) NULL,
 CONSTRAINT [PK_CuonSach] PRIMARY KEY CLUSTERED 
(
	[MaCuonSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DauSach]    Script Date: 4/28/2019 11:22:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DauSach](
	[MaDauSach] [int] IDENTITY(1,1) NOT NULL,
	[MaNxb] [int] NULL,
	[MaTheLoai] [int] NULL,
	[TenSach] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](500) NULL,
	[TacGia] [nvarchar](100) NULL,
	[AnhTacGia] [image] NULL,
	[NamXuatBan] [date] NULL,
	[NgonNgu] [nvarchar](100) NULL,
	[AnhBia] [image] NULL,
	[TrangThai] [nvarchar](100) NULL,
	[Gia] [int] NULL,
	[filePDF] [varbinary](max) NULL,
	[loaiSach] [nvarchar](50) NULL,
 CONSTRAINT [PK_DauSach] PRIMARY KEY CLUSTERED 
(
	[MaDauSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__DauSach__CA6B7B8925899960] UNIQUE NONCLUSTERED 
(
	[TenSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 4/28/2019 11:22:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDocGia] [int] IDENTITY(1,1) NOT NULL,
	[TenDocGia] [nvarchar](100) NOT NULL,
	[GioiTinh] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[SoDienThoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocGia] PRIMARY KEY CLUSTERED 
(
	[MaDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SoDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TenDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log_TaiSach]    Script Date: 4/28/2019 11:22:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_TaiSach](
	[idLog_TaiSach] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [int] NULL,
	[NgayTaiVe] [date] NULL,
	[MaCuonSach] [int] NULL,
 CONSTRAINT [PK_Log_TaiSach] PRIMARY KEY CLUSTERED 
(
	[idLog_TaiSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuonTraSach]    Script Date: 4/28/2019 11:22:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuonTraSach](
	[MaMuonSach] [int] IDENTITY(1,1) NOT NULL,
	[MaThe] [int] NULL,
	[TienDatCoc] [int] NULL,
	[GhiChu] [nvarchar](1500) NULL,
 CONSTRAINT [PK_MuonTraSach] PRIMARY KEY CLUSTERED 
(
	[MaMuonSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuonTraSachChiTiet]    Script Date: 4/28/2019 11:22:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuonTraSachChiTiet](
	[MaMuonSach] [int] NOT NULL,
	[MaCuonSach] [int] NOT NULL,
	[NgayMuon] [date] NULL,
	[NgayHenTra] [date] NULL,
	[NgayTra] [date] NULL,
	[TrangThai] [nvarchar](100) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_MuonTraSachChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaMuonSach] ASC,
	[MaCuonSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/28/2019 11:22:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[HoVaTen] [nvarchar](100) NULL,
	[Email] [varchar](100) NULL,
	[SoDienThoai] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[MaTaiKhoan] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[HoVaTen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[SoDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nxb]    Script Date: 4/28/2019 11:22:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nxb](
	[MaNXB] [int] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](1500) NULL,
 CONSTRAINT [PK_Nxb] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TenNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuPhat]    Script Date: 4/28/2019 11:22:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuPhat](
	[IDPhieuPhat] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NULL,
	[MaThe] [int] NULL,
	[NgayLap] [date] NULL,
	[TienPhat] [int] NULL,
 CONSTRAINT [PK_PhieuPhat] PRIMARY KEY CLUSTERED 
(
	[IDPhieuPhat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongPhucVu]    Script Date: 4/28/2019 11:22:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongPhucVu](
	[IDPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](100) NULL,
	[GioBatDau] [time](7) NULL,
	[GioKetThuc] [time](7) NULL,
	[MaNhanVien] [int] NULL,
 CONSTRAINT [PK_PhongPhucVu] PRIMARY KEY CLUSTERED 
(
	[IDPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__PhongPhu__AE382B29713DF65C] UNIQUE NONCLUSTERED 
(
	[TenPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyenHan]    Script Date: 4/28/2019 11:22:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyenHan](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](100) NULL,
 CONSTRAINT [PK_QuyenHan] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TenQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](100) NULL,
	[MatKhau] [nvarchar](100) NULL,
	[Avartar] [image] NULL,
	[IDQuyen] [int] NULL,
	[MaThe] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__TaiKhoan__0389B7BD4840DC04] UNIQUE NONCLUSTERED 
(
	[SoDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__TaiKhoan__A9D1053475E1777B] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TenTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheThuVien]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheThuVien](
	[MaThe] [int] IDENTITY(1,1) NOT NULL,
	[MaDocGia] [int] NULL,
	[NgayCapThe] [date] NULL,
	[NgayHetHan] [date] NULL,
	[TrangThai] [bit] NULL,
	[SoSachDuocMuon] [int] NULL,
	[SoSachDangMuon] [int] NULL,
 CONSTRAINT [PK_TheThuVien] PRIMARY KEY CLUSTERED 
(
	[MaThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[IDThongBao] [int] IDENTITY(1,1) NOT NULL,
	[TenThongBao] [nvarchar](100) NOT NULL,
	[NoiDung] [nvarchar](1500) NULL,
	[HinhAnh] [image] NULL,
	[MaTaiKhoan] [int] NOT NULL,
 CONSTRAINT [PK_ThongBao] PRIMARY KEY CLUSTERED 
(
	[IDThongBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CuonSach] ADD  DEFAULT (N'Trên kệ(^_^)') FOR [ViTri]
GO
ALTER TABLE [dbo].[CuonSach] ADD  DEFAULT (N'Sẵn sàng') FOR [TrangThai]
GO
ALTER TABLE [dbo].[DauSach] ADD  CONSTRAINT [DF__DauSach__NamXuat__108B795B]  DEFAULT (getdate()) FOR [NamXuatBan]
GO
ALTER TABLE [dbo].[DauSach] ADD  CONSTRAINT [DF__DauSach__TrangTh__117F9D94]  DEFAULT (N'Sẵn sàng') FOR [TrangThai]
GO
ALTER TABLE [dbo].[DauSach] ADD  CONSTRAINT [DF__DauSach__Gia__1273C1CD]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[DocGia] ADD  DEFAULT (N'Nam') FOR [GioiTinh]
GO
ALTER TABLE [dbo].[DocGia] ADD  DEFAULT ('19990909') FOR [NgaySinh]
GO
ALTER TABLE [dbo].[DocGia] ADD  DEFAULT ('None') FOR [DiaChi]
GO
ALTER TABLE [dbo].[Log_TaiSach] ADD  DEFAULT (getdate()) FOR [NgayTaiVe]
GO
ALTER TABLE [dbo].[MuonTraSachChiTiet] ADD  CONSTRAINT [DF__MuonTraSa__Trang__2C3393D0]  DEFAULT (N'Đang mượn') FOR [TrangThai]
GO
ALTER TABLE [dbo].[MuonTraSachChiTiet] ADD  CONSTRAINT [DF__MuonTraSa__SoLuo__2D27B809]  DEFAULT ((1)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[Nxb] ADD  DEFAULT (N'Không ghi chú cái gì à???') FOR [GhiChu]
GO
ALTER TABLE [dbo].[PhieuPhat] ADD  DEFAULT (getdate()) FOR [NgayLap]
GO
ALTER TABLE [dbo].[PhieuPhat] ADD  DEFAULT ((10000)) FOR [TienPhat]
GO
ALTER TABLE [dbo].[PhongPhucVu] ADD  CONSTRAINT [DF__PhongPhuc__GioBa__4222D4EF]  DEFAULT ('08:00 AM') FOR [GioBatDau]
GO
ALTER TABLE [dbo].[PhongPhucVu] ADD  CONSTRAINT [DF__PhongPhuc__GioKe__4316F928]  DEFAULT ('16:30 PM') FOR [GioKetThuc]
GO
ALTER TABLE [dbo].[TaiKhoan] ADD  CONSTRAINT [DF__TaiKhoan__MatKha__32E0915F]  DEFAULT ('123456') FOR [MatKhau]
GO
ALTER TABLE [dbo].[TaiKhoan] ADD  CONSTRAINT [DF__TaiKhoan__IDQuye__33D4B598]  DEFAULT ((1)) FOR [IDQuyen]
GO
ALTER TABLE [dbo].[TheThuVien] ADD  DEFAULT (getdate()) FOR [NgayCapThe]
GO
ALTER TABLE [dbo].[TheThuVien] ADD  DEFAULT (getdate()+(365)) FOR [NgayHetHan]
GO
ALTER TABLE [dbo].[TheThuVien] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[TheThuVien] ADD  DEFAULT ((10)) FOR [SoSachDuocMuon]
GO
ALTER TABLE [dbo].[TheThuVien] ADD  DEFAULT ((0)) FOR [SoSachDangMuon]
GO
ALTER TABLE [dbo].[ThongBao] ADD  CONSTRAINT [DF__ThongBao__TenTho__0B91BA14]  DEFAULT (N'Điền cái tiêu đề vào') FOR [TenThongBao]
GO
ALTER TABLE [dbo].[ThongBao] ADD  CONSTRAINT [DF__ThongBao__NoiDun__0C85DE4D]  DEFAULT (N'Không có nội dung thông báo à, chém giớ vãi') FOR [NoiDung]
GO
ALTER TABLE [dbo].[ThongBao] ADD  CONSTRAINT [DF__ThongBao__MaTaiK__0E6E26BF]  DEFAULT ((1)) FOR [MaTaiKhoan]
GO
ALTER TABLE [dbo].[CuonSach]  WITH CHECK ADD  CONSTRAINT [FK_CuonSach_DauSach] FOREIGN KEY([MaDauSach])
REFERENCES [dbo].[DauSach] ([MaDauSach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CuonSach] CHECK CONSTRAINT [FK_CuonSach_DauSach]
GO
ALTER TABLE [dbo].[DauSach]  WITH CHECK ADD  CONSTRAINT [FK_DauSach_Nxb] FOREIGN KEY([MaNxb])
REFERENCES [dbo].[Nxb] ([MaNXB])
GO
ALTER TABLE [dbo].[DauSach] CHECK CONSTRAINT [FK_DauSach_Nxb]
GO
ALTER TABLE [dbo].[DauSach]  WITH CHECK ADD  CONSTRAINT [FK_DauSach_TheLoai] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[DauSach] CHECK CONSTRAINT [FK_DauSach_TheLoai]
GO
ALTER TABLE [dbo].[Log_TaiSach]  WITH CHECK ADD  CONSTRAINT [FK_Log_TaiSach_CuonSach] FOREIGN KEY([MaCuonSach])
REFERENCES [dbo].[CuonSach] ([MaCuonSach])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Log_TaiSach] CHECK CONSTRAINT [FK_Log_TaiSach_CuonSach]
GO
ALTER TABLE [dbo].[Log_TaiSach]  WITH CHECK ADD  CONSTRAINT [FK_Log_TaiSach_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Log_TaiSach] CHECK CONSTRAINT [FK_Log_TaiSach_TaiKhoan]
GO
ALTER TABLE [dbo].[MuonTraSach]  WITH CHECK ADD  CONSTRAINT [FK_MuonTraSach_TheThuVien] FOREIGN KEY([MaThe])
REFERENCES [dbo].[TheThuVien] ([MaThe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MuonTraSach] CHECK CONSTRAINT [FK_MuonTraSach_TheThuVien]
GO
ALTER TABLE [dbo].[MuonTraSachChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_MuonTraSachChiTiet_CuonSach] FOREIGN KEY([MaCuonSach])
REFERENCES [dbo].[CuonSach] ([MaCuonSach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MuonTraSachChiTiet] CHECK CONSTRAINT [FK_MuonTraSachChiTiet_CuonSach]
GO
ALTER TABLE [dbo].[MuonTraSachChiTiet]  WITH CHECK ADD  CONSTRAINT [FK_MuonTraSachChiTiet_MuonTraSach] FOREIGN KEY([MaMuonSach])
REFERENCES [dbo].[MuonTraSach] ([MaMuonSach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MuonTraSachChiTiet] CHECK CONSTRAINT [FK_MuonTraSachChiTiet_MuonTraSach]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[PhieuPhat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuPhat_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuPhat] CHECK CONSTRAINT [FK_PhieuPhat_NhanVien]
GO
ALTER TABLE [dbo].[PhieuPhat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuPhat_TheThuVien] FOREIGN KEY([MaThe])
REFERENCES [dbo].[TheThuVien] ([MaThe])
GO
ALTER TABLE [dbo].[PhieuPhat] CHECK CONSTRAINT [FK_PhieuPhat_TheThuVien]
GO
ALTER TABLE [dbo].[PhongPhucVu]  WITH CHECK ADD  CONSTRAINT [FK_PhongPhucVu_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[PhongPhucVu] CHECK CONSTRAINT [FK_PhongPhucVu_NhanVien]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_QuyenHan] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[QuyenHan] ([IDQuyen])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_QuyenHan]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_TheThuVien] FOREIGN KEY([MaThe])
REFERENCES [dbo].[TheThuVien] ([MaThe])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_TheThuVien]
GO
ALTER TABLE [dbo].[TheThuVien]  WITH CHECK ADD  CONSTRAINT [FK_TheThuVien_DocGia] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DocGia] ([MaDocGia])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TheThuVien] CHECK CONSTRAINT [FK_TheThuVien_DocGia]
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [FK_ThongBao_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [FK_ThongBao_TaiKhoan]
GO
ALTER TABLE [dbo].[MuonTraSach]  WITH CHECK ADD CHECK  (([TienDatCoc]>=(0)))
GO
/****** Object:  StoredProcedure [dbo].[LayMotTaiKhoan]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create proc [dbo].[LayMotTaiKhoan]
	@maTaiKhoan int 
	as
	begin
		select *from dbo.TaiKhoan
		where MaTaiKhoan=@maTaiKhoan
	end
	--Xoa tai khoan-
GO
/****** Object:  StoredProcedure [dbo].[LayPhieuPhat]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  proc [dbo].[LayPhieuPhat]
@idPhieuPhat int,
@maNhanVien int,
@maThe int,
@ngayLap Date,
@tienPhat int,
@statementType nvarchar(10)
as
begin
	if(@statementType='INSERT')
		begin
			insert dbo.PhieuPhat(maNhanVien, maThe,ngayLap, tienPhat)
			values(
					@maNhanVien,
					@maThe,
					@ngayLap,
					@tienPhat
					)
		end
	else if(@statementType='UPDATE')
		begin
			update dbo.PhieuPhat set
			MaNhanVien=@maNhanVien,
			MaThe=@maThe,
			NgayLap=@ngayLap,
			TienPhat=@tienPhat
			where IDPhieuPhat=@idPhieuPhat

		end
end
--lay Phieu phat--
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddAll]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAutoAddAll]
AS
BEGIN
	EXECUTE dbo.spAutoAddNXB;
	EXECUTE dbo.spAutoAddTheLoai;
	EXECUTE dbo.spAutoAddPhongPhucVu;
	EXECUTE dbo.spAutoAddDauSach;
	EXECUTE dbo.spAutoAddCuonSach;

	EXECUTE dbo.spAutoAddDocGia;
	EXECUTE dbo.spAutoAddTheThuVien;
	EXECUTE dbo.spAutoAddQuyenHan;
	EXECUTE dbo.spAutoAddTaiKhoan;
	EXECUTE dbo.spAutoAddThongBao;

	EXECUTE dbo.spAutoAddLog_TaiSach;
	EXECUTE dbo.spAutoAddNhanVien;
	EXECUTE dbo.spAutoAddMuonTra;
	EXECUTE dbo.spAutoAddMuonTraChiTiet;
	EXECUTE dbo.spAutoAddPhieuPhat;
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddCuonSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAutoAddCuonSach]
AS 
BEGIN
	DBCC CHECKIDENT (CuonSach,RESEED,0)
	DECLARE @i NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO  dbo.CuonSach
		        ( MaDauSach  )
		VALUES  ( @i)
		SET @i =@i+1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddDauSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAutoAddDauSach]
AS 
BEGIN
	DBCC CHECKIDENT (DauSach,RESEED,0)
	DELETE dbo.DauSach WHERE NgonNgu = 'Vietnamese'
	DECLARE @i NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO  dbo.DauSach
		        ( MaNxb ,  MaTheLoai , TenSach ,
				MoTa, TacGia , AnhTacGia,
		          NgonNgu , AnhBia ,  Gia , filePDF
		        )
		VALUES  ( @i , -- MaNxb - int
		          @i , -- MaTheLoai - int
		          N'Đắc Nhân Tâm '+@i  , -- TenSach - nvarchar(100)
				  N'Sách hay' +@i,
		          N'Dale Carnegie '+@i  , -- TacGia - nvarchar(100)
				  NULL,
		          N'Vietnamese' , -- NgonNgu - nvarchar(100)
				  NULL , -- AnhBia - image
		          68000 , -- Gia - int
		          NULL  -- filePDF - varchar(100)
		        )
		SET @i =@i+1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddDocGia]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAutoAddDocGia]
AS 
BEGIN
	DBCC CHECKIDENT (DocGia,RESEED,0)
	DECLARE @tenDocGia NVARCHAR(100) = N'Hoàng Tấn ';
	DECLARE @email NVARCHAR(100) = N'it';
	DECLARE @soDienThoai NVARCHAR(100) = N'09838000';
	DECLARE @i NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO dbo.DocGia ( TenDocGia ,  Email ,  SoDienThoai )
	VALUES  ( 
			@tenDocGia +@i , -- TenDocGia - nvarchar(100)
			@email + @i + N'@gmail.com' , -- Email - nvarchar(100)
			@soDienThoai +@i  -- SoDienThoai - nvarchar(100)
			)
		SET @i =@i+1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddLog_TaiSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAutoAddLog_TaiSach]
AS 
BEGIN
	DBCC CHECKIDENT (Log_TaiSach,RESEED,0)
	DECLARE @i NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO dbo.Log_TaiSach
		        (  MaTaiKhoan ,MaCuonSach )
		VALUES  ( @i,@i)
		SET @i =@i+1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddMuonTra]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAutoAddMuonTra]
AS 
BEGIN
	DBCC CHECKIDENT (MuonTraSach,RESEED,0)
	DECLARE @i NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO dbo.MuonTraSach
		        ( MaThe ,TienDatCoc , GhiChu )
		VALUES  ( @i,150000,N'Có gì đâu mà ghi chú' )
		SET @i =@i+1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddMuonTraChiTiet]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[spAutoAddMuonTraChiTiet]
AS 
BEGIN
	DBCC CHECKIDENT (MuonTraSachChiTiet,RESEED,0)
	DECLARE @i NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO dbo.MuonTraSachChiTiet
		        ( MaMuonSach , MaCuonSach )
		VALUES  ( @i,@i)
		SET @i =@i+1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddNhanVien]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAutoAddNhanVien]
AS 
BEGIN
	DBCC CHECKIDENT (NhanVien,RESEED,0)
	DECLARE @i NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO dbo.NhanVien
		        ( HoVaTen ,
		          Email ,
		          SoDienThoai ,
		          NgaySinh ,
		          MaTaiKhoan
		        )
		VALUES  ( N'Hoàng Tấn ' +@i , -- HoVaTen - nvarchar(100)
		          'it10' +@i+@i+@i +N'@gmail.com' , -- Email - varchar(100)
		          N'8520000'+@i , -- SoDienThoai - nvarchar(100)
		          GETDATE()-12000 , -- NgaySinh - date
		          @i  -- MaTaiKhoan - int
		        )
		SET @i =@i+1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddNXB]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAutoAddNXB]
AS 
BEGIN
	DBCC CHECKIDENT (Nxb,RESEED,0)
	DECLARE @tenDocGia NVARCHAR(100) = N'Hoàng Tấn ';
	DECLARE @email NVARCHAR(100) = N'it';
	DECLARE @soDienThoai NVARCHAR(100) = N'09838000';
	DECLARE @i NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO dbo.Nxb
		        ( TenNXB )
		VALUES  ( N'Kim Đồng ' + @i)
		SET @i =@i+1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddPhieuPhat]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAutoAddPhieuPhat]
AS 
BEGIN
	DBCC CHECKIDENT (PhieuPhat,RESEED,0)
	DECLARE @tenDocGia NVARCHAR(100) = N'Hoàng Tấn ';
	DECLARE @email NVARCHAR(100) = N'it';
	DECLARE @soDienThoai NVARCHAR(100) = N'09838000';
	DECLARE @i NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO dbo.PhieuPhat
		        ( MaNhanVien ,MaThe )
		VALUES  ( 
		          @i , -- MaNhanVien - int
		          @i -- MaThe - int
		        )
		SET @i =@i+1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddPhongPhucVu]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAutoAddPhongPhucVu]
AS 
BEGIN
	DBCC CHECKIDENT (PhongPhucVu,RESEED,0)
	DECLARE @i NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO dbo.PhongPhucVu
		        ( TenPhong , MaNhanVien )
		VALUES  ( N'Phòng đọc số '+@i, @i )
		SET @i =@i+1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddQuyenHan]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAutoAddQuyenHan]
AS 
BEGIN
	DBCC CHECKIDENT (QuyenHan,RESEED,0)
	DECLARE @tenDocGia NVARCHAR(100) = N'Hoàng Tấn ';
	DECLARE @email NVARCHAR(100) = N'it';
	DECLARE @soDienThoai NVARCHAR(100) = N'09838000';
	DECLARE @i NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO dbo.QuyenHan
		        ( TenQuyen )
		VALUES  ( N'Quyền hạn' +@i   )
		SET @i =@i+1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddTaiKhoan]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAutoAddTaiKhoan]
AS 
BEGIN
	DBCC CHECKIDENT (TaiKhoan,RESEED,0)
	DECLARE @i NVARCHAR(10) = 1
	DECLARE @j NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO dbo.TaiKhoan
		        ( Email ,SoDienThoai ,IDQuyen , MaThe)
		VALUES  ( N'it16'+@j+@i, N'01852000'+@i,@j, @i )
		SET @i =@i+1
		SET @j = @i/10 +1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddTheLoai]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAutoAddTheLoai]
AS 
BEGIN
	DBCC CHECKIDENT (TheLoai,RESEED,0)
	DECLARE @tenDocGia NVARCHAR(100) = N'Hoàng Tấn ';
	DECLARE @email NVARCHAR(100) = N'it';
	DECLARE @soDienThoai NVARCHAR(100) = N'09838000';
	DECLARE @i NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO dbo.TheLoai
		        ( TenTheLoai )
		VALUES  ( N'Kinh Điển '+@i )
		SET @i =@i+1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddTheThuVien]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAutoAddTheThuVien]
AS 
BEGIN
	DELETE dbo.TheThuVien WHERE TrangThai = 1
	DBCC CHECKIDENT (TheThuVien,RESEED,0)
	DECLARE @i NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO  dbo.TheThuVien( MaDocGia  )
		VALUES ( @i)
		SET @i = @i +1;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spAutoAddThongBao]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spAutoAddThongBao]
AS 
BEGIN
	DELETE dbo.ThongBao WHERE TenThongBao = N'Điền cái tiêu đề vào'
	DBCC CHECKIDENT (ThongBao,RESEED,0)
	DECLARE @i NVARCHAR(10) = 1
	WHILE @i <=9
	BEGIN
		INSERT INTO dbo.ThongBao
		        ( MaTaiKhoan )
		VALUES  ( @i )
		SET @i =@i+1
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spCuonSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spCuonSach]
@maCuonSach int,
@maDauSach int,
@viTri nvarchar(100),
@trangThai nvarchar(100),
@statementType nvarchar(10)
as
begin
	if(@statementType='INSERT')
		begin
			insert dbo.CuonSach(maDauSach, viTri, trangThai)
			values(
					@maDauSach,
					@viTri,
					@trangThai
					)

		end
	else if(@statementType='UPDATE')
		begin
			update dbo.CuonSach set
			MaDauSach=@maDauSach,
			ViTri=@viTri,
			TrangThai=@trangThai
			where MaCuonSach=@maCuonSach
		end
end
--Lay cuon sach--
GO
/****** Object:  StoredProcedure [dbo].[spDauSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spDauSach]
@maDauSach INT,
@maNxb INT,
@maTheLoai INT,
@tenSach NVARCHAR(100),
@moTa NVARCHAR(100),
@tacGia NVARCHAR(100),
@anhTacGia IMAGE,
@namXuatBan DATE,
@ngonNgu NVARCHAR(100),
@anhBia IMAGE,
@trangThai NVARCHAR(100),
@gia FLOAT,
@filePDF VARBINARY(MAX),
@loaiSach NVARCHAR(50),
@stamentType NVARCHAR(10)
AS
BEGIN
	IF	@stamentType = 'INSERT'
	BEGIN
		INSERT dbo.DauSach
		        ( MaNxb ,
		          MaTheLoai ,
		          TenSach ,
				  MoTa,
		          TacGia ,
				  AnhTacGia,
		          NamXuatBan ,
		          NgonNgu ,
		          AnhBia ,
		          TrangThai ,
		          Gia ,
		          filePDF,
				  loaiSach
		        )
		VALUES  ( @maNxb , -- MaNxb - int
		          @maTheLoai , -- MaTheLoai - int
		          @tenSach , -- TenSach - nvarchar(100)
				  @moTa,
		          @tacGia , -- TacGia - nvarchar(100)
				  @anhTacGia,
		          @namXuatBan , -- NamXuatBan - date
		          @ngonNgu , -- NgonNgu - nvarchar(100)
		          @anhBia , -- AnhBia - image
		          @trangThai , -- TrangThai - nvarchar(100)
		          @gia , -- Gia - int
		          @filePDF,  -- filePDF - varchar(100)
				  @loaiSach
		        )
	END
	ELSE IF(@stamentType =  'UPDATE')
	BEGIN
		UPDATE dbo.DauSach SET 
		MaNxb = @maNxb,
		MaTheLoai = @maTheLoai,
		TenSach = @tenSach,
		MoTa = @moTa,
		TacGia = @tacGia,
		AnhTacGia= @anhTacGia,
		NamXuatBan = @namXuatBan,
		NgonNgu = @ngonNgu,
		AnhBia = @anhBia,
		TrangThai = @trangThai,
		Gia =  @gia,
		filePDF = @filePDF,
		loaiSach = @loaiSach
		WHERE MaDauSach = @maDauSach
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spDocGia]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spDocGia]
@maDocGia int,
@tenDocGia nvarchar(100),
@gioiTinh nvarchar(100),
@ngaySinh Date,
@diaChi nvarchar(100),
@eMail nvarchar(100),
@soDienThoai nvarchar(100),
@statementType nvarchar(10)
as
begin
	if(@statementType='INSERT')
		begin
			insert dbo.DocGia(tenDocGia, gioiTinh, ngaySinh, diaChi, eMail, soDienThoai)
			values(
					@tenDocGia,
					@gioiTinh,
					@ngaySinh,
					@diaChi,
					@eMail,
					@soDienThoai
					);
			
			SELECT TOP 1 @maDocGia = MaDocGia  FROM dbo.DocGia  ORDER BY MaDocGia DESC
			INSERT INTO dbo.TheThuVien ( MaDocGia, NgayCapThe , NgayHetHan , 
			TrangThai 
			        )
			VALUES  ( @maDocGia,
			          GETDATE() , -- NgayCapThe - date
			          (getdate()+(365)) , -- NgayHetHan - date
			          1 -- TrangThai - bit
			        )
			DECLARE @maThe NVARCHAR(50)
			SELECT TOP 1 @maThe = MaThe  FROM dbo.TheThuVien  ORDER BY MaThe DESC
			INSERT INTO dbo.TaiKhoan
			        ( Email ,
			          SoDienThoai ,
			          MatKhau ,
			          Avartar ,
			          IDQuyen ,
			          MaThe
			        )
			VALUES  ( @eMail , -- Email - nvarchar(100)
			          @soDienThoai , -- SoDienThoai - varchar(100)
			          @soDienThoai , -- MatKhau - nvarchar(100)
			          NULL , -- Avartar - image
			          1 , -- IDQuyen - int
			          @maThe  -- MaThe - int
			        )
			
			
		end
	else if(@statementType='UPDATE')
		begin
			update dbo.DocGia set
			TenDocGia=@tenDocGia,
			GioiTinh=@gioiTinh,
			NgaySinh=@ngaySinh,
			DiaChi=@diaChi,
			Email=@eMail,
			SoDienThoai=@soDienThoai
			where MaDocGia=@maDocGia
		end
end
--Lay Doc Gia--
GO
/****** Object:  StoredProcedure [dbo].[spLayCuonSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spLayCuonSach]
as
begin
	select *from dbo.CuonSach
	order by MaCuonSach
end
--Lay 1 Cuon Sach--
GO
/****** Object:  StoredProcedure [dbo].[spLayCuonSachPhanTrang]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayCuonSachPhanTrang]
@soBatDau INT,
@soKetThuc INT,
@MaDauSach INT,
@sort NVARCHAR(100),
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @MaDauSach <> 0
	BEGIN
		SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
					FROM dbo.CuonSach
					WHERE MaDauSach = @MaDauSach
				) AS CuonSachTable
		WHERE CuonSachTable.MaDauSach = @MaDauSach
		AND CuonSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY CuonSachTable.MaDauSach	
	END
	ELSE IF @search <> N'default'
	BEGIN
		IF @sort <> N'default'
		BEGIN
			IF @sort = 'AZ'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
						FROM dbo.CuonSach
						WHERE MaDauSach LIKE @likeSearch
						OR ViTri LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
				
					) AS CuonSachTable
					WHERE CuonSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY CuonSachTable.MaDauSach ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
						FROM dbo.CuonSach
						WHERE MaDauSach LIKE @likeSearch
						OR ViTri LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
				
					) AS CuonSachTable
					WHERE CuonSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY CuonSachTable.MaDauSach DESC
				END
			ELSE IF @sort = 'ViTri'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
						FROM dbo.CuonSach
						WHERE MaDauSach LIKE @likeSearch
						OR ViTri LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
				
					) AS CuonSachTable
					WHERE CuonSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY CuonSachTable.ViTri
				END
			ELSE IF @sort = 'TrangThai'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
						FROM dbo.CuonSach
						WHERE MaDauSach LIKE @likeSearch
						OR ViTri LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
				
					) AS CuonSachTable
					WHERE CuonSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY CuonSachTable.TrangThai
				END
		END
		ELSE
        BEGIN
        	SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
						FROM dbo.CuonSach
						WHERE MaDauSach LIKE @likeSearch
						OR ViTri LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
				
					) AS CuonSachTable
					WHERE CuonSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		
        END
	END
	ELSE IF @sort <> N'default'
	BEGIN
		IF @sort = 'AZ'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.CuonSach
				) AS CuonSachTable
				WHERE CuonSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY CuonSachTable.MaCuonSach ASC
			END
		ELSE IF @sort = 'ZA'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.CuonSach
				) AS CuonSachTable
				WHERE CuonSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY CuonSachTable.MaCuonSach DESC
			END
		ELSE IF @sort = 'ViTri'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.CuonSach
				) AS CuonSachTable
				WHERE CuonSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY CuonSachTable.ViTri
			END
		ELSE IF @sort = 'TrangThai'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.CuonSach
				) AS CuonSachTable
				WHERE CuonSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY CuonSachTable.TrangThai
			END
	END
	ELSE 
	BEGIN
		SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.CuonSach
				) AS CuonSachTable
		WHERE CuonSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY CuonSachTable.MaDauSach	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayCuonSachPhanTrangCount]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayCuonSachPhanTrangCount]
@maDauSach INT ,
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @maDauSach <> 0
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.CuonSach
				) AS DauSachTable
		WHERE DauSachTable.MaDauSach = @maDauSach
		
	END
	ELSE IF @search <> N'default'
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
			FROM dbo.CuonSach
			WHERE ViTri LIKE @likeSearch
			OR  TrangThai LIKE @likeSearch
			OR MaCuonSach LIKE @likeSearch
			OR MaDauSach LIKE @likeSearch
		) AS CuonSachTable
	END
	ELSE
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.CuonSach
				) AS CuonSachTable
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayDauSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayDauSach]
--@soBatDau INT,
--@soKetThuc INT
@loaiSach NVARCHAR(50)
AS
BEGIN
	SELECT * FROM dbo.DauSach
	WHERE loaiSach = @loaiSach
	ORDER BY MaDauSach
--	SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
--					FROM dbo.DauSach
--) AS DauSachTable
--WHERE DauSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
END
GO
/****** Object:  StoredProcedure [dbo].[spLayDauSachPhanTrang]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayDauSachPhanTrang]
@loaiSach NVARCHAR(50), --online hay offline là đây
@soBatDau INT,
@soKetThuc INT,
@maTheLoai INT,		--danh mục thể loại
@sort NVARCHAR(100),
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @maTheLoai <> 0
	BEGIN
		SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
					FROM dbo.DauSach
					WHERE MaTheLoai = @maTheLoai
					AND loaiSach = @loaiSach
				) AS DauSachTable
		WHERE DauSachTable.MaTheLoai = @maTheLoai
		AND DauSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY DauSachTable.TenSach	
	END
	ELSE IF @search <> N'default'
	BEGIN
		IF @sort <> N'default'
		BEGIN
			IF @sort = 'AZ'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
						FROM dbo.DauSach
						WHERE loaiSach = @loaiSach
						AND (TenSach LIKE @likeSearch
						OR  MoTa LIKE @likeSearch
						OR TacGia LIKE @likeSearch
						OR NgonNgu LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						)
					) AS DauSachTable
					WHERE DauSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DauSachTable.TenSach ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
						FROM dbo.DauSach
						WHERE loaiSach = @loaiSach
						AND ( TenSach LIKE @likeSearch
						OR  MoTa LIKE @likeSearch
						OR TacGia LIKE @likeSearch
						OR NgonNgu LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
					) )AS DauSachTable
					WHERE DauSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DauSachTable.TenSach DESC
				END
			ELSE IF @sort = 'TacGia'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
						FROM dbo.DauSach
						WHERE loaiSach = @loaiSach
						AND( TenSach LIKE @likeSearch
						OR  MoTa LIKE @likeSearch
						OR TacGia LIKE @likeSearch
						OR NgonNgu LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
					) )AS DauSachTable
					WHERE DauSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DauSachTable.TacGia
				END
			ELSE IF @sort = 'NamXuatBan'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
						FROM dbo.DauSach
						WHERE loaiSach = @loaiSach
						AND ( TenSach LIKE @likeSearch
						OR  MoTa LIKE @likeSearch
						OR TacGia LIKE @likeSearch
						OR NgonNgu LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
					) )AS DauSachTable
					WHERE DauSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DauSachTable.NamXuatBan
				END
		END
		ELSE
        BEGIN
        	SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
						FROM dbo.DauSach
						WHERE loaiSach = @loaiSach
						AND ( TenSach LIKE @likeSearch
						OR  MoTa LIKE @likeSearch
						OR TacGia LIKE @likeSearch
						OR NgonNgu LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						)
					) AS DauSachTable
			WHERE DauSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
        END
	END
	ELSE IF @sort <> N'default'
	BEGIN
		IF @sort = 'AZ'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
					FROM dbo.DauSach
					WHERE loaiSach = @loaiSach
				) AS DauSachTable
				WHERE DauSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY DauSachTable.TenSach ASC
			END
		ELSE IF @sort = 'ZA'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
					FROM dbo.DauSach
					WHERE loaiSach = @loaiSach
				) AS DauSachTable
				WHERE DauSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY DauSachTable.TenSach DESC
			END
		ELSE IF @sort = 'TacGia'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
					FROM dbo.DauSach
					WHERE loaiSach = @loaiSach
				) AS DauSachTable
				WHERE DauSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY DauSachTable.TacGia
			END
		ELSE IF @sort = 'NamXuatBan'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
					FROM dbo.DauSach
					WHERE loaiSach = @loaiSach
				) AS DauSachTable
				WHERE DauSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY DauSachTable.NamXuatBan
			END
	END
	ELSE 
	BEGIN
		SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
					FROM dbo.DauSach
					WHERE loaiSach = @loaiSach
				) AS DauSachTable
		WHERE DauSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY DauSachTable.TenSach	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayDauSachPhanTrangCount]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayDauSachPhanTrangCount]
@loaiSach NVARCHAR(50),
@maTheLoai INT ,
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @maTheLoai <> 0
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
					FROM dbo.DauSach
					WHERE loaiSach = @loaiSach
				) AS DauSachTable
		WHERE DauSachTable.MaTheLoai = @maTheLoai
		
	END
	ELSE IF @search <> N'default'
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
			FROM dbo.DauSach
			WHERE loaiSach = @loaiSach AND 
			(TenSach LIKE @likeSearch
			OR  MoTa LIKE @likeSearch
			OR TacGia LIKE @likeSearch
			OR NgonNgu LIKE @likeSearch
			OR TrangThai LIKE @likeSearch)
		) AS DauSachTable
	END
	ELSE
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDauSach) AS RowNum
					FROM dbo.DauSach
					WHERE loaiSach = @loaiSach
				) AS DauSachTable
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayDocGia]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayDocGia]
as
begin
	select *from dbo.DocGia 
	order by MaDocGia
end
--Lay 1 Doc Gia--
GO
/****** Object:  StoredProcedure [dbo].[spLayDocGiaPhanTrang]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayDocGiaPhanTrang]
@soBatDau INT,
@soKetThuc INT,
@sort NVARCHAR(100),
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @search <> N'default'
	BEGIN
		IF @sort <> N'default'
		BEGIN
			IF @sort = 'AZ'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
						FROM dbo.DocGia
						WHERE TenDocGia LIKE @likeSearch
						OR  GioiTinh LIKE @likeSearch
						OR NgaySinh LIKE @likeSearch
						OR DiaChi LIKE @likeSearch
						OR SoDienThoai LIKE @likeSearch
						OR Email LIKE @likeSearch
					) AS DocGiaTable
					WHERE DocGiaTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DocGiaTable.TenDocGia ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
						FROM dbo.DocGia
						WHERE TenDocGia LIKE @likeSearch
						OR  GioiTinh LIKE @likeSearch
						OR NgaySinh LIKE @likeSearch
						OR DiaChi LIKE @likeSearch
						OR SoDienThoai LIKE @likeSearch
						OR Email LIKE @likeSearch
					) AS DocGiaTable
					WHERE DocGiaTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DocGiaTable.TenDocGia DESC
				END
			ELSE IF @sort = 'GioiTinh'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
						FROM dbo.DocGia
						WHERE TenDocGia LIKE @likeSearch
						OR  GioiTinh LIKE @likeSearch
						OR NgaySinh LIKE @likeSearch
						OR DiaChi LIKE @likeSearch
						OR SoDienThoai LIKE @likeSearch
						OR Email LIKE @likeSearch
					) AS DocGiaTable
					WHERE DocGiaTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DocGiaTable.GioiTinh
				END
			ELSE IF @sort = 'NgaySinh'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
						FROM dbo.DocGia
						WHERE TenDocGia LIKE @likeSearch
						OR  GioiTinh LIKE @likeSearch
						OR NgaySinh LIKE @likeSearch
						OR DiaChi LIKE @likeSearch
						OR SoDienThoai LIKE @likeSearch
						OR Email LIKE @likeSearch
					) AS DocGiaTable
					WHERE DocGiaTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DocGiaTable.NgaySinh
				END
			ELSE IF @sort = 'SoDienThoai'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
						FROM dbo.DocGia
						WHERE TenDocGia LIKE @likeSearch
						OR  GioiTinh LIKE @likeSearch
						OR NgaySinh LIKE @likeSearch
						OR DiaChi LIKE @likeSearch
						OR SoDienThoai LIKE @likeSearch
						OR Email LIKE @likeSearch
					) AS DocGiaTable
					WHERE DocGiaTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DocGiaTable.SoDienThoai
				END
			ELSE IF @sort = 'Email'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
						FROM dbo.DocGia
						WHERE TenDocGia LIKE @likeSearch
						OR  GioiTinh LIKE @likeSearch
						OR NgaySinh LIKE @likeSearch
						OR DiaChi LIKE @likeSearch
						OR SoDienThoai LIKE @likeSearch
						OR Email LIKE @likeSearch
					) AS DocGiaTable
					WHERE DocGiaTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DocGiaTable.Email
				END
		END
		ELSE
        BEGIN
        	SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
						FROM dbo.DocGia
						WHERE TenDocGia LIKE @likeSearch
						OR  GioiTinh LIKE @likeSearch
						OR NgaySinh LIKE @likeSearch
						OR DiaChi LIKE @likeSearch
						OR SoDienThoai LIKE @likeSearch
						OR Email LIKE @likeSearch
					) AS DocGiaTable
					WHERE DocGiaTable.RowNum BETWEEN @soBatDau AND @soKetThuc
        END
	END
	ELSE IF @sort <> N'default'
	BEGIN
		IF @sort = 'AZ'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
						FROM dbo.DocGia
					) AS DocGiaTable
					WHERE DocGiaTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DocGiaTable.TenDocGia ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
						FROM dbo.DocGia
					) AS DocGiaTable
					WHERE DocGiaTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DocGiaTable.TenDocGia DESC
				END
			ELSE IF @sort = 'GioiTinh'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
						FROM dbo.DocGia
					) AS DocGiaTable
					WHERE DocGiaTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DocGiaTable.GioiTinh
				END
			ELSE IF @sort = 'NgaySinh'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
						FROM dbo.DocGia
					) AS DocGiaTable
					WHERE DocGiaTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DocGiaTable.NgaySinh
				END
			ELSE IF @sort = 'SoDienThoai'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
						FROM dbo.DocGia
					) AS DocGiaTable
					WHERE DocGiaTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DocGiaTable.SoDienThoai
				END
			ELSE IF @sort = 'Email'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
						FROM dbo.DocGia
					) AS DocGiaTable
					WHERE DocGiaTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DocGiaTable.Email
				END
	END
	ELSE 
	BEGIN
		SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
						FROM dbo.DocGia
					) AS DocGiaTable
					WHERE DocGiaTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY DocGiaTable.MaDocGia
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayDocGiaPhanTrangCount]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayDocGiaPhanTrangCount]
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @search <> N'default'
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
			FROM dbo.DocGia
			WHERE TenDocGia LIKE @likeSearch
			OR  Email LIKE @likeSearch
			OR SoDienThoai LIKE @likeSearch
			OR NgaySinh LIKE @likeSearch
			OR GioiTinh LIKE @likeSearch
			OR DiaChi LIKE @likeSearch
		) AS DocGiaTable
	END
	ELSE
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaDocGia) AS RowNum
					FROM dbo.DocGia
				) AS DocGiaTable
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayIDQuyenTheoTen]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayIDQuyenTheoTen]
@tenQuyen NVARCHAR(100)
AS
BEGIN
	SELECT * FROM dbo.QuyenHan
	WHERE TenQuyen = @tenQuyen
END
GO
/****** Object:  StoredProcedure [dbo].[spLayIdTheThuVien]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayIdTheThuVien]
as
begin
	select *from dbo.TheThuVien
	order by MaThe
end
--Lay 1 the thu vien-
GO
/****** Object:  StoredProcedure [dbo].[spLayIdThongBao]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayIdThongBao]
as
begin
	select *from dbo.ThongBao
	order by IDThongBao
end
--Lay 1 idThongbao--
GO
/****** Object:  StoredProcedure [dbo].[spLayLog_TaiVe]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayLog_TaiVe]
as
begin
	select *from dbo.Log_TaiSach 
	order by idLog_TaiSach
end
--Lay 1 Log tai ve--
GO
/****** Object:  StoredProcedure [dbo].[spLayMaNxbTheoTen]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayMaNxbTheoTen]
@tenNxb NVARCHAR(100)
AS
BEGIN
	SELECT * FROM dbo.Nxb
	WHERE TenNXB = @tenNxb
END
GO
/****** Object:  StoredProcedure [dbo].[spLayMaTheLoaiTheoTen]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayMaTheLoaiTheoTen]
@tenTheLoai NVARCHAR(100)
AS
BEGIN
	SELECT * FROM dbo.TheLoai
	WHERE TenTheLoai = @tenTheLoai
END
GO
/****** Object:  StoredProcedure [dbo].[spLayMotCuonSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayMotCuonSach]
@maCuonSach int
as
begin 
	select *from dbo.CuonSach
	where MaCuonSach=@maCuonSach
end
--Xoa cuon sach--
GO
/****** Object:  StoredProcedure [dbo].[spLayMotDauSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spLayMotDauSach]
@maDauSach INT
AS
BEGIN
	SELECT * FROM dbo.DauSach 
	WHERE MaDauSach = @maDauSach
END
GO
/****** Object:  StoredProcedure [dbo].[spLayMotDocGia]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayMotDocGia]
@maDocGia int
as
begin
	select *from dbo.DocGia
	where MaDocGia=@maDocGia
end
--Xoa Doc Gia--
GO
/****** Object:  StoredProcedure [dbo].[spLayMotIdThongBao]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayMotIdThongBao]
@idThongBao int
as
begin
	select *from dbo.ThongBao
	where IDThongBao=idThongBao
end
--Xoa idThogBa0--
GO
/****** Object:  StoredProcedure [dbo].[spLayMotLog_TaiVe]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayMotLog_TaiVe]
@iDLogTaiVe int 
as
begin
	select *from dbo.Log_TaiSach
	where idLog_TaiSach=@iDLogTaiVe
end
--Xoa Log tai ve--
GO
/****** Object:  StoredProcedure [dbo].[spLayMotMuonTraSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayMotMuonTraSach]
@maMuonSach int
as
begin
	select *from dbo.MuonTraSach
	where MaMuonSach=@maMuonSach
end
--Xoa Muon tra sach--
GO
/****** Object:  StoredProcedure [dbo].[spLayMotMuonTraSachChiTiet]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayMotMuonTraSachChiTiet]
@maMuonSach int
as
begin
	select *from.dbo.MuonTraSachChiTiet
	where MaMuonSach=@maMuonSach
end
--Xoa Muon tra sach chi tiet--
GO
/****** Object:  StoredProcedure [dbo].[spLayMotNhanVien]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayMotNhanVien]
@maNhanVien int 
as
begin
	select *from dbo.NhanVien
	where MaNhanVien=@maNhanVien
end
--Xoa Nhan Vien--
GO
/****** Object:  StoredProcedure [dbo].[spLayMotNxb]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayMotNxb]
@maNXB int
as
begin
	select *from dbo.Nxb
	where MaNXB=@maNXB
end
--Xoa NXB--
GO
/****** Object:  StoredProcedure [dbo].[spLayMotPhieuPhat]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayMotPhieuPhat]
@idPhieuPhat int
as
begin
	select *from dbo.PhieuPhat
	where IDPhieuPhat=@idPhieuPhat
end
--Xoa Phieu Phat--
GO
/****** Object:  StoredProcedure [dbo].[spLayMotPhongPhucVu]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spLayMotPhongPhucVu]
@idPhong int
as
begin
	select *from dbo.PhongPhucVu where IDPhong=@idPhong
end
--Xoa Ohong--
GO
/****** Object:  StoredProcedure [dbo].[spLayMotQuyenHan]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[spLayMotQuyenHan]
 @idQuyen int
 as
 begin
	select *from dbo.QuyenHan where IDQuyen=@idQuyen
 end
 --Xoa quyen han-
GO
/****** Object:  StoredProcedure [dbo].[spLayMotTaiKhoan]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spLayMotTaiKhoan]
@maTaiKhoan int
as
begin
	select *from dbo.TaiKhoan where MaTaiKhoan=@maTaiKhoan
end
--Xoa Ohong--
GO
/****** Object:  StoredProcedure [dbo].[spLayMotTheLoai]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayMotTheLoai]
@maTheLoai int
as
	begin
		select *from dbo.TheLoai 
		where MaTheLoai=@maTheLoai
	end
	--Xoa the loai--
GO
/****** Object:  StoredProcedure [dbo].[spLayMotTheThuVien]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayMotTheThuVien]
@maThe int
as
begin
	select *from dbo.TheThuVien
	where MaThe=@maThe
end
--Xoa the thu vien--
GO
/****** Object:  StoredProcedure [dbo].[spLayMotThongBao]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spLayMotThongBao]
@maThongBao int
as
begin
	select *from dbo.ThongBao
	where IDThongBao=@maThongBao
end
--Xoa Muon tra sach--
GO
/****** Object:  StoredProcedure [dbo].[spLayMuonTraSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayMuonTraSach] 
as
begin
	select *from dbo.MuonTraSach
	order by MaMuonSach
end
--Lay 1 Muon tra sach--
GO
/****** Object:  StoredProcedure [dbo].[spLayMuonTraSachChiTiet]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayMuonTraSachChiTiet]
as
begin
	select *from dbo.MuonTraSachChiTiet
	order by
	MaMuonSach
end
--Lay 1 Muon tra sach chi tiet-
GO
/****** Object:  StoredProcedure [dbo].[spLayMuonTraSachChiTietPhanTrang]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayMuonTraSachChiTietPhanTrang]
@soBatDau INT,
@soKetThuc INT,
@maCuonSach INT,
@sort NVARCHAR(100),
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @maCuonSach <> 0
	BEGIN
		SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.MuonTraSachChiTiet
					WHERE MaCuonSach = @maCuonSach
				) AS MuonTraSachChiTietTable
		WHERE MuonTraSachChiTietTable.MaCuonSach = @maCuonSach
		AND MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY MuonTraSachChiTietTable.MaCuonSach	
	END
	ELSE IF @search <> N'default'
	BEGIN
		IF @sort <> N'default'
		BEGIN
			IF @sort = 'AZ'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
						FROM dbo.MuonTraSachChiTiet
						WHERE NgayMuon LIKE @likeSearch
						OR NgayTra LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						OR SoLuong LIKE @likeSearch

					) AS MuonTraSachChiTietTable
					WHERE MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY MuonTraSachChiTietTable.MaMuonSach ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
						FROM dbo.MuonTraSachChiTiet
						WHERE NgayMuon LIKE @likeSearch
						OR NgayTra LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						OR SoLuong LIKE @likeSearch
					) AS MuonTraSachChiTietTable
					WHERE MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY MuonTraSachChiTietTable.MaMuonSach DESC
				END
			ELSE IF @sort = 'NgayMuon'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
						FROM dbo.MuonTraSachChiTiet
						WHERE NgayMuon LIKE @likeSearch
						OR NgayTra LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						OR SoLuong LIKE @likeSearch
					) AS MuonTraSachChiTietTable
					WHERE MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY MuonTraSachChiTietTable.NgayMuon DESC
				END
			ELSE IF @sort = 'NgayHenTra'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
						FROM dbo.MuonTraSachChiTiet
						WHERE NgayMuon LIKE @likeSearch
						OR NgayTra LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						OR SoLuong LIKE @likeSearch
					) AS MuonTraSachChiTietTable
					WHERE MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY MuonTraSachChiTietTable.NgayHenTra DESC
				END
				ELSE IF @sort = 'NgayTra'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
						FROM dbo.MuonTraSachChiTiet
						WHERE NgayMuon LIKE @likeSearch
						OR NgayTra LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						OR SoLuong LIKE @likeSearch
					) AS MuonTraSachChiTietTable
					WHERE MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY MuonTraSachChiTietTable.NgayTra DESC
				END
				ELSE IF @sort = 'TrangThai'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
						FROM dbo.MuonTraSachChiTiet
						WHERE NgayMuon LIKE @likeSearch
						OR NgayTra LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						OR SoLuong LIKE @likeSearch
					) AS MuonTraSachChiTietTable
					WHERE MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY MuonTraSachChiTietTable.TrangThai
				END
		END
		ELSE
        BEGIN
        	SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
						FROM dbo.MuonTraSachChiTiet
						WHERE NgayMuon LIKE @likeSearch
						OR NgayTra LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						OR SoLuong LIKE @likeSearch

					) AS MuonTraSachChiTietTable
			WHERE MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
        END
	END
	ELSE IF @sort <> N'default'
	BEGIN
		IF @sort = 'AZ'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.MuonTraSachChiTiet
				) AS MuonTraSachChiTietTable
				WHERE MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY MuonTraSachChiTietTable.MaMuonSach ASC
			END
		ELSE IF @sort = 'ZA'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.MuonTraSachChiTiet
				) AS MuonTraSachChiTietTable
				WHERE MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY MuonTraSachChiTietTable.MaMuonSach DESC
			END
		ELSE IF @sort = 'NgayMuon'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.MuonTraSachChiTiet
				) AS MuonTraSachChiTietTable
				WHERE MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY MuonTraSachChiTietTable.NgayMuon DESC
			END
		ELSE IF @sort = 'NgayHenTra'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.MuonTraSachChiTiet
				) AS MuonTraSachChiTietTable
				WHERE MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY MuonTraSachChiTietTable.NgayHenTra DESC
			END
			ELSE IF @sort = 'NgayTra'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.MuonTraSachChiTiet
				) AS MuonTraSachChiTietTable
				WHERE MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY MuonTraSachChiTietTable.NgayTra DESC
			END
			ELSE IF @sort = 'TrangThai'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
						FROM dbo.MuonTraSachChiTiet
					) AS MuonTraSachChiTietTable
					WHERE MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY MuonTraSachChiTietTable.TrangThai
				END
	END
	ELSE 
	BEGIN
		SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.MuonTraSachChiTiet
				) AS MuonTraSachChiTietTable
		WHERE MuonTraSachChiTietTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY MuonTraSachChiTietTable.NgayMuon DESC	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayMuonTraSachChiTietPhanTrangCount]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayMuonTraSachChiTietPhanTrangCount]
@maCuonSach INT ,
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @maCuonSach <> 0
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.MuonTraSachChiTiet
				) AS MuonTraSachTable
		WHERE MuonTraSachTable.MaCuonSach = @maCuonSach
		
	END
	ELSE IF @search <> N'default'
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
			FROM dbo.MuonTraSachChiTiet
			WHERE MaCuonSach LIKE @likeSearch
			OR  NgayMuon LIKE @likeSearch
			OR NgayHenTra LIKE @likeSearch
			OR NgayTra LIKE @likeSearch
			OR TrangThai LIKE @likeSearch
			OR SoLuong LIKE @likeSearch
		) AS MuonTraSachChiTietTable
	END
	ELSE
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaCuonSach) AS RowNum
					FROM dbo.MuonTraSachChiTiet
				) AS MuonTraSachChiTietTable
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayMuonTraSachPhanTrang]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayMuonTraSachPhanTrang]
@soBatDau INT,
@soKetThuc INT,
@maThe INT,
@sort NVARCHAR(100),
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @maThe <> 0
	BEGIN
		SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaMuonSach) AS RowNum
					FROM dbo.MuonTraSach
					WHERE MaThe = @maThe
				) AS MuonTraSachTable
		WHERE MuonTraSachTable.MaThe = @maThe
		AND MuonTraSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY MuonTraSachTable.MaThe	
	END
	ELSE IF @search <> N'default'
	BEGIN
		IF @sort <> N'default'
		BEGIN
			IF @sort = 'AZ'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaMuonSach) AS RowNum
						FROM dbo.MuonTraSach
						WHERE MaThe LIKE @likeSearch
						OR  MaMuonSach LIKE @likeSearch
						OR GhiChu LIKE @likeSearch
						OR TienDatCoc LIKE @likeSearch
					) AS MuonTraSachTable
					WHERE MuonTraSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY MuonTraSachTable.MaThe ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaMuonSach) AS RowNum
						FROM dbo.MuonTraSach
						WHERE MaThe LIKE @likeSearch
						OR  MaMuonSach LIKE @likeSearch
						OR GhiChu LIKE @likeSearch
						OR TienDatCoc LIKE @likeSearch
					) AS MuonTraSachTable
					WHERE MuonTraSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY MuonTraSachTable.MaThe DESC
				END
			ELSE IF @sort = 'GhiChu'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaMuonSach) AS RowNum
						FROM dbo.MuonTraSach
						WHERE MaThe LIKE @likeSearch
						OR  MaMuonSach LIKE @likeSearch
						OR GhiChu LIKE @likeSearch
						OR TienDatCoc LIKE @likeSearch
					) AS MuonTraSachTable
					WHERE MuonTraSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY MuonTraSachTable.GhiChu
				END
			ELSE IF @sort = 'TienDatCoc'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaMuonSach) AS RowNum
						FROM dbo.MuonTraSach
						WHERE MaThe LIKE @likeSearch
						OR  MaMuonSach LIKE @likeSearch
						OR GhiChu LIKE @likeSearch
						OR TienDatCoc LIKE @likeSearch
					) AS MuonTraSachTable
					WHERE MuonTraSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY MuonTraSachTable.TienDatCoc
				END
		END
		ELSE
        BEGIN
        	SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaMuonSach) AS RowNum
						FROM dbo.MuonTraSach
						WHERE MaThe LIKE @likeSearch
						OR  MaMuonSach LIKE @likeSearch
						OR GhiChu LIKE @likeSearch
						OR TienDatCoc LIKE @likeSearch
					) AS MuonTraSachTable
			WHERE MuonTraSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
        END
	END
	ELSE IF @sort <> N'default'
	BEGIN
		IF @sort = 'AZ'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaMuonSach) AS RowNum
					FROM dbo.MuonTraSach
				) AS MuonTraSachTable
				WHERE MuonTraSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY MuonTraSachTable.MaThe ASC
			END
		ELSE IF @sort = 'ZA'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaMuonSach) AS RowNum
					FROM dbo.MuonTraSach
				) AS MuonTraSachTable
				WHERE MuonTraSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY MuonTraSachTable.MaThe DESC
			END
		ELSE IF @sort = 'GhiChu'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaMuonSach) AS RowNum
					FROM dbo.MuonTraSach
				) AS MuonTraSachTable
				WHERE MuonTraSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY MuonTraSachTable.GhiChu
			END
		ELSE IF @sort = 'TienDatCoc'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaMuonSach) AS RowNum
					FROM dbo.MuonTraSach
				) AS MuonTraSachTable
				WHERE MuonTraSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY MuonTraSachTable.TienDatCoc
			END
	END
	ELSE 
	BEGIN
		SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaMuonSach) AS RowNum
					FROM dbo.MuonTraSach
				) AS MuonTraSachTable
		WHERE MuonTraSachTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY MuonTraSachTable.MaThe	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayMuonTraSachPhanTrangCount]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayMuonTraSachPhanTrangCount]
@maThe INT ,
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @maThe <> 0
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaMuonSach) AS RowNum
					FROM dbo.MuonTraSach
				) AS MuonTraSachTable
		WHERE MuonTraSachTable.MaThe = @maThe
		
	END
	ELSE IF @search <> N'default'
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaMuonSach) AS RowNum
					FROM dbo.MuonTraSach
						WHERE MaMuonSach LIKE @likeSearch
						OR  MaMuonSach LIKE @likeSearch
						OR TienDatCoc LIKE @likeSearch
						OR GhiChu LIKE @likeSearch
				) AS MuonTraSachTable
	END
	ELSE
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaMuonSach) AS RowNum
					FROM dbo.MuonTraSach
				) AS MuonTraSachTable
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayNhanVien]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayNhanVien]
as
begin
	select *from dbo.NhanVien
	order by MaNhanVien
end
--Lay 1 Nhan Vien--
GO
/****** Object:  StoredProcedure [dbo].[spLayNhanVienPhanTrang]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayNhanVienPhanTrang]
@soBatDau INT,
@soKetThuc INT,
@sort NVARCHAR(100),
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @search <> N'default'
	BEGIN
		IF @sort <> N'default'
		BEGIN
			IF @sort = 'AZ'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNhanVien) AS RowNum
						FROM dbo.NhanVien
						WHERE HoVaTen LIKE @likeSearch
						OR Email LIKE @likeSearch
						OR SoDienThoai LIKE @likeSearch
						OR NgaySinh LIKE @likeSearch
						
					) AS NhanVienTable
					WHERE NhanVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY NhanVienTable.HoVaTen ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
		
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNhanVien) AS RowNum
						FROM dbo.NhanVien
						WHERE HoVaTen LIKE @likeSearch
						OR Email LIKE @likeSearch
						OR SoDienThoai LIKE @likeSearch
						OR NgaySinh LIKE @likeSearch
						
					) AS NhanVienTable
					WHERE NhanVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY NhanVienTable.HoVaTen DESC
				END
			ELSE IF @sort = 'SoDienThoai'
				BEGIN
	
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNhanVien) AS RowNum
						FROM dbo.NhanVien
						WHERE HoVaTen LIKE @likeSearch
						OR Email LIKE @likeSearch
						OR SoDienThoai LIKE @likeSearch
						OR NgaySinh LIKE @likeSearch
						
					) AS NhanVienTable
					WHERE NhanVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY NhanVienTable.SoDienThoai
				END
			ELSE IF @sort = 'Email'
				BEGIN

					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNhanVien) AS RowNum
						FROM dbo.NhanVien
						WHERE HoVaTen LIKE @likeSearch
						OR Email LIKE @likeSearch
						OR SoDienThoai LIKE @likeSearch
						OR NgaySinh LIKE @likeSearch
						
					) AS NhanVienTable
					WHERE NhanVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY NhanVienTable.Email
				END
			ELSE IF @sort = 'NgaySinh'
				BEGIN

					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNhanVien) AS RowNum
						FROM dbo.NhanVien
						WHERE HoVaTen LIKE @likeSearch
						OR Email LIKE @likeSearch
						OR SoDienThoai LIKE @likeSearch
						OR NgaySinh LIKE @likeSearch
						
					) AS NhanVienTable
					WHERE NhanVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY NhanVienTable.NgaySinh
				END
		END
		ELSE
        BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNhanVien) AS RowNum
						FROM dbo.NhanVien
						WHERE HoVaTen LIKE @likeSearch
						OR Email LIKE @likeSearch
						OR SoDienThoai LIKE @likeSearch
						OR NgaySinh LIKE @likeSearch
						
					) AS NhanVienTable
					WHERE NhanVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					
        END
	END
	ELSE IF @sort <> N'default'
	BEGIN
		IF @sort = 'AZ'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNhanVien) AS RowNum
						FROM dbo.NhanVien
					) AS NhanVienTable
					WHERE NhanVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY NhanVienTable.HoVaTen ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
		
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNhanVien) AS RowNum
						FROM dbo.NhanVien
					) AS NhanVienTable
					WHERE NhanVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY NhanVienTable.HoVaTen DESC
				END
			ELSE IF @sort = 'SoDienThoai'
				BEGIN
	
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNhanVien) AS RowNum
						FROM dbo.NhanVien
					) AS NhanVienTable
					WHERE NhanVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY NhanVienTable.SoDienThoai
				END
			ELSE IF @sort = 'Email'
				BEGIN

					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNhanVien) AS RowNum
						FROM dbo.NhanVien
					) AS NhanVienTable
					WHERE NhanVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY NhanVienTable.Email
				END
			ELSE IF @sort = 'NgaySinh'
				BEGIN

					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNhanVien) AS RowNum
						FROM dbo.NhanVien
					) AS NhanVienTable
					WHERE NhanVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY NhanVienTable.NgaySinh
				END	END
	ELSE 
	BEGIN
		SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNhanVien) AS RowNum
					FROM dbo.NhanVien
				) AS NhanVienTable
		WHERE NhanVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY NhanVienTable.MaTaiKhoan
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayNhanVienPhanTrangCount]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayNhanVienPhanTrangCount]
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @search <> N'default'
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNhanVien) AS RowNum
			FROM dbo.NhanVien
			WHERE HoVaTen  LIKE @likeSearch
			OR  Email LIKE @likeSearch
			OR SoDienThoai LIKE @likeSearch
			OR NgaySinh LIKE @likeSearch
		) AS NhanVienTable
	END
	ELSE
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNhanVien) AS RowNum
					FROM dbo.NhanVien
				) AS NhanVienTable
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayNxb]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayNxb]
as
begin
	select *from dbo.Nxb
	order by MaNXB
end
--Lay 1 NXB--
GO
/****** Object:  StoredProcedure [dbo].[spLayNxbPhanTrang]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayNxbPhanTrang]
@soBatDau INT,
@soKetThuc INT,
@sort NVARCHAR(100),
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @search <> N'default'
	BEGIN
		IF @sort <> N'default'
		BEGIN
			IF @sort = 'AZ'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNXB) AS RowNum
						FROM dbo.Nxb
						WHERE TenNXB LIKE @likeSearch
						OR GhiChu LIKE @likeSearch
						
					) AS NxbTable
					WHERE NxbTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY NxbTable.TenNXB ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNXB) AS RowNum
						FROM dbo.Nxb
						WHERE TenNXB LIKE @likeSearch
						OR GhiChu LIKE @likeSearch
					
					) AS NxbTable
					WHERE NxbTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY NxbTable.TenNXB DESC
				END
			ELSE IF @sort = 'GhiChu'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNXB) AS RowNum
						FROM dbo.Nxb
						WHERE TenNXB LIKE @likeSearch
						OR GhiChu LIKE @likeSearch
					
					) AS NhaXuatBanTable
					WHERE NhaXuatBanTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY NhaXuatBanTable.GhiChu
				END
			
		END
		ELSE
        BEGIN
        	SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNXB) AS RowNum
						FROM dbo.Nxb
						WHERE TenNXB LIKE @likeSearch
						OR GhiChu LIKE @likeSearch
					
					) AS NxbTable
					WHERE NxbTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					
        END
	END
	ELSE IF @sort <> N'default'
	BEGIN
		IF @sort = 'AZ'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNXB) AS RowNum
					FROM dbo.Nxb
				) AS NxbTable
				WHERE NxbTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY NxbTable.TenNXB ASC
			END
		ELSE IF @sort = 'ZA'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNXB) AS RowNum
					FROM dbo.Nxb
				) AS NxbTable
				WHERE NxbTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY NxbTable.TenNXB  DESC
			END
		ELSE IF @sort = 'GhiChu'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNXB) AS RowNum
					FROM dbo.Nxb
				) AS NxbTable
				WHERE NxbTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY NxbTable.GhiChu
			END
	END
	ELSE 
	BEGIN
		SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNXB) AS RowNum
					FROM dbo.Nxb
				) AS NxbTable
		WHERE NxbTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY NxbTable.MaNXB
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayNxbPhanTrangCount]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayNxbPhanTrangCount]
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @search <> N'default'
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNXB) AS RowNum
			FROM dbo.Nxb
			WHERE TenNXB LIKE @likeSearch
			OR  GhiChu LIKE @likeSearch
		) AS NxbTable
	END
	ELSE
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaNXB) AS RowNum
					FROM dbo.Nxb
				) AS NxbTable
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayPhieuPhat]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayPhieuPhat]
as
begin
	select *from dbo.PhieuPhat
	order by IDPhieuPhat
end
--Lay 1 Phieu Phat--
GO
/****** Object:  StoredProcedure [dbo].[spLayPhieuPhatPhanTrang]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayPhieuPhatPhanTrang]
@soBatDau INT,
@soKetThuc INT,
@sort NVARCHAR(100),
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @search <> N'default'
	BEGIN
		IF @sort <> N'default'
		BEGIN
			IF @sort = 'AZ'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhieuPhat) AS RowNum
						FROM dbo.PhieuPhat
						WHERE MaThe LIKE @likeSearch
						OR MaNhanVien LIKE @likeSearch
						OR TienPhat LIKE @likeSearch
						OR NgayLap LIKE @likeSearch
					) AS PhieuPhatTable
					WHERE PhieuPhatTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY PhieuPhatTable.MaThe ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhieuPhat) AS RowNum
						FROM dbo.PhieuPhat
						WHERE MaThe LIKE @likeSearch
						OR MaNhanVien LIKE @likeSearch
						OR TienPhat LIKE @likeSearch
						OR NgayLap LIKE @likeSearch
					) AS PhieuPhatTable
					WHERE PhieuPhatTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY PhieuPhatTable.MaThe DESC
				END
			ELSE IF @sort = 'MaNhanVien'
				BEGIN
					 SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhieuPhat) AS RowNum
						FROM dbo.PhieuPhat
						WHERE MaThe LIKE @likeSearch
						OR MaNhanVien LIKE @likeSearch
						OR TienPhat LIKE @likeSearch
						OR NgayLap LIKE @likeSearch
					) AS PhieuPhatTable
					WHERE PhieuPhatTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY PhieuPhatTable.MaNhanVien
				END
			ELSE IF @sort = 'TienPhat'
				BEGIN
				
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhieuPhat) AS RowNum
						FROM dbo.PhieuPhat
						WHERE MaThe LIKE @likeSearch
						OR MaNhanVien LIKE @likeSearch
						OR TienPhat LIKE @likeSearch
						OR NgayLap LIKE @likeSearch
					) AS PhieuPhatTable
					WHERE PhieuPhatTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY PhieuPhatTable.TienPhat
				END
			ELSE IF @sort = 'NgayLap'
				BEGIN
				
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhieuPhat) AS RowNum
						FROM dbo.PhieuPhat
						WHERE MaThe LIKE @likeSearch
						OR MaNhanVien LIKE @likeSearch
						OR TienPhat LIKE @likeSearch
						OR NgayLap LIKE @likeSearch
					) AS PhieuPhatTable
					WHERE PhieuPhatTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY PhieuPhatTable.NgayLap
				END
		END
		ELSE
        BEGIN
        	SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhieuPhat) AS RowNum
						FROM dbo.PhieuPhat
						WHERE MaThe LIKE @likeSearch
						OR MaNhanVien LIKE @likeSearch
						OR TienPhat LIKE @likeSearch
						OR NgayLap LIKE @likeSearch					) AS PhieuPhatTable
					WHERE PhieuPhatTable.RowNum BETWEEN @soBatDau AND @soKetThuc

        END
	END
	ELSE IF @sort <> N'default'
	BEGIN
		IF @sort = 'AZ'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhieuPhat) AS RowNum
					FROM dbo.PhieuPhat
				) AS PhieuPhatTable
				WHERE PhieuPhatTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY PhieuPhatTable.MaThe ASC
			END
		ELSE IF @sort = 'ZA'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY IDPhieuPhat) AS RowNum
					FROM dbo.PhieuPhat
				) AS PhieuPhatTable
				WHERE PhieuPhatTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY PhieuPhatTable.MaThe DESC
			END
		ELSE IF @sort = 'MaNhanVien'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhieuPhat) AS RowNum
					FROM dbo.PhieuPhat
				) AS PhieuPhatTable
				WHERE PhieuPhatTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY PhieuPhatTable.MaNhanVien
			END
		ELSE IF @sort = 'TienPhat'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY IDPhieuPhat) AS RowNum
					FROM dbo.PhieuPhat
				) AS PhieuPhatTable
				WHERE PhieuPhatTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY PhieuPhatTable.TienPhat
			END
		ELSE IF @sort = 'NgayLap'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY IDPhieuPhat) AS RowNum
					FROM dbo.PhieuPhat
				) AS PhieuPhatTable
				WHERE PhieuPhatTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY PhieuPhatTable.NgayLap
			END
	END
	ELSE 
	BEGIN
		SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhieuPhat) AS RowNum
					FROM dbo.PhieuPhat
				) AS PhieuPhatTable
		WHERE PhieuPhatTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY PhieuPhatTable.IDPhieuPhat
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayPhieuPhatPhanTrangCount]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayPhieuPhatPhanTrangCount]
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @search <> N'default'
		BEGIN
			SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhieuPhat) AS RowNum
				FROM dbo.PhieuPhat
				WHERE MaThe  LIKE @likeSearch
				OR  MaNhanVien LIKE @likeSearch
				OR NgayLap LIKE @likeSearch
				OR TienPhat LIKE @likeSearch
			) AS PhieuPhatTable
		END
	ELSE
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhieuPhat) AS RowNum
					FROM dbo.PhieuPhat
				) AS PhieuPhatTable
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayPhongPhucVu]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spLayPhongPhucVu]
as
begin
	select *from dbo.PhongPhucVu
	order by IDPhong
end
--Lay 1Phong-
GO
/****** Object:  StoredProcedure [dbo].[spLayPhongPhucVuPhanTrang]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayPhongPhucVuPhanTrang]
@soBatDau INT,
@soKetThuc INT,
@MaNhanVien INT,
@sort NVARCHAR(100),
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @MaNhanVien <> 0
	BEGIN
		SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhong) AS RowNum
					FROM dbo.PhongPhucVu
					WHERE MaNhanVien = @MaNhanVien
				) AS PhongPhucVuTable
		WHERE PhongPhucVuTable.MaNhanVien = @MaNhanVien
		AND PhongPhucVuTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY PhongPhucVuTable.MaNhanVien	
	END
	ELSE IF @search <> N'default'
	BEGIN
		IF @sort <> N'default'
		BEGIN
			IF @sort = 'AZ'
				BEGIN
					SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhong) AS RowNum
						FROM dbo.PhongPhucVu
						WHERE TenPhong LIKE @likeSearch
						OR GioBatDau LIKE @likeSearch
						OR GioKetThuc LIKE @likeSearch
					) AS PhongPhucVuTable
					WHERE PhongPhucVuTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY PhongPhucVuTable.TenPhong ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
					SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhong) AS RowNum
						FROM dbo.PhongPhucVu
						WHERE TenPhong LIKE @likeSearch
						OR GioBatDau LIKE @likeSearch
						OR GioKetThuc LIKE @likeSearch
					) AS PhongPhucVuTable
					WHERE PhongPhucVuTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY PhongPhucVuTable.TenPhong DESC
				END
			ELSE IF @sort = 'GioKetThuc'
				BEGIN
					SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhong) AS RowNum
						FROM dbo.PhongPhucVu
						WHERE TenPhong LIKE @likeSearch
						OR GioBatDau LIKE @likeSearch
						OR GioKetThuc LIKE @likeSearch
					) AS PhongPhucVuTable
					WHERE PhongPhucVuTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY PhongPhucVuTable.GioKetThuc
				END
			ELSE IF @sort = 'GioBatDau'
				BEGIN
					SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhong) AS RowNum
						FROM dbo.PhongPhucVu
						WHERE TenPhong LIKE @likeSearch
						OR GioBatDau LIKE @likeSearch
						OR GioKetThuc LIKE @likeSearch
					) AS PhongPhucVuTable
					WHERE PhongPhucVuTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY PhongPhucVuTable.GioBatDau
				END
		END
		ELSE
        BEGIN
        	SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhong) AS RowNum
						FROM dbo.PhongPhucVu
						WHERE TenPhong LIKE @likeSearch
						OR GioBatDau LIKE @likeSearch
						OR GioKetThuc LIKE @likeSearch
					) AS PhongPhucVuTable
					WHERE PhongPhucVuTable.RowNum BETWEEN @soBatDau AND @soKetThuc
        END
	END
	ELSE IF @sort <> N'default'
	BEGIN
		IF @sort = 'AZ'
			BEGIN
				SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhong) AS RowNum
					FROM dbo.PhongPhucVu
				) AS PhongPhucVuTable
				WHERE PhongPhucVuTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY PhongPhucVuTable.TenPhong ASC
			END
		ELSE IF @sort = 'ZA'
			BEGIN
				SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhong) AS RowNum
					FROM dbo.PhongPhucVu
				) AS PhongPhucVuTable
				WHERE PhongPhucVuTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY PhongPhucVuTable.TenPhong DESC
			END
		ELSE IF @sort = 'GioKetThuc'
			BEGIN
				SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhong) AS RowNum
					FROM dbo.PhongPhucVu
				) AS PhongPhucVuTable
				WHERE PhongPhucVuTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY PhongPhucVuTable.GioKetThuc
			END
		ELSE IF @sort = 'GioBatDau'
			BEGIN
				SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhong) AS RowNum
					FROM dbo.PhongPhucVu
				) AS PhongPhucVuTable
				WHERE PhongPhucVuTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY PhongPhucVuTable.GioBatDau
			END
	END
	ELSE 
	BEGIN
		SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhong) AS RowNum
					FROM dbo.PhongPhucVu
				) AS PhongPhucVuTable
		WHERE PhongPhucVuTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY PhongPhucVuTable.MaNhanVien	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayPhongPhucVuPhanTrangCount]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spLayPhongPhucVuPhanTrangCount]
@MaNhanVien INT ,
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @MaNhanVien <> 0
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhong) AS RowNum
					FROM dbo.PhongPhucVu
				) AS PhongPhucVuTable
		WHERE PhongPhucVuTable.MaNhanVien = @MaNhanVien
		
	END
	ELSE IF @search <> N'default'
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhong) AS RowNum
			FROM dbo.PhongPhucVu
			WHERE TenPhong LIKE @likeSearch
			OR  GioBatDau LIKE @likeSearch
			OR GioKetThuc LIKE @likeSearch
		) AS PhongPhucVuTable
	END
	ELSE
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDPhong) AS RowNum
					FROM dbo.PhongPhucVu
				) AS PhongPhucVuTable
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayQuyenHan]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayQuyenHan]
as
begin
	select *from dbo.QuyenHan
	order by IDQuyen
end
--Lay 1 quyen han-

GO
/****** Object:  StoredProcedure [dbo].[spLayTaiKhoan]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create proc [dbo].[spLayTaiKhoan]
	as
	begin
		select *from dbo.TaiKhoan
		order by MaTaiKhoan
	end
	--Lay 1 tai khoan-
GO
/****** Object:  StoredProcedure [dbo].[spLayTaiKhoanPhanTrang]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayTaiKhoanPhanTrang]
@soBatDau INT,
@soKetThuc INT,
@idQuyen INT,
@sort NVARCHAR(100),
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @idQuyen <> 0
	BEGIN
		SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTaiKhoan) AS RowNum
					FROM dbo.TaiKhoan
					WHERE  IDQuyen=@idQuyen
				) AS TaiKhoanTable
		WHERE TaiKhoanTable.IDQuyen = @idQuyen
		AND TaiKhoanTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY TaiKhoanTable.IDQuyen	
	END
	ELSE IF @search <> N'default'
	BEGIN
		IF @sort <> N'default'
		BEGIN
			IF @sort = 'AZ'
				BEGIN
					SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTaiKhoan) AS RowNum
								FROM dbo.TaiKhoan
								WHERE  Email LIKE @likeSearch
								OR SoDienThoai LIKE @likeSearch
								OR IDQuyen LIKE @likeSearch
							) AS TaiKhoanTable
					WHERE TaiKhoanTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TaiKhoanTable.Email ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
					SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTaiKhoan) AS RowNum
								FROM dbo.TaiKhoan
								WHERE  Email LIKE @likeSearch
								OR SoDienThoai LIKE @likeSearch
								OR IDQuyen LIKE @likeSearch
							) AS TaiKhoanTable
					WHERE TaiKhoanTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TaiKhoanTable.Email DESC
				END
			ELSE IF @sort = 'SoDienThoai'
				BEGIN
					SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTaiKhoan) AS RowNum
								FROM dbo.TaiKhoan
								WHERE  Email LIKE @likeSearch
								OR SoDienThoai LIKE @likeSearch
								OR IDQuyen LIKE @likeSearch
							) AS TaiKhoanTable
					WHERE TaiKhoanTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TaiKhoanTable.SoDienThoai
				END
			ELSE IF @sort = 'IDQuyen'
				BEGIN
					SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTaiKhoan) AS RowNum
								FROM dbo.TaiKhoan
								WHERE  Email LIKE @likeSearch
								OR SoDienThoai LIKE @likeSearch
								OR IDQuyen LIKE @likeSearch
							) AS TaiKhoanTable
					WHERE TaiKhoanTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TaiKhoanTable.IDQuyen 
				END
		END
		ELSE
        BEGIN
        	SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTaiKhoan) AS RowNum
								FROM dbo.TaiKhoan
							) AS TaiKhoanTable
					WHERE TaiKhoanTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TaiKhoanTable.MaTaiKhoan
					
        END
	END
	ELSE IF @sort <> N'default'
	BEGIN
		IF @sort = 'AZ'
				BEGIN
					SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTaiKhoan) AS RowNum
								FROM dbo.TaiKhoan
							) AS TaiKhoanTable
					WHERE TaiKhoanTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TaiKhoanTable.Email ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
					SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTaiKhoan) AS RowNum
								FROM dbo.TaiKhoan
							) AS TaiKhoanTable
					WHERE TaiKhoanTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TaiKhoanTable.Email DESC
				END
			ELSE IF @sort = 'SoDienThoai'
				BEGIN
					SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTaiKhoan) AS RowNum
								FROM dbo.TaiKhoan
							) AS TaiKhoanTable
					WHERE TaiKhoanTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TaiKhoanTable.SoDienThoai
				END
			ELSE IF @sort = 'IDQuyen'
				BEGIN
					SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTaiKhoan) AS RowNum
								FROM dbo.TaiKhoan
							) AS TaiKhoanTable
					WHERE TaiKhoanTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TaiKhoanTable.IDQuyen 
				END
	END
	ELSE 
	BEGIN
		SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTaiKhoan) AS RowNum
					FROM dbo.TaiKhoan
				) AS TaiKhoanTable
		WHERE TaiKhoanTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY TaiKhoanTable.MaTaiKhoan	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayTaiKhoanPhanTrangCount]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayTaiKhoanPhanTrangCount]
 @IDQuyen INT ,
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF  @IDQuyen <> 0
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTaiKhoan) AS RowNum
					FROM dbo.TaiKhoan
				) AS TaiKhoanTable
		WHERE TaiKhoanTable.IDQuyen = @IDQuyen
		
	END
	ELSE IF @search <> N'default'
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTaiKhoan) AS RowNum
			FROM dbo.TaiKhoan
			WHERE IDQuyen LIKE @likeSearch
			OR  Email LIKE @likeSearch
			OR SoDienThoai LIKE @likeSearch
			
		) AS TaiKhoanTable
	END
	ELSE
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTaiKhoan) AS RowNum
					FROM dbo.TaiKhoan
				) AS TaiKhoanTable
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayTheLoai]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLayTheLoai]
as
	begin
		select *from dbo.TheLoai 
		order by MaTheLoai
	end
--Lay 1The Loai--
GO
/****** Object:  StoredProcedure [dbo].[spLayTheLoaiPhanTrang]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayTheLoaiPhanTrang]
@soBatDau INT,
@soKetThuc INT,
@sort NVARCHAR(100),
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @search <> N'default'
	BEGIN
		IF @sort <> N'default'
		BEGIN
			IF @sort = 'AZ'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTheLoai) AS RowNum
						FROM dbo.TheLoai
						WHERE TenTheLoai LIKE @likeSearch
						OR MaTheLoai LIKE @likeSearch
					) AS TheLoaiTable
					WHERE TheLoaiTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TheLoaiTable.TenTheLoai ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTheLoai) AS RowNum
						FROM dbo.TheLoai
						WHERE TenTheLoai LIKE @likeSearch
						OR MaTheLoai LIKE @likeSearch
					) AS TheLoaiTable
					WHERE TheLoaiTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TheLoaiTable.TenTheLoai DESC
				END
		END
		ELSE
        BEGIN
        	SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTheLoai) AS RowNum
						FROM dbo.TheLoai
						WHERE TenTheLoai LIKE @likeSearch
						OR MaTheLoai LIKE @likeSearch
					) AS TheLoaiTable
					WHERE TheLoaiTable.RowNum BETWEEN @soBatDau AND @soKetThuc
        END
	END
	ELSE IF @sort <> N'default'
	BEGIN
		IF @sort = 'AZ'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTheLoai) AS RowNum
					FROM dbo.TheLoai
				) AS TheLoaiTable
				WHERE TheLoaiTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY TheLoaiTable.TenTheLoai ASC
			END
		ELSE IF @sort = 'ZA'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTheLoai) AS RowNum
					FROM dbo.TheLoai
				) AS TheLoaiTable
				WHERE TheLoaiTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY TheLoaiTable.TenTheLoai DESC
			END
			END
	ELSE 
	BEGIN
		SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTheLoai) AS RowNum
					FROM dbo.TheLoai
				) AS TheLoaiTable
		WHERE TheLoaiTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY TheLoaiTable.MaTheLoai
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayTheLoaiPhanTrangCount]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayTheLoaiPhanTrangCount]
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @search <> N'default'
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTheLoai) AS RowNum
			FROM dbo.TheLoai
			WHERE TenTheLoai LIKE @likeSearch
			OR  MaTheLoai LIKE @likeSearch
		) AS TheLoaiTable
	END
	ELSE
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaTheLoai) AS RowNum
			FROM dbo.TheLoai
		) AS TheLoaiTable
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayTheThuVienPhanTrang]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayTheThuVienPhanTrang]
@soBatDau INT,
@soKetThuc INT,
@maDocGia INT,
@sort NVARCHAR(100),
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @maDocGia <> 0
	BEGIN
		SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
					FROM dbo.TheThuVien
					WHERE MaDocGia = @MaDocGia
				) AS TheThuVienTable
		WHERE TheThuVienTable.MaDocGia = @maDocGia
		AND TheThuVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY TheThuVienTable.MaDocGia
	END
	ELSE IF @search <> N'default'
	BEGIN
		IF @sort <> N'default'
		BEGIN
			IF @sort = 'AZ'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
						FROM dbo.TheThuVien
						WHERE MaDocGia LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						OR NgayCapThe LIKE @likeSearch
						OR NgayHetHan LIKE @likeSearch
					) AS TheThuVienTable
					WHERE TheThuVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TheThuVienTable.MaDocGia ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
						FROM dbo.TheThuVien
							WHERE MaDocGia LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						OR NgayCapThe LIKE @likeSearch
						OR NgayHetHan LIKE @likeSearch
					) AS TheThuVienTable
					WHERE TheThuVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TheThuVienTable.MaDocGia DESC
				END
			ELSE IF @sort = 'TrangThai'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
						FROM dbo.TheThuVien
						WHERE MaDocGia LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						OR NgayCapThe LIKE @likeSearch
						OR NgayHetHan LIKE @likeSearch
					) AS TheThuVienTable
					WHERE TheThuVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TheThuVienTable.TrangThai
				END
			ELSE IF @sort = 'NgayCapThe'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
						FROM dbo.TheThuVien
						WHERE MaDocGia LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						OR NgayCapThe LIKE @likeSearch
						OR NgayHetHan LIKE @likeSearch
					) AS TheThuVienTable
					WHERE TheThuVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TheThuVienTable.NgayCapThe
				END
			ELSE IF @sort = 'NgayHetHan'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
						FROM dbo.TheThuVien
						WHERE MaDocGia LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						OR NgayCapThe LIKE @likeSearch
						OR NgayHetHan LIKE @likeSearch
					) AS TheThuVienTable
					WHERE TheThuVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY TheThuVienTable.NgayHetHan
				END
		END
		ELSE
        BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
						FROM dbo.TheThuVien
						WHERE MaDocGia LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						OR NgayCapThe LIKE @likeSearch
						OR NgayHetHan LIKE @likeSearch
					) AS TheThuVienTable
					WHERE TheThuVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					
        END
	END
	ELSE IF @sort <> N'default'
	BEGIN
		IF @sort = 'AZ'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
					FROM dbo.TheThuVien
				) AS TheThuVienTable
				WHERE TheThuVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY TheThuVienTable.MaDocGia ASC
			END
		ELSE IF @sort = 'ZA'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
					FROM dbo.TheThuVien
				) AS TheThuVienTable
				WHERE TheThuVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY TheThuVienTable.MaDocGia DESC
			END
		ELSE IF @sort = 'TrangThai'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
					FROM dbo.TheThuVien
				) AS TheThuVienTable
				WHERE TheThuVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY TheThuVienTable.TrangThai
			END
		ELSE IF @sort = 'NgayCapThe'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
					FROM dbo.TheThuVien
				) AS TheThuVienTable
				WHERE TheThuVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY TheThuVienTable.NgayCapThe
			END
		ELSE IF @sort = 'NgayHetHan'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
					FROM dbo.TheThuVien
				) AS TheThuVienTable
				WHERE TheThuVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY TheThuVienTable.NgayHetHan
			END
	END
	ELSE 
	BEGIN
		SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
					FROM dbo.TheThuVien
				) AS TheThuVienTable
		WHERE TheThuVienTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY TheThuVienTable.MaThe	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayTheThuVienPhanTrangCount]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayTheThuVienPhanTrangCount]
@maDocGia INT ,
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @maDocGia <> 0
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
					FROM dbo.TheThuVien
				) AS TheThuVienTable
		WHERE TheThuVienTable.MaDocGia = @maDocGia
		
	END
	ELSE IF @search <> N'default'
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
					FROM dbo.TheThuVien
					WHERE MaDocGia LIKE @likeSearch
						OR TrangThai LIKE @likeSearch
						OR NgayCapThe LIKE @likeSearch
						OR NgayHetHan LIKE @likeSearch
				) AS TheThuVienTable
	END
	ELSE
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  MaThe) AS RowNum
					FROM dbo.TheThuVien
				) AS TheThuVienTable
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayThongBao]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayThongBao]
AS
BEGIN
	SELECT * FROM dbo.ThongBao
	ORDER BY IDThongBao
END
GO
/****** Object:  StoredProcedure [dbo].[spLayThongBaoPhanTrang]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayThongBaoPhanTrang]
@soBatDau INT,
@soKetThuc INT,
@maTaiKhoan INT,
@sort NVARCHAR(100),
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @maTaiKhoan <> 0
	BEGIN
		SELECT * FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDThongBao) AS RowNum
					FROM dbo.ThongBao
					WHERE TenThongBao =@maTaiKhoan
				) AS ThongBaoTable
		WHERE ThongBaoTable.MaTaiKhoan = @maTaiKhoan
		AND ThongBaoTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY ThongBaoTable.MaTaiKhoan	
	END
	ELSE IF @search <> N'default'
	BEGIN
		IF @sort <> N'default'
		BEGIN
			IF @sort = 'AZ'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDThongBao) AS RowNum
						FROM dbo.ThongBao
						WHERE TenThongBao LIKE @likeSearch
						OR NoiDung LIKE @likeSearch
					) AS ThongBaoTable
					WHERE ThongBaoTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY ThongBaoTable.IDThongBao ASC
				END
			ELSE IF @sort = 'ZA'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDThongBao) AS RowNum
						FROM dbo.ThongBao
						WHERE TenThongBao LIKE @likeSearch
						OR NoiDung LIKE @likeSearch
					) AS ThongBaoTable
					WHERE ThongBaoTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY ThongBaoTable.IDThongBao DESC
				END
			ELSE IF @sort = 'TenThongBao'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDThongBao) AS RowNum
						FROM dbo.ThongBao
						WHERE TenThongBao LIKE @likeSearch
						OR NoiDung LIKE @likeSearch
					) AS ThongBaoTable
					WHERE ThongBaoTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY ThongBaoTable.TenThongBao
				END
			ELSE IF @sort = 'NoiDung'
				BEGIN
					SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDThongBao) AS RowNum
						FROM dbo.ThongBao
						WHERE TenThongBao LIKE @likeSearch
						OR NoiDung LIKE @likeSearch
					) AS ThongBaoTable
					WHERE ThongBaoTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					ORDER BY ThongBaoTable.NoiDung
				END
		END
		ELSE
        BEGIN
        	SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDThongBao) AS RowNum
						FROM dbo.ThongBao
						WHERE TenThongBao LIKE @likeSearch
						OR NoiDung LIKE @likeSearch
					) AS ThongBaoTable
					WHERE ThongBaoTable.RowNum BETWEEN @soBatDau AND @soKetThuc
					
        END
	END
	ELSE IF @sort <> N'default'
	BEGIN
		IF @sort = 'AZ'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDThongBao) AS RowNum
					FROM dbo.ThongBao
				) AS ThongBaoTable
				WHERE ThongBaoTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY ThongBaoTable.IDThongBao ASC
			END
		ELSE IF @sort = 'ZA'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDThongBao) AS RowNum
					FROM dbo.ThongBao
				) AS ThongBaoTable
				WHERE ThongBaoTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY ThongBaoTable.IDThongBao  DESC
			END
		ELSE IF @sort = 'TenThongBao'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY IDThongBao) AS RowNum
					FROM dbo.ThongBao
				) AS ThongBaoTable
				WHERE ThongBaoTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY ThongBaoTable.TenThongBao
			END
		ELSE IF @sort = 'NoiDung'
			BEGIN
				SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY IDThongBao) AS RowNum
					FROM dbo.ThongBao
				) AS ThongBaoTable
				WHERE ThongBaoTable.RowNum BETWEEN @soBatDau AND @soKetThuc
				ORDER BY ThongBaoTable.NoiDung
			END
	END
	ELSE 
	BEGIN
		SELECT *FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDThongBao) AS RowNum
					FROM dbo.ThongBao
				) AS ThongBaoTable
		WHERE ThongBaoTable.RowNum BETWEEN @soBatDau AND @soKetThuc
		ORDER BY ThongBaoTable.MaTaiKhoan	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLayThongBaoPhanTrangCount]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLayThongBaoPhanTrangCount]
@MaTaiKhoan INT ,
@search NVARCHAR(100) 
AS
BEGIN
	DECLARE @likeSearch NVARCHAR(100) = '%'+@search+'%'
	IF @MaTaiKhoan <> 0
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDThongBao) AS RowNum
					FROM dbo.ThongBao
				) AS ThongBaoTable
		WHERE ThongBaoTable.MaTaiKhoan = @MaTaiKhoan
	END
	ELSE IF @search <> N'default'
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDThongBao) AS RowNum
			FROM dbo.ThongBao
			WHERE TenThongBao LIKE @likeSearch
			OR  NoiDung LIKE @likeSearch
		) AS ThongBaoTable
	END
	ELSE
	BEGIN
		SELECT COUNT(*) AS soLuong FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY  IDThongBao) AS RowNum
					FROM dbo.ThongBao
				) AS ThongBaoTable
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spLog_TaiSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spLog_TaiSach]
@iDLog_TaiSach int, 
@maTaiKhoan int,
@ngayTaiVe Date,
@maCuonSach int,
@statementType nvarchar(100)
as
begin
	if(@statementType='ISERT')
		begin
			insert dbo.Log_TaiSach(maTaikhoan,ngayTaiVe, maCuonSach)
			values(
					@maTaiKhoan,
					@ngayTaiVe,
					@maCuonSach
					)
		end
	else if(@statementType='UPDATE')
		begin
			update dbo.Log_TaiSach set
			MaTaiKhoan=@maTaiKhoan,
			NgayTaiVe=@ngayTaiVe,
			MaCuonSach=@maCuonSach
			where idLog_TaiSach=@iDLog_TaiSach
		end
end
--lay  Log_TaiVe--
GO
/****** Object:  StoredProcedure [dbo].[spMaxCode]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spMaxCode]
@tenBang NVARCHAR(100)
AS
BEGIN
	IF @tenBang = 'DauSach'
	BEGIN
		SELECT TOP 1 MaDauSach FROM dbo.DauSach
	ORDER BY MaDauSach DESC	
	END
	ELSE IF @tenBang = 'CuonSach'
	BEGIN
		SELECT TOP 1 MaCuonSach FROM dbo.CuonSach
	ORDER BY MaCuonSach DESC	
	END
	ELSE IF @tenBang = 'DocGia'
	BEGIN
		SELECT TOP 1 MaDocGia FROM dbo.DocGia
	ORDER BY MaDocGia DESC	
	END
	ELSE IF @tenBang = 'Log_TaiSach'
	BEGIN
		SELECT TOP 1 idLog_TaiSach FROM dbo.Log_TaiSach
	ORDER BY idLog_TaiSach DESC	
	END
	ELSE IF @tenBang = 'MuonTraSach'
	BEGIN
		SELECT TOP 1 MaMuonSach FROM dbo.MuonTraSach
	ORDER BY MaMuonSach DESC	
	END
	ELSE IF @tenBang = 'MuonTraSachChiTiet'
	BEGIN
		SELECT TOP 1 MaMuonSach FROM dbo.MuonTraSachChiTiet
	ORDER BY MaMuonSach DESC	
	END
	ELSE IF @tenBang = 'NhanVien'
	BEGIN
		SELECT TOP 1 MaNhanVien FROM dbo.NhanVien
	ORDER BY MaNhanVien DESC	
	END
	ELSE IF @tenBang = 'Nxb'
	BEGIN
		SELECT TOP 1 MaNXB FROM dbo.Nxb
	ORDER BY MaNXB DESC	
	END
	ELSE IF @tenBang = 'PhieuPhat'
	BEGIN
		SELECT TOP 1 IDPhieuPhat FROM dbo.PhieuPhat
	ORDER BY IDPhieuPhat DESC	
	END
	ELSE IF @tenBang = 'PhongPhucVu'
	BEGIN
		SELECT TOP 1 IDPhong FROM dbo.PhongPhucVu
	ORDER BY IDPhong DESC	
	END
	ELSE IF @tenBang = 'QuyenHan'
	BEGIN
		SELECT TOP 1 IDQuyen FROM dbo.QuyenHan
	ORDER BY IDQuyen DESC	
	END
	ELSE IF @tenBang = 'TaiKhoan'
	BEGIN
		SELECT TOP 1 MaTaiKhoan FROM dbo.TaiKhoan
	ORDER BY MaTaiKhoan DESC	
	END
	ELSE IF @tenBang = 'TheLoai'
	BEGIN
		SELECT TOP 1 MaTheLoai FROM dbo.TheLoai
	ORDER BY MaTheLoai DESC	
	END
	ELSE IF @tenBang = 'TheThuVien'
	BEGIN
		SELECT TOP 1 MaThe FROM dbo.TheThuVien
	ORDER BY MaThe DESC	
	END
	ELSE IF @tenBang = 'ThongBao'
	BEGIN
		SELECT TOP 1 IDThongBao FROM dbo.ThongBao
	ORDER BY IDThongBao DESC	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[spMuonTraSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spMuonTraSach]
@maMuonSach int,
@maThe int,
@tienDatCoc int, 
@ghiChu  nvarchar(1500),
@statementType nvarchar(10)
as
begin
	if(@statementType='INSERT')
		begin
			insert dbo.MuonTraSach(maThe, tienDatCoc, ghiChu)
			values(
				@maThe,
				@tienDatCoc,
				@ghiChu
				)
		end
	else if(@statementType='UPDATE')
		begin
			update dbo.MuonTraSach set
			MaThe=@maThe,
			TienDatCoc=@tienDatCoc,
			GhiChu=@ghiChu
			where MaMuonSach = @maMuonSach
		end
end
--Lay Muon tr sach--
GO
/****** Object:  StoredProcedure [dbo].[spMuonTraSachChiTiet]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spMuonTraSachChiTiet]
@maMuonSach int,
@maCuonSach int,
@ngayMuon date,
@ngayHenTra date,
@ngayTra date,
@trangThai nvarchar(100),
@soLuong int,
@statementType nvarchar(10)
as
begin
	if(@statementType='INSERT')
		begin 
			insert dbo.MuonTraSachChiTiet(MaMuonSach,MaCuonSach,NgayMuon,NgayHenTra,NgayTra, TrangThai, soLuong)
			values(
			@maMuonSach,
					@maCuonSach,
					@ngayMuon,
					@ngayHenTra,
					@ngayTra,
					@trangThai,
					@soLuong
					)
			end
	else if(@statementType='UPDATE')
		begin 
			update dbo.MuonTraSachChiTiet SET
            MaCuonSach = @maCuonSach,
			NgayMuon=@ngayMuon,
			NgayHenTra=@ngayHenTra,
			NgayTra=@ngayTra,
			TrangThai=@trangThai,
			SoLuong=@soLuong
			WHERE MaMuonSach = @maMuonSach
		end
end
--Lay Muon tra sach chi tiet--
GO
/****** Object:  StoredProcedure [dbo].[spNhanVien]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spNhanVien]
@maNhanVien int,
@hoVaTen nvarchar(100),
@eMail nvarchar(100),
@soDienThoai nvarchar(100),
@ngaySinh Date,
@maTaiKhoan int,
@statememtType nvarchar(10)
as
begin
	if(@statememtType='INSERT')
		begin
			insert dbo.NhanVien(hoVaTen, eMail, soDienThoai, ngaySinh, maTaiKhoan)
			values(
					@hoVaTen,
					@eMail,
					@soDienThoai,
					@ngaySinh,
					@maTaiKhoan
					) 
		end
	else if(@statememtType='UPDATE')
		begin
			update dbo.NhanVien set
			HoVaTen=@hoVaTen,
			Email=@eMail,
			SoDienThoai=@soDienThoai,
			MaTaiKhoan=@maTaiKhoan
			where MaNhanVien=@maNhanVien
		end
end
-- Lay nhan vien--
GO
/****** Object:  StoredProcedure [dbo].[spNxb]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spNxb]
@maNXB int,
@tenNXB nvarchar(100),
@ghiChu nvarchar(1500),
@statementType nvarchar(10)
as
begin
	if(@statementType='INSERT')
		begin
			insert dbo.Nxb(tenNXB, ghiChu)
			values(
					@tenNXB,
					@ghiChu
					)
		end
	else if(@statementType='UPDATE')
		begin
			update dbo.Nxb set
			TenNXB=@tenNXB,
			GhiChu=@ghiChu
			where MaNXB=@maNXB
		end
end
--Lay NXB--
GO
/****** Object:  StoredProcedure [dbo].[spPhieuPhat]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spPhieuPhat]
@idPhieuPhat int,
@maNhanVien INT,
@maThe INT,
@ngayLap DATE,
@tienPhat int, 
@statementType nvarchar(10)
as 
begin
	if(@statementType='INSERT')
		begin
			INSERT INTO dbo.PhieuPhat
			        (
			          MaThe ,
					  MaNhanVien,
			          NgayLap ,

			          TienPhat
			        )
			VALUES  ( @maThe, @maNhanVien, GETDATE() , @tienPhat)
		end
	else if(@statementType='UPDATE')
		begin
			update dbo.PhieuPhat set
			MaThe =@maThe,
			MaNhanVien = @maNhanVien,
			NgayLap = @ngayLap,
			TienPhat = @tienPhat
			where IDPhieuPhat = @idPhieuPhat
		end
end

GO
/****** Object:  StoredProcedure [dbo].[spPhongPhucVu]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spPhongPhucVu]
@idPhong int,
@tenPhong nvarchar(100),
@gioBatDau time,
@gioKetThuc time,
@maNhanVien int,
@statementType nvarchar(10)
as
begin
	if(@statementType='INSERT')
		begin
			insert dbo.PhongPhucVu(tenPhong, gioBatDau, gioKetThuc,maNhanVien)
			values(
					@tenPhong,
					@gioBatDau,
					@gioKetThuc,
					@maNhanVien
					)
		end
	else if(@statementType='UPDATE')
		begin
			update dbo.PhongPhucVu set
			TenPhong=@tenPhong,
			GioBatDau=@gioBatDau,
			GioKetThuc=@gioKetThuc,
			MaNhanVien=@maNhanVien
			where IDPhong=@idPhong
		end
end
--Lay phong-
GO
/****** Object:  StoredProcedure [dbo].[spQuyenHan]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spQuyenHan]
@idQuyen int,
@tenQuyen nvarchar (100),
@statementType nvarchar(10)
as
begin
	if(@statementType='INSERT')
		begin
			insert dbo.QuyenHan(tenQuyen)
			values(
					@tenQuyen
					)
		end
	else if(@statementType='UPDATE')
		begin
			update dbo.QuyenHan set
			TenQuyen=@tenQuyen
			where IDQuyen=@idQuyen
		end
end
--Lay Quyen han--
GO
/****** Object:  StoredProcedure [dbo].[spTaiKhoan]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spTaiKhoan]
@maTaiKhoan int,
@eMail nvarchar(100),
@soDienThoai nvarchar(100),
@matKhau nvarchar(100),
@avartar IMAGE,
@idQuyen int,
@maThe int,
@statementType nvarchar(10)
as
begin
	if(@statementType='INSERT')
		begin
			insert dbo.TaiKhoan(eMail, soDienThoai, matKhau,Avartar, idQuyen, maThe)
			values(
			
					@eMail,
					@soDienThoai,
					@matKhau,
					@avartar,
					@idQuyen,
					@maThe
					)

		end
	else if(@statementType='UPDATE')
		begin
			update dbo.TaiKhoan set
			Email=@eMail,
			SoDienThoai=@soDienThoai,
			MatKhau=@matKhau,
			Avartar=@avartar,
			IDQuyen=@idQuyen,
			MaThe=@maThe
			WHERE MaTaiKhoan = @maTaiKhoan
		end
	end
	--Lay Tai khoan--
GO
/****** Object:  StoredProcedure [dbo].[spTheLoai]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spTheLoai]
@maTheLoai int,
@tenTheLoai nvarchar(100),
@statementType nvarchar(10)
as
begin
	if(@statementType='INSERT')
		begin
			insert dbo.TheLoai(TenTheLoai)
			values( 
			
					@tenTheLoai
					)
		end
	else if(@statementType ='UPDATE')
		begin
			update dbo.TheLoai set
			TenTheLoai=@tenTheLoai
			WHERE MaTheLoai = @maTheLoai
		end
end
--Lay The Loai--
GO
/****** Object:  StoredProcedure [dbo].[spTheThuVien]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spTheThuVien]
@maThe int,
@maDocGia int,
@ngayCapThe Date,
@ngayHetHan Date,
@trangThai bit,
@soSachDuocMuon int,
@soSachDangMuon int,
@statementType nvarchar(10)
as 
begin
	if(@statementType='INSERT')
		begin
			insert dbo.TheThuVien(maDocGia,ngayCapThe,ngayHetHan, trangThai, soSachDuocMuon, soSachDangMuon )
			values(
				@maDocGia,
				@ngayCapThe,
				@ngayHetHan, 
				@trangThai, 
				@soSachDuocMuon, 
				@soSachDangMuon 
			)
		end
	else if(@statementType='UPDATE')
		begin
			update dbo.TheThuVien set
			MaDocGia=@maDocGia,
			NgayCapThe=@ngayCapThe,
			NgayHetHan=@ngayHetHan,
			TrangThai=@trangThai,
			SoSachDuocMuon=@soSachDuocMuon,
			SoSachDangMuon=@soSachDangMuon
			where MaThe=@maThe
		end
end
--Lay the thu vien--
GO
/****** Object:  StoredProcedure [dbo].[spThongbao]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spThongbao]
@idThongBao int,
@tenThongBao nvarchar(100),
@noiDung nvarchar(1500),
@hinhAnh IMAGE,
@maTaiKhoan int, 
@statementType nvarchar(10)
as 
begin
	if(@statementType='INSERT')
		begin
			insert dbo.ThongBao(tenThongBao, noiDung, hinhAnh, maTaiKhoan)
			values(
				@tenThongBao,
				@noiDung,
				@hinhAnh,
				@maTaiKhoan
			)
		end
	else if(@statementType='UPDATE')
		begin
			update dbo.ThongBao set
			TenThongBao=@tenThongBao,
			NoiDung=@noiDung,
			@hinhAnh=@hinhAnh,
			MaTaiKhoan=@maTaiKhoan
			where IDThongBao=@idThongBao
		end
end
--Lay idThongBao--
GO
/****** Object:  StoredProcedure [dbo].[spXoaCuonSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[spXoaCuonSach]
@maCuonSach int
as
begin
	delete dbo.CuonSach where MaCuonSach=@maCuonSach
end
GO
/****** Object:  StoredProcedure [dbo].[spXoaDauSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spXoaDauSach]
@maDauSach INT
AS
BEGIN
	DELETE dbo.DauSach  WHERE MaDauSach =@maDauSach
END
GO
/****** Object:  StoredProcedure [dbo].[spXoaDocGia]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spXoaDocGia]
@maDocGia int
as
begin
	delete dbo.DocGia where MaDocGia=@maDocGia
end
GO
/****** Object:  StoredProcedure [dbo].[spXoaIdThongBao]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spXoaIdThongBao]
@idThongBao int
as
begin
	delete dbo.ThongBao where IDThongBao=@idThongBao
end
GO
/****** Object:  StoredProcedure [dbo].[spXoaLog_TaiVe]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spXoaLog_TaiVe]
@iDLog_TaiVe int
as
begin
	delete dbo.Log_TaiSach where idLog_TaiSach=@iDLog_TaiVe
end

GO
/****** Object:  StoredProcedure [dbo].[spXoaMuonTraSach]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spXoaMuonTraSach]
@maMuonSach int
as
begin
	delete dbo.MuonTraSach
	where MaMuonSach=@maMuonSach
end
GO
/****** Object:  StoredProcedure [dbo].[spXoaMuonTraSachChiTiet]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spXoaMuonTraSachChiTiet]
@maMuonSach int
as
begin
	delete dbo.MuonTraSachChiTiet 
	where MaMuonSach=@maMuonSach
end
GO
/****** Object:  StoredProcedure [dbo].[spXoaNhanVien]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spXoaNhanVien]
@maNhanVien int
as
begin
	delete dbo.NhanVien where MaNhanVien=@maNhanVien
end
GO
/****** Object:  StoredProcedure [dbo].[spXoaNxb]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spXoaNxb]
@maNXB int
as
begin
	delete dbo.Nxb where MaNXB=@maNXB
end
GO
/****** Object:  StoredProcedure [dbo].[spXoaPhieuPhat]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spXoaPhieuPhat]
@idPhieuPhat int
as
begin
	delete dbo.PhieuPhat where IDPhieuPhat=@idPhieuPhat
end
GO
/****** Object:  StoredProcedure [dbo].[spXoaPhongPhucVu]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spXoaPhongPhucVu]
@idPhong int 
as
begin
	delete dbo.PhongPhucVu where IDPhong=@idPhong
end
GO
/****** Object:  StoredProcedure [dbo].[spXoaQuyenHan]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[spXoaQuyenHan]
 @idQuyen int
 as
 begin
	delete dbo.QuyenHan where IDQuyen=@idQuyen
 end
GO
/****** Object:  StoredProcedure [dbo].[spXoaTaiKhoan]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create proc [dbo].[spXoaTaiKhoan]
	@maTaiKhoan int
	as
	begin
		delete dbo.TaiKhoan where MaTaiKhoan=@maTaiKhoan
	end
GO
/****** Object:  StoredProcedure [dbo].[spXoaTheLoai]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create proc [dbo].[spXoaTheLoai]
	@maTheLoai int
	as
	begin 
		delete dbo.TheLoai where MaTheLoai=@maTheLoai
	end
GO
/****** Object:  StoredProcedure [dbo].[spXoaTheThuVien]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spXoaTheThuVien]
@maThe int
as
begin
	delete dbo.TheThuVien where MaThe=@maThe
end
GO
/****** Object:  StoredProcedure [dbo].[spXoaThongBao]    Script Date: 4/28/2019 11:22:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[spXoaThongBao]
@maThongBao int
as
begin
	delete dbo.ThongBao where IDThongBao=@maThongBao
end
GO
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