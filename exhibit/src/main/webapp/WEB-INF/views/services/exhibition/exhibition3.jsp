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
	
	<div class="fixed_con">
		<ul>
			<li>
				<a href="${pageContext.request.contextPath }/index.jsp">
					<i><img src="${pageContext.request.contextPath }/assets/images/i_main.png" alt=""></i>
					<p>메인</p>
				</a>
			</li>
			<li>
				<a href="http://easyvr.co.kr/gachon2/index.jsp" target="_blank">
					<i><img src="${pageContext.request.contextPath }/assets/images/i_vr.png" alt=""></i>
					<p>VR</p>
				</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath }/services/information1.jsp">
					<i><img src="${pageContext.request.contextPath }/assets/images/i_tour.png" alt=""></i>
					<p>관람 안내</p>
				</a>
			</li>
			<li>
				<a href="#" id="top_btn">
					<i><img src="${pageContext.request.contextPath }/assets/images/i_top.png" alt=""></i>
					<p>TOP</p>
				</a>
			</li>
		</ul>
	</div>
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition3_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>2층 전시실</h2>
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
                        <li>2층 전시실</li>
                    </ul>
                </div>
                <div class="information">
					<div class="side_mark">
						<p>Gallery</p>
					</div>					
                    <ul class="list type1">
                        <li>
                            <div class="title">
                                <h2>
                                    아이 울음소리 끊이지 않던 수술실과 <br class="pc_only"/>
                                    정성담긴 미역국이 있던 입원실
                                </h2>
                                <p>
                                    환자들과 함께 동고동락하던 그때 그 시절.<br/>
                                    당시 '이길여 산부인과'의 수술실, 분만실, 입원실의 모습을 그대로 담아낸 공간입니다.
                                </p>
                            </div>

                            <div class="exhibition">
                                <ul>
                                    <li>
                                        <a>
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition2_1.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>수술실</h5>
                                                    <p>
                                                        하루 24시간이 모자랄 정도로 환자들이 밀려들었던 '이길여 산부인과' 시절. <br/>
                                                        한 명의 환자라도 더 빨리 치료를 할 수 있길 바라며 보냈던 그 시간들이,<br class="pc_only"/>
                                                        그 여의사에게는 가장 치열하고도 행복한 순간이었습니다.
                                                    </p>
                                                    
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition2_2.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>분만대기실</h5>
                                                    <p>
                                                        내진을 위한 고무장갑조차도 언제나 더운 물에 담가 썼습니다.<br/>
                                                        환자가 편하게, 놀라지 않도록, 정성을 기울인 대기실. 그리고 환자가 믿고 의지 할 수 있는 의사가 되기 위해 <br class="pc_only"/>
                                                        한없이 낮추고 가슴을 열었습니다. 환자의 눈높이에 맞춰 친절하고 자세하게 치료 과정을 설명했습니다.
                                                    </p>
                                                    
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition2_3.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>입원실(1)</h5>
                                                    <p>
                                                        이길여 산부인과는 단순히 아기를 낳고 질병을 치료하는 공간에 머물지 않고,<br class="pc_only"/>
                                                        환자의 가정에 행복과 평안을 안겨주고자 노력했습니다.<br/>
                                                        언제나 환자들을 가족처럼 여기며 온정으로 보살폈습니다. 내 가족이 먹을 미역국이기에 정성을 다해 <br class="pc_only"/>
                                                        끓여냈으며, 내 가족을 품는 마음으로 환자를 안아 일으키며 진료했습니다.
                                                    </p>
                                                    
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition2_4.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>입원실(2)</h5>
                                                    <p>
                                                        병원은 단순히 질병을 치료하는 곳이 아닌 환자의 가정에 행복과 평안, 웃음을 주는 곳이어야 합니다. <br/>
                                                        병실에 누워있는 환자를 진료할 때면 몸으로 직접 안아서 일으켰습니다. 위로하는 뜻에서, 그리고 친밀감을 <br class="pc_only"/>
                                                        주기 위해 시작한 일입니다. 그러나 ‘안아 일으키기’가 너무도 정확한 진찰이라는 사실을 깨달았습니다. <br/>
                                                        무겁게 안겨 오는 환자는 아직도 완치가 멀다는 신호, 가볍게 안겨 오는 환자는 거의 다 나았다는 증거였습니다. <br/>
                                                        청진기나 혈압을 재보지 않아도, 안아 보기만 하면 체온, 숨소리와 심장소리가 온몸으로 다가왔습니다.
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
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

