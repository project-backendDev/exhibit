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
                <h2>자원봉사</h2>
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
                        <li>자원봉사</li>
                    </ul>
                </div>
                <div class="top_img">
                    <img src="${pageContext.request.contextPath }/assets/images/news5_img.png" alt="">
                </div>                 
                <div class="desc_box">
                   
                    <p>
                        가천이길여산부인과기념관은 청소년들의 이타심의 실현과 자기실현의 성취를 돕기 위하여 자원봉사활동을 운영하고 있습니다.<br/>
                        청소년들의 많은 관심과 참여 바랍니다.
                    </p>                 
                </div>
                <div class="information">
               
                    <ul class="list type2">  
                        <li>


                            <div class="table type2 mt-30">
                                <table>
                                    <tbody>
                                        <tr>
                                            <th>
                                                <p>지원자격</p>
                                            </th>
                                            <td>
                                                <p>
                                                    중, 고등학생(청소년)
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>
                                                <p>활동시간</p>
                                            </th>
                                            <td>
                                                <p>
                                                    화 ~ 일요일 (오전 : 9시 ~ 12시 / 오후 1시 ~ 5시)
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>
                                                <p>활동내용</p>
                                            </th>
                                            <td>
                                                <p>
                                                    전시실 관람 안내, 질서유지, 정리정돈
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>
                                                <p>봉사혜택</p>
                                            </th>
                                            <td>
                                                <p>
                                                    자원봉사 시간 인증 발급
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>
                                                <p>신청방법</p>
                                            </th>
                                            <td>
                                                <p>
                                                    1365 자원봉사포털을 통한 온라인 접수 
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>
                                                <p>기타문의</p>
                                            </th>
                                            <td>
                                                <p>
                                                    자원봉사 담당자  Tel. 032-770-1355
                                                </p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>                             
                        </li>                                                            
                    </ul>
                    <div class="apply_btn">
                        <a href="https://www.youth.go.kr/youth/dvl/ey/fcltyGrp/vlntwkActFcltyGrpDtl.yt?curMenuSn=1592&kFcltyGrpSn=56159" target="_blank">
                            자원봉사 신청하기
                        </a>
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

