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

<style>
    .content{             
        margin-top: 9.6875rem !important;   
        /* padding-bottom: 0 !important; */
    }   
</style>

<script>

	//모든 파일명.확장자(exe|sh|zip|alx)는 업로드를 못하도록 막기 
	//첨부파일의 확장자가 exe, sh, zip, alz 경우 업로드를 제한
	// 이미지용
	var regex1 = new RegExp("(.*?)\.(exe|sh|zip|alx|java|jsp|js|pdf|pptx|hwp|hwpx|txt|docx|xlsx|cvs|json)$");
	var maxSize1 = 5242880; //5MB //최대 5MB까지만 업로드 가능
	
	function checkExtension(fileName, fileSize){
		if(fileSize >= maxSize1){
			alert("파일 사이즈 초과");
			return false;
		}
		
		if(regex1.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		//체크 통과
		return true;
	}
	
	// 일반파일용
	var regex2 = new RegExp("(.*?)\.(exe|sh|zip|alx|java|jsp|js|pptx|txt|cvs|json)$");
	var maxSize2 = 5242880; //5MB //최대 5MB까지만 업로드 가능
	
	function checkExtension2(fileName, fileSize){
		if(fileSize >= maxSize2){
			alert("파일 사이즈 초과");
			return false;
		}
		
		if(regex2.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		//체크 통과
		return true;
	}
	
	function newsletterRegist() {
		if ($("#title").val() == "") {
			alert("제목을 입력해주세요.");
			return;
		} else if ($("#writer").val() == "") {
			alert("작성자를 입력해주세요.");
			return;
		<%--} 
		else if ($("#content").val() == "") {
			alert("내용을 입력해주세요.");
			return;--%>
		} else {
			var inputImgFile = $("input[name='img_file_artcl']");
			var inputFile = $("input[name='file_artcl']");
			var imgFiles = inputImgFile[0].files;
			var files = inputFile[0].files;
			
			console.log(imgFiles);
			console.log(files);
			
			// 이미지 파일 사이즈 및 확장자 체크
			for(var i=0; i<imgFiles.length;i++){
				console.log(imgFiles[i]);
				//확장자, 크기 체크
				//function checkExtension(fileName, fileSize){
				if(!checkExtension(imgFiles[i].name, imgFiles[i].size)){//!true라면 실패
					console.log("확장자체크 결과 => 잘못된 확장자");
					return false;
				}
			}
				
			for(var i=0; i<files.length;i++){
				console.log(files[i]);
				//확장자, 크기 체크
				//function checkExtension(fileName, fileSize){
				if(!checkExtension2(files[i].name, files[i].size)){//!true라면 실패
					console.log("확장자체크 결과 => 잘못된 확장자");
					return false;
				}
			}
			
			
			$("#registForm").attr('action', '/admin/newsletter/regist');
			$("#registForm").submit();		
			alert("뉴스레터 등록 완료했습니다.");
		}
	}
			
	var addCnt = 2; // 첫번째 input file이 1
	
	function link_f_text(value, nm){
		$(nm).val(value);
	}
	
	function addFile(){
			
			var f_nameId = "fileName" + addCnt;
			var f_artclId = "file_artcl" + addCnt;
			
			$("#fileDiv").append("<div class='input_wrap'>"+
								 "<h5></h5>"+
								 "<div class='file_wrap'>"+
								 "<input type='text' id='"+ f_nameId +"' placeholder='선택된 파일이 없습니다.'>"+
								 "<input type='file' id='"+ f_artclId +"' name='file_artcl' multiple onchange='link_f_text(this.value,"+f_nameId+")'>"+
								 "<label for='"+ f_artclId +"'>파일선택</label></div></div>");
				
			addCnt++;
	}
	<%--
	<div class="input_wrap">
	<h5></h5>
	<div class="file_wrap">
	    <input type="text" id="fileName2" placeholder="선택된 파일이 없습니다.">
	    <input type="file" id="file_artcl2" name="file_artcl" multiple onchange="javascript: document.getElementById('fileName2').value = this.value">
	    <label for="file_artcl2">
	        파일선택
	    </label>
	</div>
	</div>
	--%>
	function ChangeValue(){
 		$("#category").val( $("#categorys option:selected").attr("value") );
 		$("#category_Seq").val( $("#categorys option:selected").attr("value2") );
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
            <h1 class="m-0">뉴스레터</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main Content -->
		<div class="form_wrap">
        	<h2 style="text-align: center;">뉴스레터 등록</h2>
            <form method="POST" id="registForm" enctype="multipart/form-data" >
	            <c:set var="searchType" value="${paging.searchType}" />
				<input type="hidden" name="nowPage" value="${paging.nowPage}">
				<input type="hidden" name="cntPerPage" value="${paging.cntPerPage}">
				<input type="hidden" name="searchType" value="${searchType }">
				<input type="hidden" name="searchValue" value="${paging.searchValue }">
	                     
                     <div class="form_box">
                         <div class="form_head">
                             <i><img src="${pageContext.request.contextPath }/assets/images/i_write.png" alt=""></i>
                             뉴스레터를 등록해주세요.

                         </div>
                         <div class="form_con one">
                             <div class="input_wrap ">
                                 <h5>제목<span>*</span></h5>
                                 <input type="text" name="title" id="title">
                             </div>
                         </div>
                         <div class="form_con one">
                             <div class="input_wrap ">
                                 <h5>작성자<span>*</span></h5>
                                 <input type="text" name="writer" id="writer">
                             </div>
                         </div>   
                         <div class="form_con tel">
                             <div class="input_wrap">
                                 <h5>카테고리<span>*</span></h5>
                                 <select name="categorys" id="categorys" onchange="ChangeValue()">
                                 	<c:choose>
                                 		<c:when test="${categoryList != null && categoryList.size() > 0}">
                                 			<option value="">없음.</option>
		                                 	<c:forEach var="list" items="${categoryList}">
		                                    	<option value="${list.category }" value2="${list.category_Seq }" ><c:out value="${list.category }"/></option>
		                                 	</c:forEach>
		                                </c:when>
		                                <c:otherwise>
		                                	<option value="">등록된 카테고리가 없습니다.</option>
		                                </c:otherwise>
                                 	</c:choose>
                                 </select>
                                 <input type="hidden" name="category" id="category" value="">
                                 <input type="hidden" name="category_Seq" id="category_Seq" value="">
                                 <span style="font-weight: bold; color: red;">카테고리를 선택하지 않으시면, 카테고리에 포함되지 않을 수 있습니다.</span>
                             </div>
                         </div>
                         <div class="form_con textarea">
                             <div class="input_wrap">
                                 <h5>내용</h5>
                                 <textarea name="content" id="content" class="form-control" ></textarea> 
                             </div>
                         </div>                        
						<div class="form_con file">
                             <div class="input_wrap">
                                 <h5>이미지(썸네일)<%--<span>*</span> --%></h5>
                                 <div class="file_wrap">
                                     <input type="text" id="fileName" placeholder="선택된 파일이 없습니다.">
                                     <input type="file" id="img_file_artcl" name="img_file_artcl" onchange="javascript: document.getElementById('fileName').value = this.value">
                                     <label for="img_file_artcl">
                                         파일선택
                                     </label>
                                 </div>
                             </div>
                         </div>
                         <div class="form_con file last" id="fileDiv">
                             <div class="input_wrap">
                                 <h5>첨부파일<%--<span>*</span> --%></h5>
                                 <div class="file_wrap">
                                     <input type="text" id="fileName1" placeholder="선택된 파일이 없습니다.">
                                     <input type="file" id="file_artcl1" name="file_artcl" multiple onchange="javascript: document.getElementById('fileName1').value = this.value">
                                     <label for="file_artcl1">
                                         파일선택
                                     </label>
                                 </div>
                                 <div style="padding: 10px;">
                                 	<input type="button" value="파일추가" onclick="addFile()">
                                 </div>
                             </div>
                             <%--<div class="input_wrap">
                             	<h5></h5>
                                 <div class="file_wrap">
                                     <input type="text" id="fileName2" placeholder="선택된 파일이 없습니다.">
                                     <input type="file" id="file_artcl2" name="file_artcl" multiple onchange="javascript: document.getElementById('fileName2').value = this.value">
                                     <label for="file_artcl2">
                                         파일선택
                                     </label>
                                 </div>
                             </div> --%>
                         </div>
                         
                         <div class="apply_btn bordernone ">
                             <a href=javascript:newsletterRegist();>
                                 저장
                             </a>
                             <a id="list_btn" href="${pageContext.request.contextPath }/admin/newsletter/artclList">
                              목록으로
                          </a>
                         </div>
                     </div> 
                 </form>
             </div>
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
  
  	$(document).ready(function() {
		$("#search_Btn").click(function() {
			$("#artclListForm").attr('action', '/admin/newsletter/artclList');
			$("#artclListForm").submit();
		});
		
		$("#registView_Btn").click(function(){
			$("#artclListForm").attr('action', '/admin/newsletter/registView');
			$("#artclListForm").submit();
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
