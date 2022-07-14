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
                    <form action="">
                        <div class="form_box">
                            <div class="form_head">
                                <i><img src="${pageContext.request.contextPath }/assets/images/i_write.png" alt=""></i>
                                이길여 산부인과와 관련된 추억, 이야기를 남겨주세요. <br/>
                                소중한 사연을 남겨주신 분들께는 연락을 드려 소정의 기념품을 드립니다.

                            </div>
                            <div class="form_con one">
                                <div class="input_wrap ">
                                    <h5>제목<span>*</span></h5>
                                    <input type="text">
                                </div>
                            </div>
                            <div class="form_con one">
                                <div class="input_wrap ">
                                    <h5>작성자<span>*</span></h5>
                                    <input type="text">
                                </div>
                            </div>   
                            <div class="form_con tel">
                                <div class="input_wrap">
                                    <h5>연락처<span>*</span></h5>
                                    <select name="" id="">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>
                                    <span>―</span>
                                    <input type="text">
                                    <span>―</span>
                                    <input type="text">
                                </div>
                            </div>
                            <div class="form_con file">
                                <div class="input_wrap">
                                    <h5>첨부파일<span>*</span></h5>
                                    <div class="file_wrap">
                                        <input type="text" placeholder="선택된 파일이 없습니다.">
                                        <input type="file" id="file2">
                                        <label for="file2">
                                            파일선택
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form_con textarea last">
                                <div class="input_wrap">
                                    <h5>기타사항</h5>
                                    <textarea name="" id=""></textarea>
                                </div>
                            </div>                            

                            <div class="apply_btn bordernone ">
                                <a href="#">
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

