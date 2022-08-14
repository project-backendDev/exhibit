<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page trimDirectiveWhitespaces="true"%>
<c:set var="now" value="<%=new java.util.Date()%>" />
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
  
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/reset.css" /> 
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/common.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/sub.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/swiper/css/swiper.css">
	
  <!-- jQuery -->
  <script src="${pageContext.request.contextPath }/assets/plugins/jquery/jquery.min.js"></script>
  <!-- jQuery UI 1.11.4 -->
  <script src="${pageContext.request.contextPath }/assets/plugins/jquery-ui/jquery-ui.min.js"></script>
  
  <script type="text/javascript" src="${pageContext.request.contextPath }/assets/swiper/js/swiper.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/assets/scripts/script.js"></script>
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
		
		<div class="content">
            <div class="board">
                <form id="artclListForm" method="post">
                	<div class="search_box">
						<input type="hidden" name="nowPage" value="${paging.nowPage}">
						<input type="hidden" name="cntPerPage" value="${paging.cntPerPage}">
						
						<select class="white" name="searchType" >
							<option value="1" <c:if test="${searchType eq '1' }">selected</c:if> >제목</option>
							<option value="2" <c:if test="${searchType eq '2' }">selected</c:if> >내용</option>
							<option value="3" <c:if test="${searchType eq '3' }">selected</c:if> >작성자</option>
						</select>
					 	<div class="search">
							<input type="text" name="searchValue" value="${paging.searchValue }"> 
							<button type="submit" id="search_Btn"><img src="${pageContext.request.contextPath }/assets/images/i_search_b.png" alt=""></button>
						</div>
					</div>
				</form>
            </div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">카테고리</h5>
							</div>
							<div class="card-body">
								<c:choose>
									<c:when test="${categoryList != null && categoryList.size() > 0}">
										<c:forEach var="list" items="${categoryList}" >
											<div>
												<input type="hidden" name="position" value="${list.position}">
												<input type="hidden" name="category_Seq" value="${list.category_Seq }">
												<a href="#" class="card-link"><c:out value="${list.category }"/></a> 
											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<a class="card-link">카테고리가 없습니다. 카테고리를 등록해서 사용해주세요.</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div class="card-body">
								<input type="button" class="modal_step_open" value="등록">
							</div>
						</div>
						<div class="card">
							<div class="card-body">
								<div class="table type_board">
		                        <form name="viewForm" method="post">
	                            	<c:set var="searchType" value="${paging.searchType}" />
									<input type="hidden" name="nowPage" value="${paging.nowPage}">
									<input type="hidden" name="cntPerPage" value="${paging.cntPerPage}">
									<input type="hidden" name="searchType" value="${searchType }">
									<input type="hidden" name="searchValue" value="${paging.searchValue }">
									
			                        <h6>총 <span><c:out value="${paging.total }" /></span>건 검색되었습니다.</h6>
			                        <table>
			                            <tbody>
				                            <tr>
				                                <th style="width: 12%;">번호</th>
				                                <th style="width: 50%;">제목</th>
				                                <th style="width: 26%;">작성일</th>
				                                <th style="width: 12%;">조회</th>
				                            </tr>
				                            <c:choose>
		                            			<c:when test="${artclList != null && artclList.size() > 0}">
			                            			<c:forEach items="${artclList }" var="list" >
			                            			<%-- <fmt:parseDate var="nowDate" value="${now }" pattern="yyyy-MM-dd"/>
			                            			<fmt:parseDate var="regD" value="${list.reg_date }" pattern="yyyy-MM-dd"/>
			                            			<fmt:parseNumber var="nowDate_N" value="${nowDate.time / (1000*60*60*24)}" integerOnly="true" />
			                            			<fmt:parseNumber var="regD_N" value="${regD.time / (1000*60*60*24)}" integerOnly="true" />
			                            			--%>
			                            			<input type="hidden" name="artcl_Seq" value="${list.artcl_Seq}">
			                            			
							                            <tr>
							                                <td><c:out value="${list.artcl_Seq }"/></td>
							                                <td>
								                                <a onclick="artclView(${list.artcl_Seq})" target="_blank" style="cursor: pointer;">
								                                	<p>
								                                		<c:choose>
																	        <c:when test="${fn:length(list.title) gt 26}">
																	        	<c:out value="${fn:substring(list.title, 0, 25)} ..."/>
																	        </c:when>
																	        <c:otherwise>
																	        	<c:out value="${list.title}"/>
																	        </c:otherwise>
																	    </c:choose>	
								                                	</p>
								                                	<%-- <c:if test="${regD_N > (nowDate_N + 3) }">
									                                	<i class="i_new">
									                                		<img src="${pageContext.request.contextPath }/assets/images/i_new.png" alt="새글">
									                                	</i>
								                                	</c:if>
								                                	--%>
								                                </a>
								                            </td>
							                                <%-- <td><c:out value="${regD }"/></td> --%>
							                                <td><fmt:formatDate value="${list.reg_date }" pattern="yyyy-MM-dd"/> </td>
							                                <td><c:out value="${list.hit }"/></td>
							                            </tr>
					                        		</c:forEach>
					                        	</c:when>
					                        	<c:otherwise>
		                            				<tr>
		                            					<td colspan="4">게시물이 없습니다.</td>
		                            				</tr>
		                            			</c:otherwise>
					                        </c:choose>
			                        	</tbody>
			                       	</table>
		                       	</form>
	                            <!-- pager -->
	                            <%@include file="pageProcess.jsp"%> 
	                            <input type="button" id="registView_Btn" value="등록">                       
		                    </div>
							</div>
						</div>
					</div>
					<!-- /.col-md-6 -->
				</div>
				<!-- /.row -->
			</div>
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

