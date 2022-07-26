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
            <h1 class="m-0">언론에 비친 기념관</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main Content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<b> 언론에 비친 기념관 게시글 </b>
							<form name="viewForm" method="post" >
								<c:set var="searchType" value="${paging.searchType}" />
								<input type="hidden" name="nowPage" value="${paging.nowPage}">
								<input type="hidden" name="cntPerPage" value="${paging.cntPerPage}">
								<input type="hidden" name="searchType" value="${searchType }">
								<input type="hidden" name="searchValue" value="${paging.searchValue }">
								
								
								<table>
									<colgroup>
										<col class="">
										<col class="">
										<col class="">
										<col class="">
										<col class="">
										<col class="">
										<col class="">
									</colgroup>
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>내용</th>
											<th>작성자</th>
											<th>조회수</th>
											<th>등록일</th>
											<th>첨부파일</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${artclList }" var="list" >
											<tr>
												<td><c:out value="${list.artcl_Seq }"/></td>
												<td><c:out value="${list.title }"/></td>
												<td>
													<a onclick="artclView(${list.artcl_Seq})" style="cursor: pointer;">
													<c:out value="${list.content }"/>
													</a>
												</td>
												<td><c:out value="${list.writer }"/></td>
												<td><c:out value="${list.hit }"/></td>
												<td><c:out value="${list.reg_date }"/></td>
												<td>
													<c:if test="${list.img_Path }">첨부파일存</c:if>
												</td>
											</tr>
										</c:forEach>
									</tbody>
									
								</table>
								
							</form>
							<%-- 페이징 처리 및 검색 --%>
							<table>
								<tr>
									<td>
										<%-- page 처리 --%> <%@include file="pageProcess.jsp"%>
										<%--이부분만 있어도 페이징 처리 됨 --%>
									</td>
								</tr>
								<tr>
									<th colspan="6">
										<form id="artclListForm" method="post">
										
											<input type="hidden" name="nowPage" value="${paging.nowPage}">
											<input type="hidden" name="cntPerPage" value="${paging.cntPerPage}">
											
											<select name="searchType" >
												<option value="1" <c:if test="${searchType eq '1' }">selected</c:if> >제목</option>
												<option value="2" <c:if test="${searchType eq '2' }">selected</c:if> >내용</option>
												<option value="3" <c:if test="${searchType eq '3' }">selected</c:if> >작성자</option>
											</select>&nbsp; 
											<input name="searchValue" value="${paging.searchValue }"> 
											<input type="submit" value="search" id="search_Btn">
										</form>
									</th>
								</tr>
							</table>
						</div>
						<input type="button" id="registView_Btn" value="등록">
					</div>
				</div>
				<!-- /.col-md-6 -->
			</div>
			<!-- /.row -->
		</div>
	</section>
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
  
  	$(document).ready(function() {
		$("#search_Btn").click(function() {
			$("#artclListForm").attr('action', '/admin/mediaMemorialHall/artclList');
			$("#artclListForm").submit();
		});
		
		$("#registView_Btn").click(function(){
			$("#artclListForm").attr('action', '/admin/mediaMemorialHall/registView');
			$("#artclListForm").submit();
		});
		
	});
  
  function artclView(artcl_Seq){
		alert("상세보기로 이동 ok? : "+artcl_Seq);
		$("form[name=viewForm]").attr('action', '/admin/mediaMemorialHall/'+ artcl_Seq +'/artclView');
		$("form[name=viewForm]").submit();
	}
  
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
