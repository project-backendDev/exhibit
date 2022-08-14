<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

<script>
	function artclView(artcl_Seq){
		$("form[name=viewForm]").attr('action', '/newsletter/'+ artcl_Seq +'/artclView');
		$("form[name=viewForm]").submit();
	}
	
	$(document).ready(function() {
		$("#search_Btn").click(function() {
			$("#artclListForm").attr('action', '/newsletter/news3');
			$("#artclListForm").submit();
		});
	});
</script>

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
                    <form id="artclListForm" method="post">
	                    <div class="search_box">
							<input type="hidden" name="nowPage" value="${paging.nowPage}">
							<input type="hidden" name="cntPerPage" value="${paging.cntPerPage}">
							
							<select class="white" name="searchType" >
								<option value="1" <c:if test="${searchType eq '1' }">selected</c:if> >제목</option>
								<option value="2" <c:if test="${searchType eq '2' }">selected</c:if> >내용</option>
								<%-- <option value="3" <c:if test="${searchType eq '3' }">selected</c:if> >작성자</option> --%>
							</select>
						 	<div class="search">
								<input type="text" name="searchValue" value="${paging.searchValue }"> 
								<button type="submit" id="search_Btn"><img src="${pageContext.request.contextPath }/assets/images/i_search_b.png" alt=""></button>
							</div>
						</div>
                    </form>
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
	
	<!-- 모달 -->
    <div class="modal modal modal_step modal_step1 hidden">
        <div class="modal_overlay">
        </div>
		<form action="">
			<div class="modal_content modal_md scrollbar" style="overflow-y:scroll;">
				<div class="layoutCont">
					<div class="certiTxt">
						<div class="modalContWrap">
							<div class="modal_close cancerButton">
							  <img src="${pageContext.request.contextPath }/assets/images/close.png" alt="모달 닫기버튼">
							</div>   
							<div class="modal_con">
							  <div class="head">
								<div class="left">
									<h4>뉴스레터 신청</h4>
									<p>
										구독 신청을 하시면, 매달 문자로 재단의 소식이<br/>
										담겨있는 뉴스레터 링크를 보내드립니다.									
									</p>
								</div>
								<div class="right">
									<img src="${pageContext.request.contextPath }/assets/images/letter.png" alt="">
								</div>
							  </div>
							  <div class="modal_form">
								<div class="input_con default">
									<input type="text" placeholder="성명">
								</div>
								<div class="input_con default">
									<input type="text" placeholder="연락처">
								</div>
								<p><span>*</span>문자 수신이 가능한 휴대전화만 가능합니다.</p>
								<div class="input_con email">
									<input type="text" placeholder="이메일">
									<span>@</span>
									<select name="" id="">
                                        <option value="">선택</option>
                                        <option value="">naver.com</option>
                                        <option value="">daum.net</option>
                                        <option value="">gmail.com</option>
                                        <option value="">nate.com</option>
                                        <option value="">yahoo.com</option>
									</select>
								</div>
							  </div>
							  <div class="term">
								<h5><span>(필수)</span> 개인정보 수집 및 이용에 동의합니다.</h5>
								<div class="term_box">
									<pre style=" overflow: auto; white-space: pre-wrap;">뉴스레터 문자 발송을 위한 최소한의 개인정보를 수집 및 이용합니다. 
수집된 정보는 발송 외 다른 목적으로 이용되지 않으며, 서비스가 종료되거나 발송을 원하지 않을 경우 즉시 파기됩니다.</pre>
								</div>
								<ul class="list_wrap">
									<li>
										<input type="radio" name="agree2" id="agree3" checked="">
										<label for="agree3"><i><img src="${pageContext.request.contextPath }/assets/images/i_check.png" alt=""></i>동의합니다.</label>
									</li>
									<li>
										<input type="radio" name="agree2" id="agree4">
										<label for="agree4"><i><img src="${pageContext.request.contextPath }/assets/images/i_check.png" alt=""></i>동의하지 않습니다.</label>
									</li>
								</ul>                            
							</div>
							</div>
	
						</div>
						<div class="confirm_button">
							<button class="cancerButton agree" type="submit">뉴스레터 신청</button>
						</div>
					</div>           
				</div>
			</div>
		</form>

    </div>




</body>
</html>

