<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>관리자 페이지</title>
	<!-- Jquery -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/fontawesome-free/css/all.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- Tempusdominus Bootstrap 4 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<!-- Navbar -->
		<nav class="main-header navbar navbar-expand navbar-white navbar-light" style="height: 87px;">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item d-none d-sm-inline-block">
					<h1>
						<a href="index3.html" class="nav-link">
							<strong> 관리자 페이지</strong>
						</a>
					</h1>
				</li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="index3.html" class="brand-link"> 
				<!-- 
       				<img src="${pageContext.request.contextPath }/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
       			-->
	       		<br /> 
	       		<span class="brand-text font-weight-light">이미지 부분</span>
			</a> 
			
			<br />

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
						<li class="nav-item">
							<a href="javascript:alert('준비중입니다');" class="nav-link active"> <i class="far fa-circle nav-icon"></i>
								<p>Dashboard v1</p>
							</a>
						</li>

						<li class="nav-item">
							<a href="javascript:alert('준비중입니다');" class="nav-link"> <i class="far fa-circle nav-icon"></i>
								<p>Dashboard v2</p>
							</a>
						</li>

						<li class="nav-item">
							<a href="javascript:alert('준비중입니다');" class="nav-link"> <i class="far fa-circle nav-icon"></i>
								<p>Dashboard v3</p>
							</a>
						</li>
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<br /><br /><br />
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h4 class="m-0">
								<strong> 무슨무슨 페이지 </strong>
								<br />
								<a href="${pageContext.request.contextPath }/admin/notice/noticeRegistView"> 글 작성</a>
							</h4>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<br /><br />

			<!-- Main Content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
									<p class="card-text">
										Some quick example text to build on the card title and make up the bulk of the card's content.
									</p>
									<a href="#" class="card-link">Card link</a> 
									<a href="#" class="card-link">Another link</a>
								</div>
							</div>
						</div>
						<!-- /.col-md-6 -->
					</div>
					<!-- /.row -->
				</div>

			</section>
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<strong>
				Copyright &copy; 2022 <a href="https://adminlte.io">by XXXXX </a>
			</strong>
		</footer>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="${pageContext.request.contextPath }/plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="${pageContext.request.contextPath }/plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="${pageContext.request.contextPath }/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script src="${pageContext.request.contextPath }/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- AdminLTE App -->
	<script src="${pageContext.request.contextPath }/dist/js/adminlte.js"></script>
	
</body>
</html>
