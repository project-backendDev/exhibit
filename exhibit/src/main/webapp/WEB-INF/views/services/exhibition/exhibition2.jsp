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
	
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition2_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>1층 전시실</h2>
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
                        <li>1층 전시실</li>
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
                                    인산인해를 이루던 대기실과 <br class="pc_only"/>
                                    따뜻한 진료의 현장
                                </h2>
                                <p>
                                    1960~70년대 '보증금 없는 병원'이라는 현판을 내걸고,  가난하고 어려운 서민들에게 <br class="pc_only"/>
                                    24시간 병원 문을 활짝 열어둔 '이길여 산부인과'의 1층 모습을 생생히 재현한 전시공간입니다.
                                </p>
                            </div>
                            <div class="exhibition">
                                <ul>
                                    <li>
                                        <a>
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition1.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>대기실</h5>
                                                    <p>
                                                        개원 직후, 이길여 회장은 평소 마음에 담아온 의료봉사 의지를 구체화 시습켰니다.<br/>
                                                        대가를 염두에 두지 않고 펼친 사랑의 인술은 쌀, 생선, 소금 등 환자들의 마음이 담긴<br class="pc_only"/>
                                                        선물로 되돌아와 병원마당에 가득 쌓여갔습니다.
                                                    </p>
                                                    
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition2.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>안내창구</h5>
                                                    <p>
                                                        이길여 회장은 의료 장벽을 허물고 병원 문턱을 낮추어 가능한 한 더 많은 환자들 돌보고자 했습니다.<br/>
                                                        이렇게 탄생한 '보증금 없는 병원'은 앞으로 전개될 인술봉사의 서막에 불과했습니다.
                                                    </p>
                                                    
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition3.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>진찰실</h5>
                                                    <p>
                                                        청진기의 금속성이 주는 선뜩한 기운이 환자를 놀라게 했습니다. <br/>
                                                        그래서 항상 청진기를 품속에 넣어 따뜻하게 덥혀서 환자를 맞았습니다. 불안한 마음으로 병원에 <br class="pc_only"/>
                                                        찾아온 환자들은, 가슴으로 전해지는 따스한 의사의 체온에 감동했습니다.
                                                    </p>
                                                    
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition4.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>진료실</h5>
                                                    <p>
                                                        미국 유학 시절부터 몸소 체험할 수 있었던 첨단의료기기의 가치. 당시로서는 고가의 발명품인  <br class="pc_only"/>
                                                        태아의 심장박동 소리를 들려주는 '초음파기기' 그리고 '자궁경부경' 등 환자들의 이해를 돕고 치료에  <br class="pc_only"/>
                                                        도움이 되는 의료기기에 아낌없이 투자했습니다.
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/exhibition5.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>엘리베이터</h5>
                                                    <p>
                                                        그 시절 인천에서 엘리베이터가 있는 병원은 이길여 산부인과 밖에 없었습니다.  <br/>
                                                        몸이 무거운 산모들은 계단을 오르내리는데 고통을 겪었습니다. 이들을 위한 인천 병원 최초의 엘리베이터는 <br class="pc_only"/>
                                                        주민들의 구경거리가 되고, 동네 개구쟁이들의 놀이터를 겸한 체험공간이 되었습니다.	
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