<!-- 모달 -->
    <div class="modal modal modal_step modal_step1 hidden">
        <div class="modal_overlay">
        </div>
		<form action="${pageContext.request.contextPath }/admin/newsletter/addCategory" method="POST">
			<div class="modal_content modal_md scrollbar" style="overflow-y:scroll;">
				<div class="layoutCont">
					<div class="certiTxt">
						<div class="modalContWrap">
							<div class="modal_close cancerButton">
							  <img src="${pageContext.request.contextPath }/assets/images/close.png" alt="모달 닫기버튼">
							</div>   
							<div class="modal_con">
							  <div class="head">
								<div class="left">
									<h4>카테고리 추가</h4>
									<p>
										카테고리를 추가해주세요								
									</p>
								</div>
								<div class="right">
									<img src="${pageContext.request.contextPath }/assets/images/letter.png" alt="">
								</div>
							  </div>
							  <div class="modal_form">
								<div class="input_con default">
									<input type="text" name="category" placeholder="카테고리 이름">
								</div>
								<%-- 
								<div class="input_con default">
									<input type="number" name="position" placeholder="포지션을 설정해주세요(1~4)" pattern="[1-4]+" min="1" max="4">
								</div>
							  	--%>
							</div>
	
						</div>
						<div class="confirm_button">
							<button class="cancerButton agree" type="submit">카테고리 추가</button>
						</div>
					</div>           
				</div>
			</div>
		</form>

    </div>
<!-- ./wrapper -->
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
  
  	$(document).ready(function() {
		$("#search_Btn").click(function() {
			$("#artclListForm").attr('action', '/admin/newsletter/artclList');
			$("#artclListForm").submit();
		});
		
		$("#registView_Btn").click(function(){
			$("#artclListForm").attr('action', '/admin/newsletter/registView');
			$("#artclListForm").submit();
		});
		
		$(".modal_step_open").click(function(){
			$(".modal_step1").removeClass("hidden");
		});
		
	});
  
  function artclView(artcl_Seq){
		$("form[name=viewForm]").attr('action', '/admin/newsletter/'+ artcl_Seq +'/artclView');
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
