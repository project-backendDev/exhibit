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
                <h2>언론보도</h2>
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
                        <li>언론보도</li>
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
                    <div class="table type_board">
                        <h6>총 <span>81</span>건 검색되었습니다.</h6>
                        <table>
                            <tbody><tr>
                                <th style="width: 12%;">번호</th>
                                <th style="width: 50%;">제목</th>
                                <th style="width: 26%;">작성일</th>
                                <th style="width: 12%;">조회</th>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news2_detail"><p>가천대, 국내 10대·세계 100대 대학 도약 비전 선포</p><i class="i_new"><img src="${pageContext.request.contextPath }/assets/images/i_new.png" alt=""></i></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news2_detail"><p>가천대 통합 10년…</p><i class="i_new"><img src="${pageContext.request.contextPath }/assets/images/i_new.png" alt=""></i></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news2_detail"><p>이길여 가천대 총장 “10년內 글로벌 100대 대학으로 키우겠다”</p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news2_detail"><p>코로나19 확진 베트남 이주여성, 길병원서 아들 순산 감사 메시지</p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news2_detail"><p>뇌 영상 1만 배 선명하게</p><i class="i_new"><img src="${pageContext.request.contextPath }/assets/images/i_new.png" alt=""></i></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news2_detail"><p>가천대, 비교과 통합관리 프로그램 ‘윈드’ 운영</p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news2_detail"><p>심장 6차례나 멎었던 중학생의 기적... 한 달 만에 건강하게 퇴원</p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news2_detail"><p>가천문화재단, "정월대보름 오행시 짓기" 수상작 발표</p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news2_detail"><p>2021년 5월 석가탄신일 정상운영 안내</p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news2_detail"><p>이길여 총장 자서전 ‘아름다운 바람개비’ 아랍어판 출판</p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                        </tbody></table>
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

