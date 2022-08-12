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
  <!-- Jquery -->
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <style type="text/css">
  	.imgs_wrap {
  		width: 1630px;
  		margin-top : 50px;
  		padding-bottom: 50px;
  	}
  	
  	.imgs_wrap img {
  		max-width: 400px;
  		max-height: 500px;
  	}
  	
  	.imgList {
  		max-width: 400px;
  		max-height: 500px;
  	}
  	
  	.filebox .upload-name {
	  	display: inline-block;
	    height: 40px;
	    padding: 0 10px;
	    vertical-align: middle;
	    border: 1px solid #dddddd;
	    width: 25%;
	    color: #999999;
  	}
  	
  	.filebox label {
	    display: inline-block;
	    padding: 10px 20px;
	    color: #fff;
	    vertical-align: middle;
	    background-color: #999999;
	    cursor: pointer;
	    height: 40px;
	    margin-left: 10px;
	}
	
	.filebox input[type="file"] {
	    position: absolute;
	    width: 0;
	    height: 0;
	    padding: 0;
	    overflow: hidden;
	    border: 0;
	}
	
	.img_Container img {
		transition : all 0.2s linear;
	}
	
	.img_Container:hover img {
		transform: scale(1.2);
	}
  </style>
  <script type="text/javascript">
  	var sel_files = [];
  	var fileNum = 0;
  	
  	$(document).ready(function() {
  		$("#input_img").on("change", handleImgsFilesSelect);
  	});
  	
  	function handleImgsFilesSelect(e) {
  		sel_files = [];
  		$(".imgs_wrap").empty();
  		var files = e.target.files;
  		var filesArr = Array.prototype.slice.call(files);
  		
  		filesArr.forEach(function(f) {
  			if (!f.type.match("image.*")) {
  				alert("이미지 확장자만 등록 가능합니다.");
  				return;
  			}
  			sel_files.push(f);
  			
  			var reader = new FileReader();
  			reader.onload = function(e) {
  				var img_html = "<img src=\"" + e.target.result + "\" style='width: 300px; height:200px; padding: 0px 10px 0px 10px;' />";
  				$(".imgs_wrap").append(img_html);	
  			}
  			reader.readAsDataURL(f);
  		});
  	}
  	
  	
  	function insertImg() {
  		var form = $("form")[0];
  		var formData = new FormData(form);
  		
  		for (var x = 0; x < sel_files.lentgh; x++) {
  			if (sel_files[x].is_delete) {
  				formData.append("artcl_file", sel_files[x]);
  			}
  		}
  		
  		$.ajax ({
  			type : "POST",
  			url : "/admin/imgRegist.do",
  			enctype : "multipart/form-data",
  			data : formData,
  			processData : false,
  			contentType : false,
  			
  			success : function(data) {
  				if (JSON.parse(data)['result'] == "OK") {
  					var con = confirm("파일을 등록하시겠습니까?");
  					
  					if (con) {
  						alert("파일 업로드가 완료되었습니다.");
  	  					location.reload();	
  					} else {
						alert("파일 업로드가 취소되었습니다");
						return;
  					}
  				} else {
  					alert("오류가 발생했습니다.\n잠시 후 다시 시도해주세요");
  					return;
  				}
  			},
  			error : function(xhr, status, error) {
  				alert("오류가 발생했습니다.");
  				return;
  			}
  		});
  	}
  	
  	function imgDelete(seq) {
  		var con = confirm("해당 이미지를 삭제하시겠습니까?");
  		
  		if (con) {
  			alert("삭제!" + seq);
  			$(".imgForm").attr('action', '/admin/imgDelete.do?artcl_seq=' + seq);
  			$(".imgForm").submit();
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
            <h1 class="m-0">이미지 슬라이드 관리</h1>
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
								<div style="width: 1140px;">
									<form name="dataForm" id="dataForm" style="width: 1630px;">
										<p><b> 이미지 업로드 </b>
										<div class="filebox">
											<input class="upload-name" value="첨부파일" placeholder="첨부파일" />
											<label for="input_img"> 파일찾기 </label>
											<input type="file" id="input_img" name="artcl_file" multiple />
										</div>
										
										<div class="imgs_wrap">
											<img id="img" />
										</div>
									</form>
									<input type="button" class="btn btn-primary" value="등록하기" onClick="insertImg();"/>
									</div>
							</div>
						</div>
						<form method="POST" name="imgForm" class="imgForm">
							<div class="card" style="height:400px;">
								<h2 style="padding: 15px 0px 15px 20px;">
									<span>현재 등록 중인 이미지</span>
								</h2>
								<div style="padding: 15px 0px 15px 20px;">
									<h5>※ 이미지 클릭 시 삭제가 가능합니다</h5>
								</div>
								<hr />
 								<div class="img_container" style="width: 1630px; display: flex; margin: auto;"> 
										<c:forEach var="img" items="${imgList }" varStatus="status">
											<div class="img_Container">
												<a href="javascript:imgDelete(${img.artcl_seq })" class="img_area" >
													<img class="imgList" src="${img.url }" style="width: 300px; height:200px; padding: 0px 10px 0px 10px;" />
													<input type="hidden" name="artcl_seq" id="artcl_seq" value="${img.artcl_seq }" />
												</a>
											</div>	
										</c:forEach>
								</div>
							</div>
						</form>
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
