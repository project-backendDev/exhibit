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
								<%-- <h5 class="card-title">Card title</h5>
								<p class="card-text">
									Some quick example text to build on the card title and make up the bulk of the card's content.
								</p>
								<a href="#" class="card-link">Card link</a> 
								<a href="#" class="card-link">Another link</a> --%>
								<div class="table type_board">
		                        <h6>총 <span>81</span>건 검색되었습니다.</h6>
		                        <table>
		                            <tbody>
			                            <tr>
			                                <th style="width: 12%;">번호</th>
			                                <th style="width: 50%;">제목</th>
			                                <th style="width: 26%;">작성일</th>
			                                <th style="width: 12%;">조회</th>
			                            </tr>
			                            <c:choose>
	                            			<c:when test="${artclList != null }">
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
				                        </c:choose>
		                        	</tbody>
		                       	</table>
	                            <!-- pager -->
	                            <%@include file="pageProcess.jsp"%>                        
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
	<%--
	<section class="content">
		
		<div class="content">
        <div class="wrap">
            <div class="cont">
                <div class="information">
                    <ul class="list type1">
                        <li>
                            <input type="hidden" value="${pageContext.request.contextPath }/assets/images/memorial1.png">
                            <form id="artclListForm" method="post">
				                <div class="board">
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
				                </div>
			                </form>
                            <form name="viewForm" method="post">
                            	<c:set var="searchType" value="${paging.searchType}" />
								<input type="hidden" name="nowPage" value="${paging.nowPage}">
								<input type="hidden" name="cntPerPage" value="${paging.cntPerPage}">
								<input type="hidden" name="searchType" value="${searchType }">
								<input type="hidden" name="searchValue" value="${paging.searchValue }">
                            	
                            	<div class="memorial">
                            		<ul>
                            			<c:choose>
	                            			<c:when test="${artclList != null }">
		                            			<c:forEach items="${artclList }" var="list" >
		                            			<input type="hidden" name="artcl_Seq" value="${list.artcl_Seq}">
		                            			<c:set value="${pageContext.request.contextPath }${list.img_Path}/${list.img_File_Nm }" var="thumbPath" />	
			                            			<li>
			                            				 <a onclick="artclView(${list.artcl_Seq})" target="_blank" style="cursor: pointer;">
			                            					<div class="con">
				                                                <div class="img" style="background:url(${thumbPath}); background-size: cover;"></div>
				                                                <div class="txt">
				                                                	등록일 : <fmt:formatDate value="${list.reg_date}" pattern="yyyy-MM-dd"/>
				                                                    <h5>
				                                                    	<c:choose>
																	        <c:when test="${fn:length(list.title) gt 26}">
																	        	<c:out value="${fn:substring(list.title, 0, 25)} ..."/>
																	        </c:when>
																	        <c:otherwise>
																	        	<c:out value="${list.title}"/>
																	        </c:otherwise>
																	    </c:choose>	
				                                                    </h5>
				                                                    <p>
																		<c:choose>
																	        <c:when test="${fn:length(list.content) gt 26}">
																	        	<c:out value="${fn:substring(list.content, 0, 25)} ..."/>
																	        </c:when>
																	        <c:otherwise>
																	        	<c:out value="${list.content}"/>
																	        </c:otherwise>
																	    </c:choose>	
				                                                    </p>
				                                                    
				                                                </div>
				                                            </div>
			                            				</a>
			                            			
													</li>                            			
		                            			</c:forEach>
	                            			</c:when>
	                            			<c:otherwise>
	                            				게시물이 없습니다.
	                            			</c:otherwise>
                            			</c:choose>
                            		</ul>
                            	</div>
                            </form>
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
								<input type="button" id="registView_Btn" value="등록">
							</form>
                            <!-- pager -->
                            <%@include file="pageProcess.jsp"%>
                        </li>                                                   
                    </ul>                 
                </div>            
            </div>            
        </div>
	</div>
		
	</section>
  </div>
   --%>
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
			$("#artclListForm").attr('action', '/admin/notice/artclList');
			$("#artclListForm").submit();
		});
		
		$("#registView_Btn").click(function(){
			$("#artclListForm").attr('action', '/admin/notice/registView');
			$("#artclListForm").submit();
		});
		
	});
  
  function artclView(artcl_Seq){
		$("form[name=viewForm]").attr('action', '/admin/notice/'+ artcl_Seq +'/artclView');
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
