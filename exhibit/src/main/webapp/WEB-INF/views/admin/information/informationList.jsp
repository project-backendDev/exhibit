<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>관리자 페이지</title>
	<!-- jQuery -->
	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="${pageContext.request.contextPath }/assets/plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/fontawesome-free/css/all.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- DataTable -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/DataTables/datatables.min.css">
	<script type="text/javascript" charset="utf8" src="${pageContext.request.contextPath }/assets/DataTables/datatables.min.js"></script>
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
	$(document).ready(function() {
		$(".edit-btn").click(function() {
			$(".form").attr('action', '/admin/informationEdit');
			$(".form").submit();
		});
	});
	
	function reserveDelete(seq) {
		if (confirm("해당 예약자를 삭제하시겠습니까?")) {
			alert("삭제를 완료하였습니다.");
			$(".form").attr('action', '/admin/informationDelete.do?reserve_Seq=' + seq);
			$(".form").submit();
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
            <h1 class="m-0">단체관람 예약 확인</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main Content -->
    <form method="POST" class="form"> 
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<table id="infoList_table">
								<thead>
									<tr>
										<th style="text-align: center;"> 번호 </th>
										<th style="text-align: center;"> 이름 </th>
										<th style="text-align: center;"> 전화번호 </th>
										<th style="text-align: center;"> 관람일 </th>
										<th style="text-align: center;"> 관람시간 </th>
										<th style="text-align: center;"> 관람인원 </th>
										<th style="text-align: center;"> 교통수단 </th>
										<th style="text-align: center;"> 등록일자 </th>
										<th style="text-align: center;"> 수정일자 </th>	
										<th style="text-align: center;"> 비고 </th>								
									</tr>
								</thead>
								<tbody>
									<c:forEach var="info" items="${infoList }" varStatus="status">
										<tr style="text-align: center;">
											<td> 
												${info.reserve_Seq } 
											</td>
											<td> 
												${info.name }
											</td>
											<td> 
												${info.tel } 
											</td>
											<td> 
												${info.visit_day } 
											</td>
											<td> 
												${info.visit_time } 
											</td>
											<td> 
												${info.reserve_people } 
											</td>
											<td>
												<c:choose>
													<c:when test="${info.transfer == '1' }">
														자동차
													</c:when>
													<c:when test="${info.transfer == '2' }">
														대중교통
													</c:when>
													<c:when test="${info.transfer == '3' }">
														25인 버스
													</c:when>
													<c:when test="${info.transfer == '4' }">
														45인 버스
													</c:when>
													<c:when test="${info.transfer == '5' }">
														도보
													</c:when>
												</c:choose>										
											</td>
											<td>
												<fmt:formatDate value="${info.reg_date }" pattern="yyyy-MM-dd" />
											</td>
											<td>
												<fmt:formatDate value="${info.edit_date }" pattern="yyyy-MM-dd" />
											</td>
											<td style="display:flex;">
												<span>
													<a href="${pageContext.request.contextPath }/admin/informationEdit?reserve_Seq=${info.reserve_Seq}">
														<input type="button" class="btn btn-primary" value="수정" />
													</a>
												</span>
												<span>
													<a href="javascript:reserveDelete(${info.reserve_Seq })">
														<input type="button" class="btn btn-danger" id="delete" value="삭제" />
														<input type="hidden" name="reserve_Seq" id="reserve_Seq" value="${info.reserve_Seq }" /> 
													</a>
												</span>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
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

<script type="text/javascript">
	var table = $("#infoList_table").DataTable({
		"destroy" 	: true,
		"order" 	: [0, "desc"]
	});
	
	$("#infoList_table").dataTable({
		data : data,
		columns : [
			{ data : 'reser_Seq' },
			{ data : 'name' },
			{ data : 'tel' },
			{ data : 'visit_day' },
			{ data : 'visit_time' },
			{ data : 'reserve_people' },
			{ data : 'transfer' },
			{ data : 'reg_date' },
			{ data : 'edit_date'}
		]
	});
	    
</script>
</body>
</html>
