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
	
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/infromation_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>관람 안내</h2>
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
                        <li>관람 안내</li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>관람안내</li>
                    </ul>
                </div>
                <div class="information">
                    <ul class="list type2">
                        <li>
                            <div class="title">
                                <h3>
                                    운영 시간
                                </h3>
                            </div>

                            <div class="table type1">
                                <table>
                                    <tbody>
                                        <tr>
                                            <th>
                                                <p>개관 시간</p>
                                            </th>
                                            <td>
                                                <p>
                                                    오전 9시 ~ 오후5시
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>
                                                <p>관람료</p>
                                            </th>
                                            <td>
                                                <p>
                                                    무료
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>
                                                <p>문의</p>
                                            </th>
                                            <td>
                                                <p>
                                                    032)770-1355
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>
                                                <p>운영일</p>
                                            </th>
                                            <td>
                                                <p>
                                                    화요일 ~ 일요일 (월요일 휴무)
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>
                                                <p>주소</p>
                                            </th>
                                            <td>
                                                <p>
                                                    인천광역시 중구 우현로 90번길 19-4
                                                </p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </li>   
                        <li>
                            <div class="title">
                                <h3>
                                    관람 시 유의사항
                                </h3>
                            </div>

                            <div class="table type1 type1_1">
                                <table>
                                    <tbody>
                                        <tr>
                                            <th>
                                                <p>
                                                    <span>·</span>  20인 이상 단체관람은 관람일 일주일 이전에 미리 예약해주시기 바랍니다.<br/>
                                                    <span>·</span>  안내견 이외의 반려동물의 출입은 금지되어 있습니다.<br/>
                                                    <span>·</span>  방송 목적의 촬영은 사전허가가 필요합니다.
                                                </p>
                                            </th>
                                        </tr>
                                    </tbody>
                                </table>
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

