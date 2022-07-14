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
	
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/location_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>오시는 길 </h2>
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
                        <li>오시는 길 </li>
                    </ul>
                </div>
                <div class="information">
                    <ul class="list type2"> 
                        <li>
                            <div class="title">
                                <h3>
                                    위치
                                </h3>
                            </div>
                            <div class="location" style="background: url(${pageContext.request.contextPath }/assets/images/map.png) no-repeat center center; background-size: cover;">
                                <ul class="list">
                                    <li>
                                        <a href="http://naver.me/5VTDCcju" target="_blank"><img src="${pageContext.request.contextPath }/assets/images/naver.png" alt=""></a>
                                    </li>
                                    <li>
                                        <a href="https://goo.gl/maps/jt5AJjJ8BVUadip79" target="_blank"><img src="${pageContext.request.contextPath }/assets/images/google.png" alt=""></a>
                                    </li>
                                </ul>
                                <div class="info">
                                    <p><i><img src="${pageContext.request.contextPath }/assets/images/i_map.png" alt=""></i>인천광역시 중구 우현로 90번길 19-4 <button type="button" id="data-copy"><i><img src="${pageContext.request.contextPath }/assets/images/i_copy.png" alt=""></i>복사</button></p>
                                    <input id="data-area" value="인천광역시 중구 우현로 90번길 19-4" style=" position: absolute; z-index: -2; left: 0; top: 0;">
                                </div>
                            </div>
                        </li>
                        <script>
                            // 복사하기 버튼 클릭
                            $('#data-copy').click(function() {

                                // input에 담긴 데이터를 선택
                                $('#data-area').select();

                                //  clipboard에 데이터 복사
                                var copy = document.execCommand('copy');


                                // 사용자 알림
                                if(copy) {
                                    alert("주소가 복사되었습니다.");
                                }
                            });                     
                        </script>
                        <li>
                            <div class="title">
                                <h3>
                                    교통안내
                                </h3>
                            </div>

                            <div class="table type3">

                                <table>
                                    <thead>
                                      <tr>
                                        <th>지하철</th>
                                        <td colspan="2">지하철 1호선 동인천역 2번출구에서 지하상가 5, 6번출구로 나오신 후 걸어서 3분 거리에 위치</td>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <th rowspan="3">버스</th>
                                        <td rowspan="2">대한서림(동인천역) 하차</td>
                                        <td><span class="green">[좌석버스]</span> 105번(연수구-동인천-부평역), 111-1번(구 터미널-동인천-서구청-인천국제공항)</td>
                                      </tr>
                                      <tr>
                                        <td><span class="green">[버스]</span> 3번, 4번, 6번, 12번, 15번, 16번, 17번, 17-1번, 22번, 23번, 24번, 41번, 45번, 46번</td>
                                      </tr>
                                      <tr>
                                        <td>대한서림 맞은편(동인천역) 하차</td>
                                        <td><span class="green">[버스]</span> 3번, 46번, 15번</td>
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

