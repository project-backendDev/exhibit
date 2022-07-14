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
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets//scripts/script.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- <script type="text/javascript" src="examples.js"></script> -->

    <style>
        .content{             
            padding-bottom: 0 !important;
        }   
    </style>

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
	
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/ideology_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>재단이념</h2>
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
                        <li>가천길재단</li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>재단이념</li>
                    </ul>
                </div>    
                <div class="ideology">
                    <ul>
                        <li>
                            <div class="bg" style="background: url(${pageContext.request.contextPath }/assets/images/ideology1.png) no-repeat center center; background-size: cover;"></div>
                            <div class="txt">
                                <h4>
                                    博愛(박애)
                                    <br/>
                                    <span>ㅡ</span>
                                </h4>
                                <h5>소외된 삶들을 보살핍니다.</h5>
                                <p>
                                    그늘 진 곳, 소외된 삶들을 보살핍니다. '보증금 없는 병원’,‘새생명 찾아주기 운동’<br/>
                                    해외심장병 어린이 무료수술, 의료 취약지 병원운영 등으로 어려운 환경의 위태로운 생명을 사랑으로 돌봅니다.<br/>
                                    낮은 데, 외딴 삶들을 외면하지 않는 것이 길병원 정신의 뿌리입니다.
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="bg" style="background: url(${pageContext.request.contextPath }/assets/images/ideology2.png) no-repeat center center; background-size: cover;"></div>
                            <div class="txt">
                                <h4>
                                    奉仕(봉사)
                                    <br/>
                                    <span>ㅡ</span>
                                </h4>
                                <h5>영원한 봉사의 신념</h5>
                                <p>
                                    손을 비워서 마음을 채우면 행복합니다. 봉사와 나눔이야말로 선진 사회의 ‘소금’입니다.<br/>
                                    가천미추홀청소년봉사단의 씩씩한 기상, ‘심청효행대상’에 빛나는 고결한 효성은 세상을 밝히는 봉사의 등불입니다.<br/>
                                    가천문화재단 가천박물관이 베푸는 문화 나눔이 훈훈하고 격조 높은 세상을 가꿉니다.
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="bg" style="background: url(${pageContext.request.contextPath }/assets/images/ideology3.png) no-repeat center center; background-size: cover;"></div>
                            <div class="txt">
                                <h4>
                                    愛國(애국)
                                    <br/>
                                    <span>ㅡ</span>
                                </h4>
                                <h5>인재 양성, 나라사랑의 시작이자 끝</h5>
                                <p>
                                    인재 양성이 나라사랑의 시작이자 끝 입니다. 사람이 바로 그 공동체의 미래입니다.<br/>
                                    글로벌 리더를 배출하고, 의료인재를 가꾸어내는 꿈이 가천대학교의 글로벌, 메디컬 두 캠퍼스에 담겨 있습니다.<br/>
                                    기초과학을 연구하는 ‘가천뇌과학연구원’, ‘이길여 암·당뇨연구원’은 21세기 초일류 코리아의 디딤돌 입니다.
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

