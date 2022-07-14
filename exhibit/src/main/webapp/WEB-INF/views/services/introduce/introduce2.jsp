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
	
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/purpose_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>설립목적</h2>
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
                        <li>소개</li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>설립목적</li>
                    </ul>
                </div>
                <div class="top_img shadow">
                    <img src="${pageContext.request.contextPath }/assets/images/purpose_visu.png" alt="">
                </div>
                <div class="philosophy">
                    <ul>
                        <li>
                            <div class="con">
                                <h2>01</h2>
                                <h5>서울대 의대를 졸업하고 1958년 첫 개원</h5>
                                <p>
                                    빈곤이 한국사회를 지배하던 열악한 의료환경 속에서 ‘이길여 산부인과’를 개원하며, 본격적으로 세상을 향해 인술을 펼치기 시작합니다.<br/>
                                    환자가 너무 많이 밀려들어 하루 4시간밖에 못 자고 의료기기와 의약품이 늘 부족했지만, 그녀는 오히려 자신에게 봉사할 기회와 능력이 주어진 것은 커다란 행운이라고 생각했습니다.<br/>
                                    인간의 생명을 위해 헌신하는 의사를 천직으로 여긴 것이지요.
                                </p>
                            </div>

                        </li>
                        <li>
                            <div class="line"></div>
                            <div class="con">
                                <h2>02</h2>
                                <h5>시골소녀의 꿈이 실현되기 시작한 곳</h5>
                                <p>
                                    ‘이길여 산부인과’는 아픈 이들을 따뜻하게 어루만지고자 했던 가천길재단 이길여 회장의 공익경영이 초석을 다진 곳입니다.<br/>
                                    ‘이길여 산부인과’가 있 었던 자리 위에, 당시 모습을 생생히 재현해 둔 이 곳 ‘가천 이길여 산부인과 기념관’은 작은 시골소녀의 꿈이, 의사 이길여의 열정이, 가천길재단의 비전이<br/>
                                    시간을 초월해 한 길로 흐르는 역사의 현장입니다.
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="line"></div>
                            <div class="con">
                                <h2>03</h2>
                                <h5>의사 이길여</h5>
                                <p>
                                    “ 내 인생의 꿈은 ‘외진 데’, ‘낮은 곳’에 사는 사람들을 사랑하면서 그들을 행복하게 해주는 것이다.”
                                </p>
                            </div>
                        </li>
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

