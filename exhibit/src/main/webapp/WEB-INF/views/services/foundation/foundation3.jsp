<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%><!DOCTYPE html>
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
	
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/history_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>재단연혁</h2>
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
                        <li>재단연혁</li>
                    </ul>
                </div>    
                <div class="information">
                    <ul class="list type2">    
                        <li>
                            <div class="explor_history">
                                <ul class="tabs type3">
                                    <li class="tab-link current" data-tab="tab-1">2020~</li>
                                    <li class="tab-link" data-tab="tab-2">2010~</li>
                                    <li class="tab-link" data-tab="tab-3">2000~</li>
                                    <li class="tab-link" data-tab="tab-4">1990~</li>
                                    <li class="tab-link" data-tab="tab-5">1950 ~ 1980</li>
                                </ul>
                                <div id="tab-1" class="tab-content current">
                                    <div class="history_sec left">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history1.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2019</h2>
                                                    <p><span>2019. 06.</span>가천대 국내최초 인공지능학과 신설</p>
                                                </li>
                                                <li>
                                                    <h2>2016</h2>
                                                    <p><span>2016. 06.</span>국내최초 인공지능 ‘왓슨’ 도입</p>
                                                    <p><span>2016. 06.</span>가천이길여산부인과기념관 개관</p>
                                                </li>
                                                <li>
                                                    <h2>2015</h2>
                                                    <p><span>2015. 05.</span>가천누리 개소</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="history_sec right pc">
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2013</h2>
                                                    <p>가천뇌과학연구소 세계최초 ‘뇌신경 지도’ 제작<span>2013. 05.</span></p>
                                                </li>
                                                <li>
                                                    <h2>2012</h2>
                                                    <p>가천의대길병원을 가천대 길병원으로 개칭<span>2012. 03.</span></p>
                                                    <p>가천대학교 출범 (가천의과학대학교·경원대학교 통합)<span>2012. 03.</span></p>
                                                    <p>가천대학교 하와이 가천글로벌센터 개관<span>2012. 02.</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history2.png" alt="">
                                        </div>
                                    </div>
                                    <div class="history_sec left mo">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history2.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2013</h2>
                                                    <p>가천뇌과학연구소 세계최초 ‘뇌신경 지도’ 제작<span>2013. 05.</span></p>
                                                </li>
                                                <li>
                                                    <h2>2012</h2>
                                                    <p>가천의대길병원을 가천대 길병원으로 개칭<span>2012. 03.</span></p>
                                                    <p>가천대학교 출범 (가천의과학대학교·경원대학교 통합)<span>2012. 03.</span></p>
                                                    <p>가천대학교 하와이 가천글로벌센터 개관<span>2012. 02.</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>                                    
                                    <div class="history_sec left">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history3.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2011</h2>
                                                    <p><span>2011. 07.</span>가천의과학대학교·경원대학교 통합승인</p>
                                                    <p><span>2011. 03.</span>가천의대길병원 암센터 개원</p>
                                                </li>
                                                <li>
                                                    <h2>2010</h2>
                                                    <p><span>2010. 10.</span>국내최초 인공지능 ‘왓슨’ 도입</p>
                                                    <p><span>2010. 09.</span>경인일보 신사옥 기공식</p>
                                                    <p><span>2010. 03.</span>가천의과대학교 약학대학 설립인가 획득</p>
                                                    <p><span>2010. 02.</span>가천뇌건강센터 JCI 인증</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div id="tab-2" class="tab-content">
                                    <div class="history_sec left">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history1.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2019</h2>
                                                    <p><span>2019. 06.</span>가천대 국내최초 인공지능학과 신설</p>
                                                </li>
                                                <li>
                                                    <h2>2016</h2>
                                                    <p><span>2016. 06.</span>국내최초 인공지능 ‘왓슨’ 도입</p>
                                                    <p><span>2016. 06.</span>가천이길여산부인과기념관 개관</p>
                                                </li>
                                                <li>
                                                    <h2>2015</h2>
                                                    <p><span>2015. 05.</span>가천누리 개소</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="history_sec right pc">
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2013</h2>
                                                    <p>가천뇌과학연구소 세계최초 ‘뇌신경 지도’ 제작<span>2013. 05.</span></p>
                                                </li>
                                                <li>
                                                    <h2>2012</h2>
                                                    <p>가천의대길병원을 가천대 길병원으로 개칭<span>2012. 03.</span></p>
                                                    <p>가천대학교 출범 (가천의과학대학교·경원대학교 통합)<span>2012. 03.</span></p>
                                                    <p>가천대학교 하와이 가천글로벌센터 개관<span>2012. 02.</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history2.png" alt="">
                                        </div>
                                    </div>
                                    <div class="history_sec left mo">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history2.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2013</h2>
                                                    <p>가천뇌과학연구소 세계최초 ‘뇌신경 지도’ 제작<span>2013. 05.</span></p>
                                                </li>
                                                <li>
                                                    <h2>2012</h2>
                                                    <p>가천의대길병원을 가천대 길병원으로 개칭<span>2012. 03.</span></p>
                                                    <p>가천대학교 출범 (가천의과학대학교·경원대학교 통합)<span>2012. 03.</span></p>
                                                    <p>가천대학교 하와이 가천글로벌센터 개관<span>2012. 02.</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>                                    
                                    <div class="history_sec left">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history3.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2011</h2>
                                                    <p><span>2011. 07.</span>가천의과학대학교·경원대학교 통합승인</p>
                                                    <p><span>2011. 03.</span>가천의대길병원 암센터 개원</p>
                                                </li>
                                                <li>
                                                    <h2>2010</h2>
                                                    <p><span>2010. 10.</span>국내최초 인공지능 ‘왓슨’ 도입</p>
                                                    <p><span>2010. 09.</span>경인일보 신사옥 기공식</p>
                                                    <p><span>2010. 03.</span>가천의과대학교 약학대학 설립인가 획득</p>
                                                    <p><span>2010. 02.</span>가천뇌건강센터 JCI 인증</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div id="tab-3" class="tab-content">
                                    <div class="history_sec left">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history1.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2019</h2>
                                                    <p><span>2019. 06.</span>가천대 국내최초 인공지능학과 신설</p>
                                                </li>
                                                <li>
                                                    <h2>2016</h2>
                                                    <p><span>2016. 06.</span>국내최초 인공지능 ‘왓슨’ 도입</p>
                                                    <p><span>2016. 06.</span>가천이길여산부인과기념관 개관</p>
                                                </li>
                                                <li>
                                                    <h2>2015</h2>
                                                    <p><span>2015. 05.</span>가천누리 개소</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="history_sec right pc">
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2013</h2>
                                                    <p>가천뇌과학연구소 세계최초 ‘뇌신경 지도’ 제작<span>2013. 05.</span></p>
                                                </li>
                                                <li>
                                                    <h2>2012</h2>
                                                    <p>가천의대길병원을 가천대 길병원으로 개칭<span>2012. 03.</span></p>
                                                    <p>가천대학교 출범 (가천의과학대학교·경원대학교 통합)<span>2012. 03.</span></p>
                                                    <p>가천대학교 하와이 가천글로벌센터 개관<span>2012. 02.</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history2.png" alt="">
                                        </div>
                                    </div>
                                    <div class="history_sec left mo">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history2.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2013</h2>
                                                    <p>가천뇌과학연구소 세계최초 ‘뇌신경 지도’ 제작<span>2013. 05.</span></p>
                                                </li>
                                                <li>
                                                    <h2>2012</h2>
                                                    <p>가천의대길병원을 가천대 길병원으로 개칭<span>2012. 03.</span></p>
                                                    <p>가천대학교 출범 (가천의과학대학교·경원대학교 통합)<span>2012. 03.</span></p>
                                                    <p>가천대학교 하와이 가천글로벌센터 개관<span>2012. 02.</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>                                    
                                    <div class="history_sec left">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history3.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2011</h2>
                                                    <p><span>2011. 07.</span>가천의과학대학교·경원대학교 통합승인</p>
                                                    <p><span>2011. 03.</span>가천의대길병원 암센터 개원</p>
                                                </li>
                                                <li>
                                                    <h2>2010</h2>
                                                    <p><span>2010. 10.</span>국내최초 인공지능 ‘왓슨’ 도입</p>
                                                    <p><span>2010. 09.</span>경인일보 신사옥 기공식</p>
                                                    <p><span>2010. 03.</span>가천의과대학교 약학대학 설립인가 획득</p>
                                                    <p><span>2010. 02.</span>가천뇌건강센터 JCI 인증</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div id="tab-4" class="tab-content">
                                    <div class="history_sec left">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history1.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2019</h2>
                                                    <p><span>2019. 06.</span>가천대 국내최초 인공지능학과 신설</p>
                                                </li>
                                                <li>
                                                    <h2>2016</h2>
                                                    <p><span>2016. 06.</span>국내최초 인공지능 ‘왓슨’ 도입</p>
                                                    <p><span>2016. 06.</span>가천이길여산부인과기념관 개관</p>
                                                </li>
                                                <li>
                                                    <h2>2015</h2>
                                                    <p><span>2015. 05.</span>가천누리 개소</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="history_sec right pc">
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2013</h2>
                                                    <p>가천뇌과학연구소 세계최초 ‘뇌신경 지도’ 제작<span>2013. 05.</span></p>
                                                </li>
                                                <li>
                                                    <h2>2012</h2>
                                                    <p>가천의대길병원을 가천대 길병원으로 개칭<span>2012. 03.</span></p>
                                                    <p>가천대학교 출범 (가천의과학대학교·경원대학교 통합)<span>2012. 03.</span></p>
                                                    <p>가천대학교 하와이 가천글로벌센터 개관<span>2012. 02.</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history2.png" alt="">
                                        </div>
                                    </div>
                                    <div class="history_sec left mo">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history2.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2013</h2>
                                                    <p>가천뇌과학연구소 세계최초 ‘뇌신경 지도’ 제작<span>2013. 05.</span></p>
                                                </li>
                                                <li>
                                                    <h2>2012</h2>
                                                    <p>가천의대길병원을 가천대 길병원으로 개칭<span>2012. 03.</span></p>
                                                    <p>가천대학교 출범 (가천의과학대학교·경원대학교 통합)<span>2012. 03.</span></p>
                                                    <p>가천대학교 하와이 가천글로벌센터 개관<span>2012. 02.</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>                                    
                                    <div class="history_sec left">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history3.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2011</h2>
                                                    <p><span>2011. 07.</span>가천의과학대학교·경원대학교 통합승인</p>
                                                    <p><span>2011. 03.</span>가천의대길병원 암센터 개원</p>
                                                </li>
                                                <li>
                                                    <h2>2010</h2>
                                                    <p><span>2010. 10.</span>국내최초 인공지능 ‘왓슨’ 도입</p>
                                                    <p><span>2010. 09.</span>경인일보 신사옥 기공식</p>
                                                    <p><span>2010. 03.</span>가천의과대학교 약학대학 설립인가 획득</p>
                                                    <p><span>2010. 02.</span>가천뇌건강센터 JCI 인증</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div id="tab-5" class="tab-content">
                                    <div class="history_sec left">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history1.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2019</h2>
                                                    <p><span>2019. 06.</span>가천대 국내최초 인공지능학과 신설</p>
                                                </li>
                                                <li>
                                                    <h2>2016</h2>
                                                    <p><span>2016. 06.</span>국내최초 인공지능 ‘왓슨’ 도입</p>
                                                    <p><span>2016. 06.</span>가천이길여산부인과기념관 개관</p>
                                                </li>
                                                <li>
                                                    <h2>2015</h2>
                                                    <p><span>2015. 05.</span>가천누리 개소</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="history_sec right pc">
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2013</h2>
                                                    <p>가천뇌과학연구소 세계최초 ‘뇌신경 지도’ 제작<span>2013. 05.</span></p>
                                                </li>
                                                <li>
                                                    <h2>2012</h2>
                                                    <p>가천의대길병원을 가천대 길병원으로 개칭<span>2012. 03.</span></p>
                                                    <p>가천대학교 출범 (가천의과학대학교·경원대학교 통합)<span>2012. 03.</span></p>
                                                    <p>가천대학교 하와이 가천글로벌센터 개관<span>2012. 02.</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history2.png" alt="">
                                        </div>
                                    </div>
                                    <div class="history_sec left mo">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history2.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2013</h2>
                                                    <p>가천뇌과학연구소 세계최초 ‘뇌신경 지도’ 제작<span>2013. 05.</span></p>
                                                </li>
                                                <li>
                                                    <h2>2012</h2>
                                                    <p>가천의대길병원을 가천대 길병원으로 개칭<span>2012. 03.</span></p>
                                                    <p>가천대학교 출범 (가천의과학대학교·경원대학교 통합)<span>2012. 03.</span></p>
                                                    <p>가천대학교 하와이 가천글로벌센터 개관<span>2012. 02.</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>                                    
                                    <div class="history_sec left">
                                        <div class="img">
                                            <img src="${pageContext.request.contextPath }/assets/images/history3.png" alt="">
                                        </div>
                                        <div class="txt">
                                            <ul>
                                                <li>
                                                    <h2>2011</h2>
                                                    <p><span>2011. 07.</span>가천의과학대학교·경원대학교 통합승인</p>
                                                    <p><span>2011. 03.</span>가천의대길병원 암센터 개원</p>
                                                </li>
                                                <li>
                                                    <h2>2010</h2>
                                                    <p><span>2010. 10.</span>국내최초 인공지능 ‘왓슨’ 도입</p>
                                                    <p><span>2010. 09.</span>경인일보 신사옥 기공식</p>
                                                    <p><span>2010. 03.</span>가천의과대학교 약학대학 설립인가 획득</p>
                                                    <p><span>2010. 02.</span>가천뇌건강센터 JCI 인증</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>                                                                                       
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

