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
	
    <!-- <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition4_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>3층 전시실</h2>
                <p>Lee Gil-ya Women’s Clinic Exhibit Hall</p>
            </div>
        </div>
    </div> -->
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
                        <li>설립자 소개</li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>인사말</li>
                    </ul>
                </div>
                <div class="top_img">
                    <img src="${pageContext.request.contextPath }/assets/images/intro_visu.jpg" alt="">
                </div>
                <div class="intro_txt">
                    <h2><i><img src="${pageContext.request.contextPath }/assets/images/colon1.png" alt=""></i>안녕하세요. 이길여입니다.<i><img src="${pageContext.request.contextPath }/assets/images/colon2.png" alt=""></i></h2>
                    <div class="line"></div>
                    <p>
                        오늘날의 가천길재단은 제 땀과 눈물, 열정이 어려있는 저의 분신입니다. 그러나 이 공간이 누구에게 잘 보이기 위해서 마련된 것은 아닙니다.<br/>
그저 '박애, 봉사, 애국' 이라는 신념아래 외길을 걸어 온 나 자신을 차분히 정리하며 그런 삶의 의미를 여러분과 함께 반추하고자 할 따름입니다.
                    </p>
                </div>             
            </div>            
        </div>

        <div class="gallery_info" style="background: url(${pageContext.request.contextPath }/assets/images/intro_bg.png) no-repeat center center; background-size: cover;">
            <div class="wrap">
                <ul>
                    <li>
                        <div class="img_wrap">
                            <div class="img type1" style="background: url(${pageContext.request.contextPath }/assets/images/intro1.png) no-repeat center center; background-size: cover;"></div>
                        </div>
                        <div class="txt">
                            <h4>
                                의사와 교육자로서 한 평생
                            </h4>
                            <p>
                                저는 의사와 교육자로서 한 평생을 살아왔습니다.<br/>
                                다행히도 한 우물을 파 온 저의 노력이 헛되지 않아 대한민국의 미래를 밝힐<br class="pc_only"/>
                                많은 제자들을 키울 수 있었고, 또 꺼져가던 많은 생명을 구하는 기쁨을 누렸습니다.<br/>
                                오늘날의 가천길재단은 제 땀과 눈물, 열정이 어려있는 저의 분신입니다.
                                <br/><br/>
                                그러나 이 공간이 누구에게 잘 보이기 위해서 마련된 것은 아닙니다. <br/>
                                '박애, 봉사, 애국' 이라는 신념아래 외길을 걸어 온 나 자신을 차분히 정리하며 그런 삶의 의미를 여러분과 함께 반추하고자 할 따름입니다. 늘 가져온 생각이지만 고백은 서툴게 마련입니다.
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="txt">
                            <h4>
                                희망을 잉태하는 곳
                            </h4>
                            <p>
                                저는 이곳이 '희망을 잉태하는 곳' 이라 불리기를 기대합니다. <br/>
                                수많은 식물들은 대지를 뚫고 새순을 돋아 올려 형형색색의 꽃망울을 온누리에 퍼뜨립니다.<br/>
                                그리하여 거기서 잉태된 꽃씨가 또 다시 대지에 뿌리를 내리게 함으로써 굳건하게<br class="pc_only"/>
                                또 다른 꽃무리를 이루게 합니다.
                                <br/><br/>
                                그와 마찬가지로 이곳을 일관되게 관통하고 있는 제 삶의 철학인 '박애, 봉사, 애국'이란 가치관이 <br class="pc_only"/>
                                여러분의 마음과 머리 속에도 깊게 각인되어, 나라와 겨레에게 희망의 빛이 되었으면 하는, <br class="pc_only"/>
                                소박한 바람을 가져 봅니다.                                    
                            </p>
                        </div>
                        <div class="img_wrap">
                            <div class="img type1" style="background: url(${pageContext.request.contextPath }/assets/images/intro2.png) no-repeat center center; background-size: cover;"></div>
                        </div>
                    </li>
                </ul>
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

