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
  
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/reset.css" /> 
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/common.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/sub.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/swiper/css/swiper.css">
  
  <!-- Jquery -->
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
//파일을 담아두는 변수
var sel_file = [];

$(function(){
	//----------------이미지 미리보기 시작----------------
	$("#img_file_artcl").on("change", handleImgFileSelect);
	
	function handleImgFileSelect(e){
		//e.target : 파일 객체		
		//e.target.files : 파일객체 안의 파일들 
		var files = e.target.files;
		//파일을 잘라서 array로 만든다.
		var filesArr = Array.prototype.slice.call(files);
		
		//f: 파일 객체
		filesArr.forEach(function(f){
			//미리보기는 이미지만 가능함			
			if(!f.type.match("image.*")){
				alert("이미지만 가능합니다.");
				return;
			}
		
			//파일객체 복사
			sel_file.push(f);
            // 파일을 읽어주는 객체 생성
            var reader = new FileReader();
            reader.onload = function(e){
               //하나일 때
               //$("#img").attr("src", e.target.result);
               
               //forEach 반복 하면서 img 객체 생성
               //반복될 때마다 img가 새로 생성된다.
               var img_html = "<img src=\"" + e.target.result + "\" />";
               $(".img_wrap").append(img_html);
            }
            reader.readAsDataURL(f);
         });
	}
	//----------------이미지 미리보기 끝----------------
	//모든 파일명.확장자(exe|sh|zip|alx)는 업로드를 못하도록 막기 
	//첨부파일의 확장자가 exe, sh, zip, alz 경우 업로드를 제한
	var regex = new RegExp("(.*?)\.(exe|sh|zip|alx)$");
	//최대 5MB까지만 업로드 가능
	var maxSize = 5242880; //5MB
	//확장자, 크기 체크
	function checkExtension(fileName, fileSize){
		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
		
		if(regex.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		//체크 통과
		return true;
	}
	
	//Upload 버튼 클릭 시 수행
	$("#regist_btn").on("click", function(e){
		//FormData : 가상의 <form> 태그
		//Ajax를 이용하는 파일 업로드는 FormData를 이용
		//var formData = new FormData();
		//<input type="file" 요소
		var inputFile = $("input[name='img_file_artcl']");
		//<input type="file" 요소 내의 이미지들
		var files = inputFile[0].files;
		
 		console.log(files);
		
		for(var i=0; i<files.length;i++){
			console.log(files[i]);
			//확장자, 크기 체크
			//function checkExtension(fileName, fileSize){
			if(!checkExtension(files[i].name, files[i].size)){//!true라면 실패
				return false;
			}
			//formData.append("img_Origin_Nm", files[i]);
		}
		$("#registForm").attr('action', '/admin/notice/regist');
		$("#registForm").submit();
		alert("공지등록이 완료되었습니다.");
	});
	
});
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
            <h1 class="m-0">공지사항</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
	<section class="content">
		<div class="container-fluid">
			<div class="board_detail">
				<form method="POST" id="registForm" enctype="multipart/form-data">
					<c:set var="searchType" value="${paging.searchType}" />
					<input type="hidden" name="nowPage" value="${paging.nowPage}">
					<input type="hidden" name="cntPerPage" value="${paging.cntPerPage}">
					<input type="hidden" name="searchType" value="${searchType }">
					<input type="hidden" name="searchValue" value="${paging.searchValue }">
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<div>
										제목 <input type="text" name="title" id="title" class="form-control" />
									</div>
									<div>
										작성자 <input type="text" name="writer" id="writer" class="form-control" value="관리자" />
									</div>
									<div>
										내용 <textarea name="content" id="content" class="form-control" rows="8" ></textarea>
									</div>
									<div class="con_img">
											  <input type="file" id="img_file_artcl" name="img_file_artcl" multiple />
									</div>
									<div class="img_wrap">
												
									</div>
									<div class="right">
										<input type="button" id="regist_btn" class="btn btn-primary" value="등록" />	
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<a href="${pageContext.request.contextPath }/admin/notice/artclList">
                 목록으로
	        </a>
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
