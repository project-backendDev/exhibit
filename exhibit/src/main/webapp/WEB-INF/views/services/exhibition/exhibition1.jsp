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
	
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/outside_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>외부전경</h2>
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
                        <li>전시 공간</li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>외부전경</li>
                    </ul>
                </div>
                <div class="top_img shadow">

					<div class="title">
						<h2>
							'보증금 없는 병원'이라는 현판을 내걸고,<br class="pc_only"/>
							가난하고 어려운 서민들에게 병원 문을 활짝 열어둔<br class="pc_only"/>
							이길여 산부인과
						</h2>
						<p>
							가천 이길여산부인과 기념관은 가천(嘉泉) 이길여 박사가 1958년 처음으로 산부인과를 개원한 장소에 옛 산부인과 건물을 그대로 살려 재현한 건물입니다.<br/>
							1958년 개원 당시 3층이던 벽돌 건물은 1969년 증축을 거쳐 현재 모습의 9층 건물이 되었습니다.                         
						</p>						
					</div>					
                    <img src="${pageContext.request.contextPath }/assets/images/outside_visu.png" alt="">

                </div>
                <div class="information">
                    <ul class="list type1">
                        <li>
                            <div class="title">
                                <h4>
                                    <i><img src="${pageContext.request.contextPath }/assets/images/i_info2.png" alt=""></i>
                                    Information
                                </h4>
                            </div>

                            <div class="memorial type2">
                                <ul>
                                    <li>
                                        <div class="con">
                                            <div class="floor">1F</div>
                                            <div class="map"><img src="${pageContext.request.contextPath }/assets/images/map1.png" alt=""></div>
                                            <div class="txt">
                                                <p><span class="num">1</span>대기실</p>
                                                <p><span class="num">2</span>안내창구</p>
                                                <p><span class="num">3</span>진찰실</p>
                                                <p><span class="num">4</span>진료실</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="con">
                                            <div class="floor">2F</div>
                                            <div class="map"><img src="${pageContext.request.contextPath }/assets/images/map2.png" alt=""></div>
                                            <div class="txt">
                                                <p><span class="num">1</span><span class="num">2</span>입원실</p>
                                                <p><span class="num">3</span>분만대기실</p>
                                                <p><span class="num">4</span>수술실</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="con">
                                            <div class="floor">3F</div>
                                            <div class="map"><img src="${pageContext.request.contextPath }/assets/images/map3.png" alt=""></div>
                                            <div class="txt">
                                                <p><span class="num">1</span>프롤로그</p>
                                                <p><span class="num">2</span>포토존</p>
                                                <p><span class="num">3</span>소녀의 꿈 영상실</p>
                                                <p><span class="num">4</span>경영철학</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
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

