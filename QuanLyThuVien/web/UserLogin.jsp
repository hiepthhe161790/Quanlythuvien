<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Đăng nhập</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Place favicon.ico in the root directory -->
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<link rel="shortcut icon" type="image/ico" href="images/favicon.ico" />
<!-- Plugin-CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/icofont.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/cardslider.css">
<link rel="stylesheet" href="css/responsiveslides.css">
<!-- Main-Stylesheets -->
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/overright.css">
<link rel="stylesheet" href="css/theme.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body data-spy="scroll" data-target="#mainmenu" data-offset="50">
	<header class="relative" id="sc1">
		<!-- Header-background-markup -->
		<div class="overlay-bg relative">
			<img src="images/slide/slide2.jpg" alt="">
		</div>
		<!-- Mainmenu-markup-start -->
		<div class="mainmenu-area navbar-fixed-top" data-spy="affix"
			data-offset-top="10">
			<nav class="navbar">
				<div class="container">
					<div class="navbar-header">
						<div class="space-10"></div>
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#mainmenu">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<!--Logo-->
						<!-- <a href="#sc1" class="navbar-left show"><img src="images/logo.png" alt="library"></a> -->
						<div class="space-10"></div>
					</div>
					<!--Mainmenu list-->
					<div class="navbar-right in fade" id="mainmenu">
						<ul class="nav navbar-nav nav-white text-uppercase">
							<li><a href="index">Trang chủ</a></li>
							<li><a href="#">Giới thiệu</a></li>
							<li><a href="notification.html">Thông báo</a></li>
							<li><a href="room.html">Phòng đọc</a></li>
							<li><a href="feedback.html">Phản hồi</a></li>
							<li><a href="DauSachDanhSach">Sách</a></li>
                                                        <li><a href="QuenMatKhau.jsp">Quên Mật Khẩu</a></li>
							<li class="active"><a href="UserLogin.jsp">Đăng nhập</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="space-100"></div>
		<!-- Mainmenu-markup-end -->
		<!-- Header-jumbotron -->
		<div class="space-100"></div>
		<div class="header-text">
			<div class="container">
				<div class="row wow fadeInUp">
					<div class="col-xs-12 col-sm-10 col-sm-offset-1 text-center">
						<div class="jumbotron">
							<h1 class="text-white">Đăng nhập</h1>
						</div>
						<div class="title-bar white">
							<ul class="list-inline list-unstyled">
								<li><i class="icofont icofont-square"></i></li>
								<li><i class="icofont icofont-square"></i></li>
							</ul>
						</div>
						<div class="space-40"></div>
					</div>
				</div>
				<div class="row wow fadeInUp" data-wow-delay="0.5s">
					<div class="row">
						<div class="col-xs-12 col-md-8 col-md-offset-4">
							<form>
								<div class="row">
									<div class="col-xs-12 col-md-7">
										<div class="form-group">
											<label for="name">Tên đăng nhập</label> <input type="text"
												id="name" class="form-control bg-none"
												placeholder="Tên đăng nhập..."> <span id="errorName"
												style="color: red;"></span>
										</div>
									</div>
								</div>
								<div class="space-20"></div>
								<div class="row">
									<div class="col-xs-12 col-md-7">
										<div class="form-group">
											<label for="password">Password</label> <input type="password"
												id="password" class="form-control bg-none"
												placeholder="Password..."> <span id="errorPassword"
												style="color: red;"></span>
										</div>
									</div>
								</div>

								<div class="space-20"></div>
								<div class="row">
									<div class="col-xs-12 col-sm-6">
                                                                         
										<button id="btnDN" type="button" class="btn btn-default">
											Đăng nhập<i class="fa fa-long-arrow-right"></i>
										</button>
                                                                            <a style="color: white" href="QuenMatKhau.jsp">Quên mật khẩu?</a>
									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="space-100"></div>
		<!-- Header-jumbotron-end -->
	</header>
	<!-- Footer-Area-End -->
	<!-- Vandor-JS -->
	<script src="js/vendor/jquery-1.12.4.min.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<!-- Plugin-JS -->
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/responsiveslides.min.js"></script>
	<script src="js/jquery.cardslider.min.js"></script>
	<script src="js/pagination.js"></script>
	<script src="js/scrollUp.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/plugins.js"></script>
	<!-- Active-JS -->
	<script src="js/main.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$("#errorName").hide();
							$("#errorPassword").hide();

							$("#name")
									.focusout(
											function() {
												if ($("#name").val().length <= 0) {
													$("#errorName")
															.html(
																	"Bạn chưa nhập tên đăng nhập");
													$("#errorName").show();
												} else {
													$("#errorName").hide();
												}
											});

							$("#password").focusout(
									function() {
										if ($("#password").val().length <= 0) {
											$("#errorPassword").html(
													"Bạn chưa nhập mật khẩu");
											$("#errorPassword").show();
										} else {
											$("#errorPassword").hide();
										}
									});

							$('#btnDN')
									.click(
											function() {
												if ($("#name").val().length > 0
														&& $("#password").val().length > 0) {
													var name = $('#name').val();
													var password = $(
															'#password').val();
													$
															.post(
																	"DangNhap",
																	{
																		name : name,
																		password : password
																	},
																	function(
																			result) {
																		if (result == "False") {
																			alert("Tên đăng nhập hoặc mật khẩu không đúng");
																		} else {
																			$(
																					location)
																					.attr(
																							"href",
																							"index");
																		}

																	});
												} else {
													if ($("#password").val().length <= 0) {
														$("#errorPassword")
																.html(
																		"Bạn chưa nhập mật khẩu");
														$("#errorPassword")
																.show();
													} else {
														$("#errorPassword")
																.hide();
													}
													if ($("#name").val().length <= 0) {
														$("#errorName")
																.html(
																		"Bạn chưa nhập tên đăng nhập");
														$("#errorName").show();
													} else {
														$("#errorName").hide();
													}
												}

											});
						});
	</script>
</body>

</html>