<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href='https://fonts.googleapis.com/css?family=Roboto'
	rel='stylesheet'>
<!-- Title Page-->
<title>QUẢN LÝ THÔNG BÁO</title>

<!-- Fontfaces CSS-->
<c:if test="${thongBaoIU != null }">
	<link href="../css/font-face.css" rel="stylesheet" media="all">
	<link href="../vendor/font-awesome-4.7/css/font-awesome.min.css"
		rel="stylesheet" media="all">
	<link href="../vendor/font-awesome-5/css/fontawesome-all.min.css"
		rel="stylesheet" media="all">
	<link href="../vendor/mdi-font/css/material-design-iconic-font.min.css"
		rel="stylesheet" media="all">
	<!-- Bootstrap CSS-->
	<link href="../vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet"
		media="all">

	<!-- Vendor CSS-->
	<link href="../vendor/animsition/animsition.min.css" rel="stylesheet"
		media="all">
	<link
		href="../vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
		rel="stylesheet" media="all">
	<link href="../vendor/wow/animate.css" rel="stylesheet" media="all">
	<link href="../vendor/css-hamburgers/hamburgers.min.css"
		rel="stylesheet" media="all">
	<link href="../vendor/slick/slick.css" rel="stylesheet" media="all">
	<link href="../vendor/select2/select2.min.css" rel="stylesheet"
		media="all">
	<link href="../vendor/perfect-scrollbar/perfect-scrollbar.css"
		rel="stylesheet" media="all">

	<!-- Main CSS-->
	<link href="../css/theme_1.css" rel="stylesheet" media="all">
</c:if>
<c:if test="${thongBaoIU == null }">
	<link href="./css/font-face.css" rel="stylesheet" media="all">
	<link href="./vendor/font-awesome-4.7/css/font-awesome.min.css"
		rel="stylesheet" media="all">
	<link href="./vendor/font-awesome-5/css/fontawesome-all.min.css"
		rel="stylesheet" media="all">
	<link href="./vendor/mdi-font/css/material-design-iconic-font.min.css"
		rel="stylesheet" media="all">
	<!-- Bootstrap CSS-->
	<link href="./vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet"
		media="all">

	<!-- Vendor CSS-->
	<link href="./vendor/animsition/animsition.min.css" rel="stylesheet"
		media="all">
	<link
		href="./vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
		rel="stylesheet" media="all">
	<link href="./vendor/wow/animate.css" rel="stylesheet" media="all">
	<link href="./vendor/css-hamburgers/hamburgers.min.css"
		rel="stylesheet" media="all">
	<link href="./vendor/slick/slick.css" rel="stylesheet" media="all">
	<link href="./vendor/select2/select2.min.css" rel="stylesheet"
		media="all">
	<link href="./vendor/perfect-scrollbar/perfect-scrollbar.css"
		rel="stylesheet" media="all">

	<!-- Main CSS-->
	<link href="./css/theme_1.css" rel="stylesheet" media="all">
</c:if>


</head>

