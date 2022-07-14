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
	
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition2_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>가천이란</h2>
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
                        <li>설립자소개</li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>가천이란</li>
                    </ul>
                </div>
                <div class="birth" style="background: url(${pageContext.request.contextPath }/assets/images/birth_bg.png) no-repeat center center; background-size: cover;">
                    <h2>‘가천(嘉泉)’ 호(號)의 탄생</h2>
                    <p>
                        이길여 회장의 호(號) ‘가천(嘉泉)’은<br class="pc_only"/> 한국정신문화연구원장을 지낸
                        류승국 박사가 지은 것으로<br class="pc_only"/> ‘아름다움이 샘처럼 솟아난다’는 뜻을 담고 있다.                        
                    </p>
                </div>
                <ul class="meaning">
                    <li>
                        <img src="${pageContext.request.contextPath }/assets/images/ga.png" alt="">
                        <h5>아름다울(뛰어나다, 훌륭하다, 기쁘다) 가嘉</h5>
                        <p>
                            길(吉)자 20개가 더해진(十, 十) 글자이며, 그 뜻은<br class="pc_only"/>
                            “좋은 일이 많으면 아름답다”는 의미를 내포하고 있다.                            
                        </p>
                    </li>
                    <li>
                        <img src="${pageContext.request.contextPath }/assets/images/cheon.png" alt="">
                        <h5>샘 천泉</h5>
                        <p>
                            원천이나 생명의 근원, 여성을 상징하는 글자로 “길하고 아름다움이<br class="pc_only"/>
                            샘솟는 인생 또는 세상을 만들고자 하는 의지”가 담겨 있다.        
                        </p>
                    </li>
                </ul>
            </div>            
        </div>

        <div class="con_bottom">
            <div class="wrap">
                <div class="img">
                    <img class="pc" src="${pageContext.request.contextPath }/assets/images/frame.png" alt="">
                    <img class="mo" src="${pageContext.request.contextPath }/assets/images/frame_mo.png" alt="">
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

