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
	
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/news_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>뉴스레터</h2>
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
                        <li>알림/참여</li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>뉴스레터</li>
                    </ul>
                </div>
                <div class="board">
                    <div class="search_box">
                        <select class="white" name="" id="">
                            <option value="">전체</option>
                        </select>
                        <div class="search">
                            <input type="text" placeholder="검색어를 입력해 주세요.">
                            <button type="submit"><img src="${pageContext.request.contextPath }/assets/images/i_search_b.png" alt=""></button>
                        </div>
                    </div>
                    <div class="image_board ">
                        <!-- 탭창  -->
                        <ul class="tabs type4">
                            <li class="tab-link current" data-tab="tab-1">2022년</li>
                            <li class="tab-link" data-tab="tab-2">2021년</li>
                            <li class="tab-link" data-tab="tab-3">2020년</li>
                            <li class="tab-link" data-tab="tab-4">2019년</li>
                        </ul>
                    
                        <div id="tab-1" class="tab-content current">
                            <ul class="list">
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>     
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>  
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>    
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>                                                                                                                                                                                                                          
                            </ul>
                        </div>
                        <div id="tab-2" class="tab-content ">
                            <ul class="list">
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li> 
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>     
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>  
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>                                                                                                                                                                                                                             
                            </ul>
                        </div>
                        <div id="tab-3" class="tab-content ">
                            <ul class="list">
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li> 
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>     
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>  
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>                                                                                                                                                                                                                             
                            </ul>
                        </div>
                        <div id="tab-4" class="tab-content ">
                            <ul class="list">
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li> 
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>     
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>  
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath }/services/news/news3_detail">
                                        <div class="img_box">
                                            <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/monthly.png) no-repeat center center; background-size: cover;"></div>
                                        </div>
                                        <div class="txt_box">
                                            <h5>가천문화재단 뉴스레터</h5>
                                            <p>2019년 12월호</p>
                                        </div>
                                    </a>
                                </li>                                                                                                                                                                                                                             
                            </ul>
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

                    <div class="subscribe" style="background: url(${pageContext.request.contextPath }/assets/images/subscribe.png) no-repeat center center; background-size: cover;">
                        <h2><span>뉴스레터</span> 구독신청</h2>
                        <a href="#">구독 신청하기</a>
                    </div>
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