<body class="animsition">
	<div class="page-wrapper">



		<!-- HEADER MOBILE-->
		<header class="header-mobile d-block d-lg-none">
			<div class="header-mobile__bar">
				<div class="container-fluid">
					<div class="header-mobile-inner">
						<a class="logo" href="index.html"> <c:if
								test="${thongBaoIU != null }">
								<img src="../images/icon/logo.png" alt="CoolAdmin" />
							</c:if> <c:if test="${thongBaoIU == null }">
								<img src="./images/icon/logo.png" alt="CoolAdmin" />
							</c:if>
						</a>
						<button class="hamburger hamburger--slider" type="button">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</div>
			<nav class="navbar-mobile">
				<div class="container-fluid">
					<ul class="navbar-mobile__list list-unstyled">
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fa-tachometer-alt"></i>Mượn-trả sách
						</a>
							<ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
								<li><a href="MuonTraSachQuanLy">Mượn sách</a></li>
								<li><a href="MuonTraSachChiTiet">Trả sách</a></li>
								<li><a href="TaiKhoanQuanLy">Đăng kí thẻ thư viện</a></li>
								<li><a href="PhieuPhatQuanLy">Lập phiếu phạt</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fas fa-table"></i>Quản lí
						</a>
							<ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
								<li><a href="NhanVienQuanLy">Nhân viên</a></li>
								<li><a href="DocGiaQuanLy">Đọc giả</a></li>
								<li><a href="ThongBaoQuanLy">Thông báo</a></li>
								<li><a href="DauSachQuanLy">Đầu sách</a></li>
								<li><a href="NxbQuanLy">Nhà xuất bản</a></li>
								<li><a href="TaiKhoanQuanLy">Tài khoản</a></li>
								<li><a href="PhongPhucVuQuanLy">Phòng phục vụ</a></li>
							</ul></li>
						<li><a href="table.html"> <i class="fas fa-chart-bar"></i>Thông
								kê
						</a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- END HEADER MOBILE-->




		<!-- MENU SIDEBAR-->
		<aside class="menu-sidebar d-none d-lg-block">
			<div class="logo">
				<a href="#"> <c:if test="${thongBaoIU != null }">
						<img src="../images/icon/logo.png" alt="Cool Admin" />
					</c:if> <c:if test="${thongBaoIU == null }">
						<img src="./images/icon/logo.png" alt="Cool Admin" />
					</c:if>
				</a>
			</div>
			<div class="menu-sidebar__content js-scrollbar1">
				<nav class="navbar-sidebar">
					<ul class="list-unstyled navbar__list">
						<li class="active has-sub"><a class="js-arrow" href="#">
								<i class="fas fa-tachometer-alt"></i>Nghiệp vụ thư viện
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<li><a href="MuonTraSachQuanLy">Mượn sách</a></li>
								<li><a href="MuonTraSachChiTiet">Trả sách</a></li>
								<li><a href="TaiKhoanQuanLy">Đăng kí thẻ thư viện</a></li>
								<li><a href="PhieuPhatQuanLy">Lập phiếu phạt</a></li>
							</ul></li>
						<li class="has-sub"><a class="js-arrow" href="#"> <i
								class="fas fas fa-table"></i>Quản lí
						</a>
							<ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
								<li><a href="NhanVienQuanLy">Nhân viên</a></li>
								<li><a href="DocGiaQuanLy">Đọc giả</a></li>
								<li><a href="ThongBaoQuanLy">Thông báo</a></li>
								<li><a href="DauSachQuanLy">Đầu sách</a></li>
								<li><a href="NxbQuanLy">Nhà xuất bản</a></li>
								<li><a href="TaiKhoanQuanLy">Tài khoản</a></li>
								<li><a href="PhongPhucVuQuanLy">Phòng phục vụ</a></li>
							</ul></li>
						<li><a href="table.html"> <i class="fas fa-chart-bar"></i>Thống
								kê
						</a></li>
					</ul>
				</nav>
			</div>
		</aside>
		<!-- END MENU SIDEBAR-->





		<c:if test="${thongBaoIU != null }">
			<form method="post" action="/QuanLyThuVien/ThongBaoQuanLy/update"
				enctype="multipart/form-data">
		</c:if>
		<c:if test="${thongBaoIU == null }">
			<form method="post" action="/QuanLyThuVien/ThongBaoQuanLy/insert"
				enctype="multipart/form-data">
		</c:if>
		<!-- Modal -->
		<div class="modal fade" id="InsertUpdate" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true"
			data-backdrop="false">
			<div class="modal-lg modal-dialog " role="document">
				<div class="modal-content ">
					<div class="modal-header">
						<c:if test="${thongBaoIU != null }">
							<h3 class="modal-title" id="InsertLabel"
								style="font-family: 'Roboto';">Sửa thông báo</h3>
						</c:if>
						<c:if test="${thongBaoIU == null }">
							<h3 class="modal-title" id="InsertLabel"
								style="font-family: 'Roboto';">Thêm thông báo</h3>
						</c:if>

						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>

					<div class="modal-body">
						<div class="row">
							<div class="form-group col-md-12">
								<label>ID Thông Báo</label> <input type="hidden"
									class="form-control" id="pages" name="pages"
									value="${soTrangHienTai}">
								<c:if test="${thongBaoIU != null }">
									<input type="text" name="txtIdThongBao" required="required"
										readonly="readonly" class="form-control"
										value="${thongBaoIU.getIdThongBao() }">
								</c:if>
								<c:if test="${thongBaoIU == null }">
									<input type="text" name="txtIdThongBao" required="required"
										readonly="readonly" class="form-control" value="${maxCode +1}">
								</c:if>


							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-12">
								<label>TênThông Báo</label> <input type="text"
									name="txtTenThongBao" class="form-control" required="required"
									value="${thongBaoIU.getTenThongBao() }">
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-12">
								<label>Nội Dung</label>
								<textarea rows="5" id="txtNoiDung" name="txtNoiDung"
									class="col-md-12 form-control" style="border: solid 1px green;"></textarea>
								<script type="text/javascript">
									document.getElementById("txtNoiDung").value = "${thongBaoIU.getNoiDung()}";
								</script>
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-12">
								<label>Hình Ảnh</label> <input type="file" name="imageHinhAnh"
									class="form-control" accept="image/*"
									value="${thongBaoIU.getHinhAnh() }"
									enctype="multipart/form-data">
							</div>
						</div>
						<c:if test="${thongBaoIU != null }">
							<div class="row">
								<div class="form-group col-md-12">
									<img alt="Not found"
										src="http://localhost:9999/QuanLyThuVien/getHinhAnh?maThongBao=${thongBaoIU.getIdThongBao() }"
										width="200px" height="200px">
								</div>

							</div>
						</c:if>
						<div class="form-group col-md-12">
							<label>Mã Tài Khoản</label>
							<c:if test="${thongBaoIU != null }">
								<input type="text" name="txtMaTaiKhoan" required="required"
									readonly="readonly" class="form-control"
									value="${thongBaoIU.getMaTaiKhoan() }">
							</c:if>
							<c:if test="${thongBaoIU == null }">
								<input type="text" name="txtMaTaiKhoan" required="required"
									class="form-control" value="${maxCode +1}">
							</c:if>
						</div>

						<div class="modal-footer pull-left">
							<button class="btn btn-secondary pull-left" data-dismiss="modal">Đóng</button>
						</div>

						<c:if test="${thongBaoIU != null }">
							<div class="modal-footer pull-right">
								<input class="btn btn-primary" type="submit" value="Sửa">
						</c:if>
						<c:if test="${thongBaoIU == null }">
							<div class="modal-footer pull-right">
								<input class="btn btn-primary" type="submit" value="Thêm">
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>





	<!-- PAGE CONTAINER-->
	<div class="page-container">
		<header class="header-desktop">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="header-wrap"></div>
				</div>
				<div class="header-button pull-right">
					<div class="noti-wrap">
						<div class="noti__item js-item-menu">
							<i class="zmdi zmdi-comment-more"></i> <span class="quantity">1</span>
							<div class="mess-dropdown js-dropdown">
								<div class="mess__title">
									<p>You have 2 news message</p>
								</div>
								<div class="mess__item">
									<div class="image img-cir img-40">
										<c:if test="${thongBaoIU != null }">
											<img src="../images/icon/avatar-06.jpg" alt="Michelle Moreno" />
										</c:if>
										<c:if test="${thongBaoIU == null }">
											<img src="./images/icon/avatar-06.jpg" alt="Michelle Moreno" />
										</c:if>

									</div>
									<div class="content">
										<h6>Michelle Moreno</h6>
										<p>Have sent a photo</p>
										<span class="time">3 min ago</span>
									</div>
								</div>
								<div class="mess__item">
									<div class="image img-cir img-40">
										<c:if test="${thongBaoIU != null }">
											<img src="../images/icon/avatar-04.jpg" alt="Diane Myers" />
										</c:if>
										<c:if test="${thongBaoIU != null }">
											<img src="./images/icon/avatar-04.jpg" alt="Diane Myers" />
										</c:if>
									</div>
									<div class="content">
										<h6>Diane Myers</h6>
										<p>You are now connected on message</p>
										<span class="time">Yesterday</span>
									</div>
								</div>
								<div class="mess__footer">
									<a href="#">View all messages</a>
								</div>
							</div>
						</div>
						<div class="noti__item js-item-menu">
							<i class="zmdi zmdi-email"></i> <span class="quantity">1</span>
							<div class="email-dropdown js-dropdown">
								<div class="email__title">
									<p>You have 3 New Emails</p>
								</div>
								<div class="email__item">
									<div class="image img-cir img-40">
										<c:if test="${thongBaoIU != null }">
											<img src="../images/icon/avatar-06.jpg" alt="Cynthia Harvey" />
										</c:if>
										<c:if test="${thongBaoIU == null }">
											<img src="./images/icon/avatar-06.jpg" alt="Cynthia Harvey" />
										</c:if>
									</div>
									<div class="content">
										<p>Meeting about new dashboard...</p>
										<span>Cynthia Harvey, 3 min ago</span>
									</div>
								</div>
								<div class="email__item">
									<div class="image img-cir img-40">
										<c:if test="${thongBaoIU != null }">
											<img src="../images/icon/avatar-05.jpg" alt="Cynthia Harvey" />
										</c:if>
										<c:if test="${thongBaoIU == null }">
											<img src="./images/icon/avatar-05.jpg" alt="Cynthia Harvey" />
										</c:if>
									</div>
									<div class="content">
										<p>Meeting about new dashboard...</p>
										<span>Cynthia Harvey, Yesterday</span>
									</div>
								</div>
								<div class="email__item">
									<div class="image img-cir img-40">
										<c:if test="${thongBaoIU != null }">
											<img src="../images/icon/avatar-04.jpg" alt="Cynthia Harvey" />
										</c:if>
										<c:if test="${thongBaoIU == null }">
											<img src="../images/icon/avatar-04.jpg" alt="Cynthia Harvey" />
										</c:if>

									</div>
									<div class="content">
										<p>Meeting about new dashboard...</p>
										<span>Cynthia Harvey, April 12,,2018</span>
									</div>
								</div>
								<div class="email__footer">
									<a href="#">See all emails</a>
								</div>
							</div>
						</div>
						<div class="noti__item js-item-menu">
							<i class="zmdi zmdi-notifications"></i> <span class="quantity">3</span>
							<div class="notifi-dropdown js-dropdown">
								<div class="notifi__title">
									<p>You have 3 Notifications</p>
								</div>
								<div class="notifi__item">
									<div class="bg-c1 img-cir img-40">
										<i class="zmdi zmdi-email-open"></i>
									</div>
									<div class="content">
										<p>You got a email notification</p>
										<span class="date">April 12, 2018 06:50</span>
									</div>
								</div>
								<div class="notifi__item">
									<div class="bg-c2 img-cir img-40">
										<i class="zmdi zmdi-account-box"></i>
									</div>
									<div class="content">
										<p>Your account has been blocked</p>
										<span class="date">April 12, 2018 06:50</span>
									</div>
								</div>
								<div class="notifi__item">
									<div class="bg-c3 img-cir img-40">
										<i class="zmdi zmdi-file-text"></i>
									</div>
									<div class="content">
										<p>You got a new file</p>
										<span class="date">April 12, 2018 06:50</span>
									</div>
								</div>
								<div class="notifi__footer">
									<a href="#">All notifications</a>
								</div>
							</div>
						</div>
					</div>
					<div class="account-wrap">
						<div class="account-item clearfix js-item-menu">
							<div class="image">
								<c:if test="${thongBaoIU != null }">
									<img src="../images/icon/avatar-01.jpg" alt="John Doe" />
								</c:if>
								<c:if test="${thongBaoIU == null }">
									<img src="./images/icon/avatar-01.jpg" alt="John Doe" />
								</c:if>

							</div>
							<div class="content">
								<a class="js-acc-btn" href="#">john doe</a>
							</div>
							<div class="account-dropdown js-dropdown">
								<div class="info clearfix">
									<div class="image">
										<a href="#"> <c:if test="${thongBaoIU != null }">
												<img src="../images/icon/avatar-01.jpg" alt="John Doe" />
											</c:if> <c:if test="${thongBaoIU == null }">
												<img src="./images/icon/avatar-01.jpg" alt="John Doe" />
											</c:if>
										</a>
									</div>
									<div class="content">
										<h5 class="name">
											<a href="#">john doe</a>
										</h5>
										<span class="email">johndoe@example.com</span>
									</div>
								</div>
								<div class="account-dropdown__body">
									<div class="account-dropdown__item">
										<a href="#"> <i class="zmdi zmdi-account"></i>Account
										</a>
									</div>
									<div class="account-dropdown__item">
										<a href="#"> <i class="zmdi zmdi-settings"></i>Setting
										</a>
									</div>
									<div class="account-dropdown__item">
										<a href="#"> <i class="zmdi zmdi-money-box"></i>Billing
										</a>
									</div>
								</div>
								<div class="account-dropdown__footer">
									<a href="#"> <i class="zmdi zmdi-power"></i>Logout
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>


		<!-- MAIN CONTENT-->
		<div class="main-content">

			<div class="section__content section__content--p30">

				<div class="container-fluid">
					<div class="row">
						<form method="post" action="/QuanLyThuVien/ThongBaoQuanLy"
							class="col-12 pull-left">
							<div class="col-12 pull-left">
								<h4>Tìm kiếm</h4>
								<div class="space-5"></div>
								<div class="input-group">
									<input type="text" class="form-control" id="txtSearch"
										name="txtSearch"
										placeholder="Nhập tên sách hoặc tên tác giả, ngôn ngữ,..."
										value="${txtSearch}"> <input type="hidden"
										class="form-control" id="pages" name="pages"
										value="${soTrangHienTai}">
									<div class="input-group-btn">
										<input type="submit" value="Tìm Kiếm"
											class="btn btn-primary icofont icofont-search-alt-2">
									</div>
								</div>
								<div class="space-200"></div>
								<div class="pull-left col-6">
									<p>
										<strong><c:out value="${listThongBao.size() }"></c:out></strong>
										of <strong><c:out value="${total }"></c:out></strong> thông
										báo được tìm thấy
									</p>
								</div>
								<!-- sắp xếp(từ từ tính) -->
								<div class="pull-right col-6">

									<div class="form-group">
										<label class="control-label col-xs-12" for="sort">Sắp
											xếp theo : </label>
										<div class="col-xs-4">
											<div class="form-group">
												<select name="selectSort" id="selectSort"
													class="form-control" onchange="this.form.submit()">
													<option value="AZ">A-Z</option>
													<option value="ZA">Z-A</option>
													<option value="TenThongBao">Tên Thông Báo</option>
													<option value="NoiDung">Nội Dung</option>
												</select>
											</div>
										</div>
										<script type="text/javascript">
											document
													.getElementById("selectSort").value = "${selectSort}";
										</script>
									</div>

								</div>
							</div>
						</form>
						<div class="col-sm-12 col-md-12">
							<div class="card">
								<div class="card-header">
									<h3>Thông Báo</h3>
								</div>
								<div class="card-body card-block">

									<div class="col-12 col-md-12">
										<div class="table-responsive table--no-card m-b-30">

											<table style="width: 100%"
												class="table  table-borderless table-striped table-earning">
												<thead>

													<tr class="col-sm-12">
														<th>ID Thông Báo</th>
														<th>Tên Thông Báo</th>
														<th>Nội Dung</th>
														<th>Hình Ảnh</th>
														<th>Mã Tài Khoản</th>
														<th>Thêm và Xóa&nbsp;&nbsp;&nbsp;&nbsp;</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="thongBao" items="${listThongBao}">
														<tr>
															<td><c:out value="${thongBao.getIdThongBao()}" /></td>
															<td><c:out value="${thongBao.getTenThongBao()}" /></td>
															<td style="word-wrap: break-word;"><c:out
																	value="${thongBao.getNoiDung()}" /></td>
															<td><img alt="Not found"
																src="http://localhost:9999/QuanLyThuVien/getHinhAnh?maThongBao=${thongBao.getIdThongBao() }"
																width="100px" height="100px"></td>
															<td><c:out value="${thongBao.getMaTaiKhoan()}" /></td>

															<td><a class="btn btn-warning pull-left"
																href="/QuanLyThuVien/ThongBaoQuanLy/edit?maThongBao=<c:out value='${thongBao.getIdThongBao()}' />&pages=<c:out value="${soTrangHienTai}" />">Sửa</a>
																&nbsp;&nbsp;&nbsp;&nbsp; <a class="btn btn-danger"
																href="/QuanLyThuVien/ThongBaoQuanLy/delete?maThongBao=<c:out value='${thongBao.getIdThongBao()}' />&pages=<c:out value="${soTrangHienTai}" />">Xóa</a>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>

									</div>
									<div class="pull-right">
										<div class="col-xs-12">
											<div class="shop-pagination pull-right">
												<ul id="" class="pagination-sm pagination">
													<li class="page-item first"><a
														href="/QuanLyThuVien/ThongBaoQuanLy?pages=1&txtSearch=<c:out value='${txtSearch}'/>&selectSort=<c:out value='${selectSort}'/>"
														class="page-link">First</a></li>
													<c:if test="${soTrangHienTai >=2 }">
														<li class="page-item prev"><a
															href="/QuanLyThuVien/ThongBaoQuanLy?pages=<c:out value='${soTrangHienTai-1}'/>&txtSearch=<c:out value='${txtSearch}'/>&selectSort=<c:out value='${selectSort}'/>"
															class="page-link">Previous</a></li>
													</c:if>
													<c:forEach var="i" begin="1" end="${soTrang}" step="1">
														<c:if test="${soTrangHienTai == i }">
															<li class="page-item active"><a
																href="/QuanLyThuVien/ThongBaoQuanLy?pages=<c:out value='${i}'/>&txtSearch=<c:out value='${txtSearch}'/>&selectSort=<c:out value='${selectSort}'/>"
																class="page-link"><c:out value="${i}"></c:out></a></li>
														</c:if>
														<c:if test="${soTrangHienTai != i }">
															<li class="page-item  "><a
																href="/QuanLyThuVien/ThongBaoQuanLy?pages=<c:out value='${i}'/>&txtSearch=<c:out value='${txtSearch}'/>&selectSort=<c:out value='${selectSort}'/>"
																class="page-link"><c:out value="${i}"></c:out></a></li>
														</c:if>
													</c:forEach>
													<c:if test="${soTrangHienTai < soTrang }">
														<li class="page-item next"><a
															href="/QuanLyThuVien/ThongBaoQuanLy?pages=<c:out value='${soTrangHienTai+1}'/>&txtSearch=<c:out value='${txtSearch}'/>&selectSort=<c:out value='${selectSort}'/>"
															class="page-link">Next</a></li>
													</c:if>
													<li class="page-item last"><a
														href="/QuanLyThuVien/ThongBaoQuanLy?pages=<c:out value='${soTrang}'/>"
														class="page-link">Last</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div id="Bieu_mau">
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#InsertUpdate">Thêm</button>
									</div>

								</div>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- END MAIN CONTENT-->
	<!-- END PAGE CONTAINER-->


	<!-- Jquery JS-->
	<c:if test="${thongBaoIU != null }">
		<script src="../vendor/jquery-3.2.1.min.js"></script>
		<!-- Bootstrap JS-->
		<script src="../vendor/bootstrap-4.1/popper.min.js"></script>
		<script src="../vendor/bootstrap-4.1/bootstrap.min.js"></script>
		<!-- Vendor JS       -->
		<script src="../vendor/slick/slick.min.js">
			
		</script>
		<script src="../vendor/wow/wow.min.js"></script>
		<script src="../vendor/animsition/animsition.min.js"></script>
		<script
			src="../vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
			
		</script>
		<script src="../vendor/counter-up/jquery.waypoints.min.js"></script>
		<script src="../vendor/counter-up/jquery.counterup.min.js">
			
		</script>
		<script src="../vendor/circle-progress/circle-progress.min.js"></script>
		<script src="../vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
		<script src="../vendor/chartjs/Chart.bundle.min.js"></script>
		<script src="../vendor/select2/select2.min.js">
			
		</script>
		<!-- Main JS-->
		<script src="../js/main_admin.js"></script>
	</c:if>
	<c:if test="${thongBaoIU == null }">
		<script src="./vendor/jquery-3.2.1.min.js"></script>
		<!-- Bootstrap JS-->
		<script src="./vendor/bootstrap-4.1/popper.min.js"></script>
		<script src="./vendor/bootstrap-4.1/bootstrap.min.js"></script>
		<!-- Vendor JS       -->
		<script src="./vendor/slick/slick.min.js">
			
		</script>
		<script src="./vendor/wow/wow.min.js"></script>
		<script src="./vendor/animsition/animsition.min.js"></script>
		<script
			src="./vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
			
		</script>
		<script src="./vendor/counter-up/jquery.waypoints.min.js"></script>
		<script src="./vendor/counter-up/jquery.counterup.min.js">
			
		</script>
		<script src="./vendor/circle-progress/circle-progress.min.js"></script>
		<script src="./vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
		<script src="./vendor/chartjs/Chart.bundle.min.js"></script>
		<script src="./vendor/select2/select2.min.js">
			
		</script>
		<!-- Main JS-->
		<script src="./js/main_admin.js"></script>
	</c:if>
	<c:if test="${thongBaoIU != null }">
		<script type="text/javascript">
			$('#InsertUpdate').modal('show');
		</script>
	</c:if>
</body>

</html>
