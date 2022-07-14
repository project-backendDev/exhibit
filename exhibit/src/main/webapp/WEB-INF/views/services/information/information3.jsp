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


</head>
<body class="Pretendard">

	<!-- top 영역 시작 -->
	<header>
		<c:import url="${pageContext.request.contextPath }/assets/include/topbar.jsp" />
	</header>
	<!-- top 영역 끝 -->
	
	<!-- fixed_con 영역 시작 -->
	<c:import url="${pageContext.request.contextPath }/assets/include/fixed_con.jsp" />
	<!-- fixed_con 영역 끝 -->
	
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/qna_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>자주 묻는 질문</h2>
                <p>Lee Gil-ya Women’s Clinic Exhibit Hall</p>
            </div>
        </div>
    </div>
	<div class="content">
        <div class="wrap">
            <div class="cont">
                <div class="head_tit">
                    <h2></h2>
                    <ul class="page_info">
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_house.png" alt=""></li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>관람 안내</li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>자주 묻는 질문</li>
                    </ul>
                </div>
                <div id="Accordion_wrap2">
                    <div class="que2">
                      <span>이길여 산부인과 기념관을 관람하는데 시간이 얼마나 걸리나요?</span>
                    </div>
                    <div class="anw2">
                      <span>평균적인 관람시간은 1시간이며, 천천히 관람 시 1시간 30분정도 소요됩니다.<br><br></span>
                    </div>
                    <div class="que2">
                      <span>이길여 산부인과 기념관 휴관일이 언제인가요?</span>
                    </div>
                    <div class="anw2">
                      <span>가천 이길여 산부인과 기념관은 매주 월요일 휴관합니다. 토요일, 일요일, 공휴일은 정상운영합니다.<br><br></span>
                    </div>
                    <div class="que2">
                      <span>이길여 산부인과 기념관 입장료는 얼마인가요?</span>
                    </div>
                    <div class="anw2">
                      <span>가천 이길여 산부인과 기념관은 무료관람입니다. <br><br></span>
                    </div>
                    <div class="que2">
                      <span>이길여 산부인과 기념관 운영시간이 어떻게 되나요?</span>
                    </div>
                    <div class="anw2">
                      <span>운영시간은 오전 9시 ~ 오후 5시입니다. (점심시간: 12시 ~ 1시)<br><br></span>
                    </div>
                    <div class="que2">
                      <span>현장에서 해설 신청이 가능한가요?</span>
                    </div>
                    <div class="anw2">
                      <span>10인 이상의 단체관람 시 전시해설은 사전예약이 필요합니다.<br><br></span>
                    </div>
                  </div>    
                  <div class="boardPager">
                    <ul>
                        <li class="pager on"><a href="#!"><img src="${pageContext.request.contextPath }/assets/images/pager_prev.png" alt=""></a></li>
                        <li class="pagerNum on"><a href="#!">1</a></li>
                        <li class="pagerNum"><a href="#!">2</a></li>
                        <li class="pagerNum"><a href="#!">3</a></li>
                        <li class="pagerNum"><a href="#!">4</a></li>
                        <li class="pagerNum"><a href="#!">5</a></li>
                        <li class="pager"><a href="#!"><img src="${pageContext.request.contextPath }/assets/images/pager_next.png" alt=""></a></li>
                    </ul>
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

