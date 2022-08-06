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

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/reset.css" /> 
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/common.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/sub.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/swiper/css/swiper.css">
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
            <h1 class="m-0">공지사항</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main Content -->
	<section class="content">
		<div class="board_detail">
                	<form method="POST" id="registForm">
	                	<c:set var="searchType" value="${paging.searchType}" />
						<input type="hidden" name="nowPage" value="${paging.nowPage}">
						<input type="hidden" name="cntPerPage" value="${paging.cntPerPage}">
						<input type="hidden" name="searchType" value="${searchType }">
						<input type="hidden" name="searchValue" value="${paging.searchValue }">
                	
	                    <h3><c:out value="${artclView.title }"/></h3>
	                    <div class="detail_box">
	                        <div class="head">
	                            <!-- <div class="left">
	                                <h5>첨부파일</h5>
	                                <a href="" download="">
	                                    <h6>가천문화재단-뉴스레터-제32호(2022년-5월호).jpg  </h6>
	                                    <img src="${pageContext.request.contextPath }/assets/images/i_download.png" alt="">
	                                </a>
	                            </div> -->
	                            <div class="right">
	                                <ul>
	                                    <li><span>작성자</span> <c:out value="${artclView.writer }"/> </li>
	                                    <li>|</li>
	                                    <li><span>조회</span> <c:out value="${artclView.hit }"/> </li>
	                                    <li>|</li>
	                                    <li><span>등록일</span> <fmt:formatDate value="${artclView.reg_date}" pattern="yyyy년 MM월 dd일"/></li>
	                                	<li>|</li>
	                                	<li><span>수정일</span> <fmt:formatDate value="${artclView.edit_date}" pattern="yyyy년 MM월 dd일"/></li>
	                                </ul>
	                            </div>
	                        </div>
	                        <div class="content">
	                            <div class="con_img" style="text-align: center;">
	                                <img src="${pageContext.request.contextPath }${artclView.img_Path}/${artclView.img_File_Nm }" style="width: 100%; alt="썸네일">
	                            </div>
	                            <div>
	                            	<c:out value="${artclView.content }"/>
	                            </div>
	                        </div>
	                        
	                        <div class="apply_btn list">
	                            <a class="grey" href="${pageContext.request.contextPath }/services/news/news1_detail.jsp">
	                                이전
	                            </a>
	                            <%-- <a href="${pageContext.request.contextPath }/services/news/news_1.jsp"> --%>
	                            <a id="list_btn" style="cursor: pointer;">
	                                목록으로
	                            </a>
	                            <a class="grey" href="${pageContext.request.contextPath }/services/news/news1_detail.jsp">
	                                다음
	                            </a>
	                        </div>                        
	                    </div>
                    </form>
                </div>
	</section>
  </div>
  <!-- /.content-wrapper -->
   <!-- footer 시작 -->
	<footer class="main-footer">
		<c:import url="${pageContext.request.contextPath }/assets/include/admin_footer.jsp" />
	</footer>
<!-- // footer 끝 -->

	<!-- 모달 -->
    <div class="modal modal modal_step modal_step1 hidden">
        <div class="modal_overlay">
        </div>
		<form action="">
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
									<h4>뉴스레터 신청</h4>
									<p>
										구독 신청을 하시면, 매달 문자로 재단의 소식이<br/>
										담겨있는 뉴스레터 링크를 보내드립니다.									
									</p>
								</div>
								<div class="right">
									<img src="${pageContext.request.contextPath }/assets/images/letter.png" alt="">
								</div>
							  </div>
							  <div class="modal_form">
								<div class="input_con default">
									<input type="text" placeholder="성명">
								</div>
								<div class="input_con default">
									<input type="text" placeholder="연락처">
								</div>
								<p><span>*</span>문자 수신이 가능한 휴대전화만 가능합니다.</p>
								<div class="input_con email">
									<input type="text" placeholder="이메일">
									<span>@</span>
									<select name="" id="">
                                        <option value="">선택</option>
                                        <option value="">naver.com</option>
                                        <option value="">daum.net</option>
                                        <option value="">gmail.com</option>
                                        <option value="">nate.com</option>
                                        <option value="">yahoo.com</option>
									</select>
								</div>
							  </div>
							  <div class="term">
								<h5><span>(필수)</span> 개인정보 수집 및 이용에 동의합니다.</h5>
								<div class="term_box">
									<pre style=" overflow: auto; white-space: pre-wrap;">뉴스레터 문자 발송을 위한 최소한의 개인정보를 수집 및 이용합니다. 
수집된 정보는 발송 외 다른 목적으로 이용되지 않으며, 서비스가 종료되거나 발송을 원하지 않을 경우 즉시 파기됩니다.</pre>
								</div>
								<ul class="list_wrap">
									<li>
										<input type="radio" name="agree2" id="agree3" checked="">
										<label for="agree3"><i><img src="${pageContext.request.contextPath }/assets/images/i_check.png" alt=""></i>동의합니다.</label>
									</li>
									<li>
										<input type="radio" name="agree2" id="agree4">
										<label for="agree4"><i><img src="${pageContext.request.contextPath }/assets/images/i_check.png" alt=""></i>동의하지 않습니다.</label>
									</li>
								</ul>                            
							</div>
							</div>
	
						</div>
						<div class="confirm_button">
							<button class="cancerButton agree" type="submit">뉴스레터 신청</button>
						</div>
					</div>           
				</div>
			</div>
		</form>

    </div>
    
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
		$("#regist_btn").click(function() {
			$("#registForm").attr('action', '/admin/notice/regist');
			$("#registForm").submit();
			alert("공지등록이 완료되었습니다.");
		});
		
		$("#list_btn").click(function(){
			$("#registForm").attr('action', '/admin/notice/artclList');
			$("#registForm").submit();
		});
	});
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
