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
                <h2>사연남기기</h2>
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
                        <li>사연남기기</li>
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
                                <td><a href="${pageContext.request.contextPath }/services/news/news4_detail"><p>뉴스피디아 <가천 이길여 산부인과 기념관을 찾아서></p><i class="i_new"><img src="${pageContext.request.contextPath }/assets/images/i_new.png" alt=""></i></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news4_detail"><p>인천시 인터넷신문 i-view <1960년대 산부인과는 어땠을까?></p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news4_detail"><p>KFM경기방송 모닝와이드 <인천에 산부인과 기념관이 있다></p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news4_detail"><p>인천시 공식블로그가 소개하는 가천 이길여 산부인과 기념관 -1960년대 산부인과는 어땠을까?</p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news4_detail"><p>인천 가볼만한 곳! 이길여 산부인과 기념관 (1층)</p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news4_detail"><p>60년대 산부인과의 모습을 재현한 기념관</p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news4_detail"><p>여름방학에 가볼 만한 곳! 가천 이길여 산부인과 기념관</p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news4_detail"><p>1,000년에 한 번 나타날까한 이길여 박사님</p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news4_detail"><p>원장님 감사합니다. 정말 감사합니다.</p></a></td>
                                <td>2022-00-00</td>
                                <td>589</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><a href="${pageContext.request.contextPath }/services/news/news4_detail"><p>여름방학에 가볼 만한 곳! 가천 이길여 산부인과 기념관</p></a></td>
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
                <div class="apply_btn bordernone">
                    <a href="${pageContext.request.contextPath }/services/news/news4_write">
                        글쓰기
                    </a>
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

