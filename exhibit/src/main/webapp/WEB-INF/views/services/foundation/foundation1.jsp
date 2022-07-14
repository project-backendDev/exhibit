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
	
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/foundation1_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>재단현황</h2>
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
                        <li>재단현황</li>
                    </ul>
                </div>    
            </div>            
        </div>
        <div class="recent">
            <div class="wrap">
                <div class="recent_top">
                    <div class="txt">
                        <h4>의료</h4>
                        <p>Medical Service</p>
                    </div>
                    <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent1.png) no-repeat center center;">

                    </div>
                </div>
                <div class="recent_list">
                    <ul>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent1_1.png);  background-size: cover;"></div>
                            <div class="txt">응급의료센터·권역외상센터</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent1_2.png);  background-size: cover;"></div>
                            <div class="txt">인천지역암센터·심장혈관센터</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent1_3.png);  background-size: cover;"></div>
                            <div class="txt">인공지능병원</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent1_4.png);  background-size: cover;"></div>
                            <div class="txt">여성전문센터</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent1_5.png);  background-size: cover;"></div>
                            <div class="txt">치과병원</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent1_6.png);  background-size: cover;"></div>
                            <div class="txt">국민검진센터</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent1_7.png);  background-size: cover;"></div>
                            <div class="txt">가천어린이병원</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent1_8.png);  background-size: cover;"></div>
                            <div class="txt">가천대학교부속 동인천길병원</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent1_9.png);  background-size: cover;"></div>
                            <div class="txt">가천대학교부속 길한방병원</div>
                        </li>
                    </ul>
                </div>
                <div class="recent_top orange">
                    <div class="txt">
                        <h4>교육</h4>
                        <p>Education</p>
                    </div>
                    <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent2.png) no-repeat center center;">

                    </div>
                </div>
                <div class="recent_list last">
                    <ul>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent2_1.png);  background-size: cover;"></div>
                            <div class="txt">가천대학교 메디컬캠퍼스</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent2_2.png);  background-size: cover;"></div>
                            <div class="txt">의과대학</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent2_3.png);  background-size: cover;"></div>
                            <div class="txt">신명여고</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent2_4.png);  background-size: cover;"></div>
                            <div class="txt">가천대학교 비전타워</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent2_5.png);  background-size: cover;"></div>
                            <div class="txt">가천 리더십센터</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent2_6.png);  background-size: cover;"></div>
                            <div class="txt">하와이 가천글로벌센터</div>
                        </li>
                    </ul>
                </div>                
            </div>
        </div>
        <div class="recent type2" style="background: #F5F5F5;">
            <div class="wrap">
                <div class="recent_head">
                    <div class="txt">
                        <h4>문화</h4>
                        <p>Culture</p>
                    </div>
                </div>
                <div class="recent_list">
                    <ul>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent3_1.png);  background-size: cover;"></div>
                            <div class="txt">가천문화재단</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent3_2.png);  background-size: cover;"></div>
                            <div class="txt">가천박물관</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent3_3.png);  background-size: cover;"></div>
                            <div class="txt">가천이길여산부인과기념관</div>
                        </li>
                    </ul>
                </div>              
            </div>
        </div>    
        <div class="recent type2">
            <div class="wrap">
                <div class="recent_head">
                    <div class="txt">
                        <h4>연구</h4>
                        <p>Research</p>
                    </div>
                </div>
                <div class="recent_list">
                    <ul>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent4_1.png);  background-size: cover;"></div>
                            <div class="txt">가천뇌과학연구원</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent4_2.png);  background-size: cover;"></div>
                            <div class="txt">이길여 암·당뇨연구원</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent4_3.png);  background-size: cover;"></div>
                            <div class="txt">가천바이오나노연구원</div>
                        </li>
                    </ul>
                </div>              
            </div>
        </div>     
        <div class="recent type2" style="background: #F5F5F5;">
            <div class="wrap">
                <div class="recent_head">
                    <div class="txt">
                        <h4>봉사,언론</h4>
                        <p>Service, Media</p>
                    </div>
                </div>
                <div class="recent_list">
                    <ul>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent5_1.png);  background-size: cover;"></div>
                            <div class="txt">새생명찾아주기 운동본부</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent5_2.png);  background-size: cover;"></div>
                            <div class="txt">가천미추홀 청소년봉사단</div>
                        </li>
                        <li>
                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/recent5_3.png);  background-size: cover;"></div>
                            <div class="txt">경인일보</div>
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

