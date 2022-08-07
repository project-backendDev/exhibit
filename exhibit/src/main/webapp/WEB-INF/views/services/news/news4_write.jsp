<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>가천 이길여 산부인과 기념관</title>
	<meta name="author" content="" />
	<meta name="description" content="가천 이길여 산부인과 기념관" />
	<meta name="keywords"  content="가천 이길여 산부인과 기념관" />
	<meta name="Resource-type" content="Document" />


	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/reset.css" /> 
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/sub.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/swiper/css/swiper.css">

	<!--[if IE]>
		<script type="text/javascript">
			 var console = { log: function() {} };
		</script>
	<![endif]-->

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
	

	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/swiper/js/swiper.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/scripts/script.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- <script type="text/javascript" src="examples.js"></script> -->


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

function sayeonRegist() {
	if ($("#title").val() == "") {
		alert("제목을 입력해주세요.");
		return;
	} else if ($("#phone_1").val() == "" || $("#phone_2").val() == "") {
		alert("연락처를 입력해주세요.");
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
		
		
		$("#registForm").attr('action', '/sayeon/regist');
		$("#registForm").submit();		
		alert("사연남기기가 완료 되었습니다.");
	}
}
</script>
</head>
<body class="Pretendard" style="background: #F9F9F9;">

	<!-- top 영역 시작 -->
	<header>
		<c:import url="${pageContext.request.contextPath }/assets/include/topbar.jsp" />
	</header>
	<!-- top 영역 끝 -->
	
	<!-- fixed_con 영역 시작 -->
	<c:import url="${pageContext.request.contextPath }/assets/include/fixed_con.jsp" />
	<!-- fixed_con 영역 끝 -->

	<div class="content">
        <div class="wrap">
            <div class="cont">
                <div class="head_tit">
                    <h2></h2>
                    <ul class="page_info">
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_house.png" alt=""></li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>소개</li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>전시실 소개</li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>VR관람</li>
                    </ul>
                </div>
                <div class="form_wrap">
                    <h2 style="text-align: center;">사연 남기기</h2>
                    <form method="POST" id="registForm" enctype="multipart/form-data" >
	                    <c:set var="searchType" value="${paging.searchType}" />
						<input type="hidden" name="nowPage" value="${paging.nowPage}">
						<input type="hidden" name="cntPerPage" value="${paging.cntPerPage}">
						<input type="hidden" name="searchType" value="${searchType }">
						<input type="hidden" name="searchValue" value="${paging.searchValue }">
                        
                        <div class="form_box">
                            <div class="form_head">
                                <i><img src="${pageContext.request.contextPath }/assets/images/i_write.png" alt=""></i>
                                이길여 산부인과와 관련된 추억, 이야기를 남겨주세요. <br/>
                                소중한 사연을 남겨주신 분들께는 연락을 드려 소정의 기념품을 드립니다.

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
                                    <h5>연락처<span>*</span></h5>
                                    <select name="phone" id="phone">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>
                                    <span>―</span>
                                    <input type="text" name="phone" id="phone_1">
                                    <span>―</span>
                                    <input type="text" name="phone" id="phone_2">
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
                            <div class="form_con file last">
                                <div class="input_wrap">
                                    <h5>첨부파일<%--<span>*</span> --%></h5>
                                    <div class="file_wrap">
                                        <input type="text" id="fileName2" placeholder="선택된 파일이 없습니다.">
                                        <input type="file" id="file_artcl1" name="file_artcl" multiple onchange="javascript: document.getElementById('fileName2').value = this.value">
                                        <label for="file_artcl1">
                                            파일선택
                                        </label>
                                    </div>
                                </div>
                                <div class="input_wrap">
                                	<h5></h5>
                                    <div class="file_wrap">
                                        <input type="text" id="fileName3" placeholder="선택된 파일이 없습니다.">
                                        <input type="file" id="file_artcl2" name="file_artcl" multiple onchange="javascript: document.getElementById('fileName3').value = this.value">
                                        <label for="file_artcl2">
                                            파일선택
                                        </label>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="apply_btn bordernone ">
                                <a href=javascript:sayeonRegist();>
                                    저장
                                </a>
                            </div>
                        </div> 
                    </form>
                </div>
            </div>            
        </div>
	</div>
	
    <!-- footer 시작 -->
	<footer>
		<c:import url="${pageContext.request.contextPath }/assets/include/footer.jsp" />
	</footer>
	<!-- // footer 끝 -->





</body>
</html>

