<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- summernote -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/summernote/summernote-bs4.min.css">
  
  <script type="text/javascript">
  	function changeText() {
  		var txt = $("#transfer").val();
  		
  		if (txt == '') {
  			console.log(txt);
  			$("#transfer1").val("");
  		} 
  		if (txt == '1') {
  			console.log(txt);
  			$("#transfer1").val("자동차");
  		}
  		if (txt == '2') {
  			console.log(txt);
  			$("#transfer1").val("대중교통");
  		}
  		if (txt == '3') {
  			console.log(txt);
  			$("#transfer1").val("25인 버스");
  		}
  		if (txt == '4') {
  			console.log(txt);
  			$("#transfer1").val("45인 버스");
  		}
  		if (txt == '5') {
  			console.log(txt);
  			$("#transfer1").val("도보");
  		}
  	}
  
  	function updateDate() {
  		var con = confirm("내용을 수정하시겠습니까?");
  		
  		if (con) {
			alert("내용이 수정되었습니다.");
			$("#updateForm").attr('action', '/admin/informationEdit.do');
			$("#updateForm").submit();	
  		} else {
  			alert("취소되었습니다.");
  			return;
  		}
  	}
  </script>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="${pageContext.request.contextPath }/assets/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

   	<!-- Navbar 시작 -->
	<c:import url="${pageContext.request.contextPath }/assets/include/admin_navbar.jsp" />
	<!-- // Navbar 끝 -->
	
   	<!-- sidebar 시작 -->
	<c:import url="${pageContext.request.contextPath }/assets/include/admin_sidebar.jsp" />
	<!-- // sidebar 끝 -->


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">단체관람 예약 수정</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main Content -->
    <form method="POST" id="updateForm">
		<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<div class="form-group">
						            <label for='name' class="col-md-2">이름</label>
						            <div class="col-md-10">
						                <input type="text" name="name" id="name" class="form-control" value="${info.name }" />
						            </div>
						        </div>
						
						        <div class="form-group">
						            <label for="tel" class="col-md-2">전화번호</label>
						            <div class="col-md-10">
						                <input type="text" name="tel" id="tel" class="form-control" value="${info.tel }" />
						            </div>
						        </div>
						
						        <div class="form-group">
						            <label for='visit_day' class="col-md-2">관람일</label>
						            <div class="col-md-10">
						                <input type="text" name="visit_day" id="visit_day" class="form-control" value="${info.visit_day }" />
						            </div>
						        </div>
						
						        <div class="form-group">
						            <label for='visit_time' class="col-md-2">관람시간</label>
						            <div class="col-md-10">
						                <input type="text" name="visit_time" id="visit_time" class="form-control" value="${info.visit_time }" />
						            </div>
						        </div>
						
						        <div class="form-group">
						            <label for='reserve_people' class="col-md-2">예약인원</label>
						            <div class="col-md-10">
						                <input type="text" name="reserve_people" id="reserve_people" class="form-control" value="${info.reserve_people }" />
						            </div>
						        </div>
						
						        <div class="form-group">
						            <label for='transfer' class="col-md-2">교통수단</label>
						            <div class="col-md-5" style="display: flex;">
					            		<input type="text" name="transfer" id="transfer" class="form-control" value="${info.transfer }" onkeypress="changeText();" />
						            	<c:choose>
							            		<c:when test="${info.transfer == '1' }">
							            			<input type="text" id="transfer1" class="form-control" value="자동차" readonly />
							            		</c:when>
							            		<c:when test="${info.transfer == '2' }">
							            			<input type="text" id="transfer1" class="form-control" value="대중교통" readonly />
							            		</c:when>
							            		<c:when test="${info.transfer == '3' }">
							            			<input type="text" id="transfer1" class="form-control" value="25인 버스" readonly />
							            		</c:when>
							            		<c:when test="${info.transfer == '4' }">
							            			<input type="text" id="transfer1" class="form-control" value="45인 버스" readonly />
							            		</c:when>
							            		<c:when test="${info.transfer == '5' }">
							            			<input type="text" id="transfer1" class="form-control" value="도보" readonly />
							            		</c:when>
							            	</c:choose>
						            </div>
						            <div>
							            <b> ※ 교통수단을 수정 시 번호로 입력해주시기 바랍니다. </b>
							            <br />
							            <b> ※ 1 - 자동차 / 2 - 대중교통 / 3 - 25인 버스 / 4 - 45인 버스 / 5 - 도보 </b>
						            </div>
						        </div>
								
								<div class="form-group">
									<input type="button" class="btn btn-primary" value="수정하기" onClick="updateDate();" /> &nbsp;&nbsp; <input type="button" class="btn btn-warning" value="뒤로가기" onClick="javascript:history.back();"/> 
								</div>
								
								<input type="hidden" name="reserve_Seq" id="reserve_Seq" value="${info.reserve_Seq }" />
							</div>
							
						</div>
					</div>
					
					<!-- /.col-md-6 -->
				</div>
				<!-- /.row -->
			</div>
		</section>
	</form>
  </div>
  <!-- /.content-wrapper -->
   <!-- footer 시작 -->
	<footer class="main-footer">
		<c:import url="${pageContext.request.contextPath }/assets/include/admin_footer.jsp" />
	</footer>
<!-- // footer 끝 -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="${pageContext.request.contextPath }/assets/plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="${pageContext.request.contextPath }/assets/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="${pageContext.request.contextPath }/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Sparkline -->
<script src="${pageContext.request.contextPath }/assets/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="${pageContext.request.contextPath }/assets/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="${pageContext.request.contextPath }/assets/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="${pageContext.request.contextPath }/assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="${pageContext.request.contextPath }/assets/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="${pageContext.request.contextPath }/assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath }/assets/dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="${pageContext.request.contextPath }/assets/dist/js/pages/dashboard.js"></script>
</body>
</html>
