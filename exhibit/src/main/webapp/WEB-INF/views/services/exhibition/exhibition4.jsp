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
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition4_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>3층 전시실</h2>
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
                        <li>3층 전시실</li>
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
                                    가천 이길여 박사의 발자취와 철학
                                </h2>
                                <p>
                                    인터렉티브 영상, 포토존 등 멀티미디어를 통해, 과거 '이길여 산부인과'의 봉사인술을<br class="pc_only"/>
                                    가천길재단의 비전으로 확장해 볼 수 있는 복합체험 공간입니다.
                                </p>
                            </div>

                            <div class="exhibition">
                                <ul>
                                    <li>
                                        <a>
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition3_1.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>포토존</h5>
                                                    <p>
                                                        기억에 남는 사진 한 장. 이길여 산부인과 앞에서 기념 사진 한 장 촬영하며, <br class="pc_only"/>
                                                        좋은 추억을 남기세요!
                                                    </p>
                                                    
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition3_2.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>아름다운 샘</h5>
                                                    <p>
                                                        이길여 회장의 호인 '가천'의 의미를 살펴보고, 그의 발자취와 철학을 공유하는 공간입니다.
                                                    </p>
                                                    
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition3_3.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>영상실</h5>
                                                    <p>
                                                        어린 시절부터 의사가 되겠다는 꿈을 갖고 '바람개비'를 돌리며 힘차게 내달리던 시골 소녀.<br/>
                                                        그 감동의 스토리를 영상으로 만나보세요.
                                                    </p>
                                                    
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition3_4.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>가천의 철학</h5>
                                                    <p>
                                                        작은 산부인과에서 오늘날 교육, 의료, 사회문화, 봉사, 언론에 이르기까지<br class="pc_only"/>
                                                        대한민국 대표 공익재단으로 우뚝 선 가천길재단의 어제와 오늘, 그리고 미래를 확인하는 공간입니다.
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

