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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/main.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/swiper/css/swiper.css">
	<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

	<!--[if IE]>
		<script type="text/javascript">
			 var console = { log: function() {} };
		</script>
	<![endif]-->

	<!-- 달력 ui -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
	<!-- aos 애니메이션 -->
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	

	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/swiper/js/swiper.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/scripts/script.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- <script type="text/javascript" src="examples.js"></script> -->

	<script src="https://www.youtube.com/iframe_api"></script><!-- 아래 원문에서 복잡하게 기술되었던 부분 -->
	<script>
		var player;
		function onYouTubeIframeAPIReady(){
			player = new YT.Player('player',{
			width:'100%',
			height:'100%',
			videoId:'u9CTzlNNsLc',
			playerVars:{'autoplay':1,'playsinline':1},
			events:{ 'onReady':onPlayerReady }
		});
		}
			function onPlayerReady(e){
			e.target.mute();
			e.target.playVideo();
		}
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


	<div class="intro" id="popup_layer">
		<div class="video-background">
			<div class="video-foreground">
				<div id="player"></div>
				<!-- <iframe id="player" width="100%" height="100%" src="https://www.youtube.com/embed/u9CTzlNNsLc?rel=0&autoplay=1&mute=1&loop=1&playlist=u9CTzlNNsLc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> -->
			  </div>
		</div>
		<a class="skip " href="#" onclick="closeToday();">
			SKIP
		</a>
	</div>	

	<div id="contents">
		<div class="section" id="section0">
			<!-- Swiper -->
			<div class="swiper visu_slide">
				<div class="swiper-wrapper">
					<div class="swiper-slide " style="background: url(${pageContext.request.contextPath }/assets/images/main1.png) no-repeat center center; background-size: cover;">
						<div class="wrap">
							<!-- <div class="shadow"></div> -->
							<div class="slide_txt">
								<h3>
									보증금 없는 병원
								</h3>
								<h4>
									그 시절, 병원 문턱은 너무 높았다. <br class="mo_only"/>미리 보증금을 내지 않으면 진료도 입원도 받아주지 않았다.<br/>
									그래서 생각했다. ‘돈이 없어 병을 고치지 못하고, 안타깝게 희생당하는 일은 없어야 한다.<br/>
									누구든 병원에 와서 치료받고 수술하고 입원할 수 있어야 한다.<br/>
									돈보다 목숨 아닌가?’ 간판으로 써 붙인 ‘보증금 없는 병원’ 은 그렇게 탄생했다.<br/>
								</h4>
							</div>
						</div>
					</div>
					<div class="swiper-slide " style="background: url(${pageContext.request.contextPath }/assets/images/main2.jpg) no-repeat center center; background-size: cover;">
						<div class="wrap">
							<!-- <div class="shadow"></div> -->
							<div class="slide_txt">
								<h3>
									환자와 함께 울고 웃다
								</h3>
								<h4>
									병원이 단순히 질병을 치료하는 곳이 아닌 환자의 가정에 행복과 평안, 웃음을 주는 곳이어야 한다.<br/> 
									병실에 누워있는 환자를 진료할 때면<br class="mo_only"/> 몸으로 직접 안아서 일으켰다. <br/>
									위로하는 뜻에서, 그리고 친밀감을주기 위해 시작한 일이다. <br/>
									그러나 ‘안아 일으키기’가 너무도 정확한 진찰이라는 사실을 깨달았다. <br/>
									‘환자가 아프면 나도 따라 아팠고, 환자가 슬프면 나도 같이 슬펐으며, <br class="pc_only"/>
									환자가 기쁘면 나도 덩달아 기뻤다. <br/>
									나에게 병원은 이렇듯 환자들과 희로애락을 함께 나누는 소(小)우주였다’									
								</h4>
							</div>
						</div>
					</div>
					<div class="swiper-slide " style="background: url(${pageContext.request.contextPath }/assets/images/main3.jpg) no-repeat center 80%; background-size: cover;">
						<div class="wrap">
							<!-- <div class="shadow"></div> -->
							<div class="slide_txt">
								<h3>
									미역국에 담긴 ‘고객감동’의 정신
								</h3>
								<h4>
									병원에서는 언제나 한 솥 가득<br class="mo_only"/> 미역국이 부글부글 끓고 있었다. <br/>
									이길여 산부인과의 미역국은 그 맛을<br class="mo_only"/> 모르는 사람이 없을 정도로 유명했다. <br/>
									퇴원 후에도 그 맛을 잊지 못해 냄비를 들고 찾아오는 사람들조차 있었다.<br/>
									환자도 가족들도 그 추억의 맛을 잊지 못한다. <br/>
									돌이켜보면 특별할 것 없는<br class="mo_only"/> 지극히 평범한 미역국일 뿐이었다.<br/>
									무엇이 그 보통 미역국을 사람들을 감동시킨 명물로 소문나게 한 것일까?<br/>
									한결같이 환자만을 생각하며 정성을 다한<br class="mo_only"/> 마음으로 미역국을 끊여냈기 때문일 것이다.
									
								</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-pagination swiper-pagination1"></div>
			</div> 
			<div class="sec_bottom">
				<div class="wrap">
					<ul>
						<li>
							<a href="${pageContext.request.contextPath }/information1"><i><img src="${pageContext.request.contextPath }/assets/images/i_preview.png" alt=""></i>관람안내</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/information4"><i><img src="${pageContext.request.contextPath }/assets/images/i_location.png" alt=""></i>오시는길</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/exhibition6"><i><img src="${pageContext.request.contextPath }/assets/images/i_vr.png" alt=""></i>VR 전시실</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- section1 -->
		<section class="section" id="section1">
			<div class="wrap">
				<div class="sec_head">
					<h2>전시실 둘러보기</h2>
				</div>
				<div class="sec_top">
					<div class="sec_box_slide">
						<!-- Swiper -->
						<div class="swiper sec1_slide" data-aos="zoom-in" data-aos-once="true" data-aos-duration="1000">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<div class="slide_con" style="background: url();">
										<img src="${pageContext.request.contextPath }/assets/images/sec1_img1.png" alt="">
									</div>
								</div>				
								<div class="swiper-slide">
									<div class="slide_con" style="background: url();">
										<img src="${pageContext.request.contextPath }/assets/images/sec1_img1.png" alt="">
									</div>
								</div>					
							</div>
							<div class="swiper-button-next swiper-button-next2"></div>
							<div class="swiper-button-prev swiper-button-prev2"></div>
						</div>
					</div>
				</div>
				<div class="sec_bottom">
					<ul class="gallery">
						<li data-aos="fade-up" data-aos-once="true" data-aos-duration="1000">
							<a href="${pageContext.request.contextPath }/exhibition2" style="background: url(${pageContext.request.contextPath }/assets/images/preview_1.png) no-repeat center center;">
								<div class="bg"></div>
								<h5>1 전시실</h5>
								<p>관람하기 <i><img src="${pageContext.request.contextPath }/assets/images/i_view.png" alt=""></i></p>
							</a>
						</li>
						<li data-aos="fade-up" data-aos-once="true" data-aos-duration="1000" data-aos-delay="100">
							<a href="${pageContext.request.contextPath }/exhibition3" style="background: url(${pageContext.request.contextPath }/assets/images/preview_2.png) no-repeat center center;">
								<div class="bg"></div>
								<h5>2 전시실</h5>
								<p>관람하기 <i><img src="${pageContext.request.contextPath }/assets/images/i_view.png" alt=""></i></p>
							</a>
						</li>
						<li data-aos="fade-up" data-aos-once="true" data-aos-duration="1000" data-aos-delay="200">
							<a href="${pageContext.request.contextPath }/exhibition4" style="background: url(${pageContext.request.contextPath }/assets/images/preview_3.png) no-repeat center center;">
								<div class="bg"></div>
								<h5>3 전시실</h5>
								<p>관람하기 <i><img src="${pageContext.request.contextPath }/assets/images/i_view.png" alt=""></i></p>
							</a>
						</li>
						<li data-aos="fade-up" data-aos-once="true" data-aos-duration="1000" data-aos-delay="300">
							<a href="${pageContext.request.contextPath }/exhibition5" style="background: url(${pageContext.request.contextPath }/assets/images/preview_4.png) no-repeat center center;">
								<div class="bg"></div>
								<h5>주요 전시물</h5>
								<p>관람하기 <i><img src="${pageContext.request.contextPath }/assets/images/i_view.png" alt=""></i></p>
							</a>
						</li>
					</ul>
					<div class="info">
						<h2>기념관 운영안내</h2>
						<ul>
							<li>
								<p><span>운영시간</span> : 09:00 ~ 17:00</p>
							</li>
							<li>
								<p><span>휴관일</span> : 매주 월요일 휴관</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<!-- section2 -->
		<section class="section" id="section2">
			<div class="wrap">
				<div class="sec_head">
					<h2>예약·신청</h2>
				</div>
			</div>
			<div class="sec_con" style="background: url(${pageContext.request.contextPath }/assets/images/sec2_bg.png) no-repeat center center;">
				<div class="wrap">
					<div class="g_bg">
						<img src="${pageContext.request.contextPath }/assets/images/g_bg.png" alt="">
					</div>					
					<!-- Swiper -->
					<div class="swiper sec2_slide" data-aos="fade-up" data-aos-once="true" data-aos-duration="1000">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="slide_con" style="background: url();">
									<div class="left" style="background: url(${pageContext.request.contextPath }/assets/images/sec2_slide_img1.png) no-repeat center center;">
									</div>
									<div class="right" style="background: url(${pageContext.request.contextPath }/assets/images/sec2_slide_bg.png) no-repeat center center;">
										<div class="bg"></div>
										<div class="txt">
											<h5>단체 관람 신청</h5>
											<p>
												이길여 산부인과 기념관 단체 관람을 위해<br/>
												사전 예약이 필요합니다.<br/><br/>						
											</p>
											<a class="btn1" href="${pageContext.request.contextPath }/information2">신청하기</a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="slide_con" style="background: url();">
									<div class="left" style="background: url(${pageContext.request.contextPath }/assets/images/sec2_slide_img2.jpg) no-repeat center center;">
									</div>
									<div class="right" style="background: url(${pageContext.request.contextPath }/assets/images/sec2_slide_bg.png) no-repeat center center;">
										<div class="bg"></div>
										<div class="txt">
											<h5>자원봉사 신청</h5>
											<p>
												가천 이길여산부인과 기념관은 <br/>
												청소년 자원봉사 터전(Dovol) <br/>
												인증기관입니다.
																					
											</p>
											<a class="btn1" href="${pageContext.request.contextPath }/news5">신청하기</a>
										</div>
									</div>
								</div>
							</div>							
						</div>
						<div class="swiper-pagination swiper-pagination3"></div>
					</div>
				</div>
			</div>
		</section>
		<!-- section3 -->
		<section class="section" id="section3">
			<div class="wrap">
				<div class="sec_head left">
					<h2>Gachon <span>NEWS</span></h2>
				</div>
				<div class="sec_con">
					<div class="left" data-aos="fade-right" data-aos-once="true" data-aos-duration="1000" onclick="window.open('http://www.kyeongin.com/main/view.php?key=20220529010006176');" style="background: url(${pageContext.request.contextPath }/assets/images/sec3_img1.jpg) no-repeat center center; background-size: cover;">
						<div class="txt">
							<h2>
								사상·유행 담겨있는 잡지…
							</h2>
							<p>
								"창간호를 그냥 박물관 서고에 가둬둘 수는 없었습니다. 왜냐하면 창간호는 문화와 유행이 어떻게 변해왔고 또 변해갈 것인지 보여주는 세상의 '바로미터'이자 정신적 보물이기 때문입니다."
							</p>
						</div>
					</div>
					<div class="right" data-aos="fade-left" data-aos-once="true" data-aos-duration="1000">
						<ul>
							<li onclick="window.open('https://www.mk.co.kr/news/society/view/2022/02/178806/');">
								<div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/sec3_img2.jpg) no-repeat center center; background-size: cover;"></div>
								<div class="txt">
									<h5>
										"10년전 대학통합 결실…반도체<br class="pc_only"/> 인재에 집중"
									</h5>
									<p>
										"2025년엔 이공계 비율 60%"
										AI학과 신설하며 변화 주도
										성남시와 전문인력 양성 맞손
										학비무료·현장실습 등 뒷받침"
									</p>
								</div>
							</li>
							<li onclick="window.open('http://www.kyeongin.com/main/view.php?key=20220519010004280');">
								<div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/sec3_img3.jpg) no-repeat center center; background-size: cover;"></div>
								<div class="txt">
									<h5>
										이길여 가천길재단 회장의<br class="pc_only"/>
										'남다른 후배 사랑'
									</h5>
									<p>
										대야초 학생들, 서울 등으로 수학여행…모든 경비 후원 이길여 가천길재단 회장의 남다른 후배 사랑이 다시 한 번
									</p>
								</div>
							</li>
							<li onclick="window.open('https://www.joongang.co.kr/article/25031989');">
								<div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/sec3_img4.jpg) no-repeat center center; background-size: cover;"></div>
								<div class="txt">
									<h5>
										국내 첫 '배터리학과' 신설…"대학이<br class="pc_only"/>
										변화 못 따라가면 낡은 교육”
									</h5>
									<p>
										가천대에는 '국내 대학 최초' 타이틀을 달고 있는 학과가 여럿 있다. 2002년 국내 대학 최초로 소프트웨어 단과대학을 만들었고,
									</p>
								</div>
							</li>
							<li onclick="window.open('http://www.kyeongin.com/main/view.php?key=20211114010002549');">
								<div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/sec3_img5.jpg) no-repeat center center; background-size: cover;"></div>
								<div class="txt">
									<h5>
										대야초 개교 100주년,<br class="pc_only"/>
										'자랑스런 동문상' 이길여 회장
									</h5>
									<p>
										이길여 가천길재단 회장이 군산 대야초등학교 개교 100주년 기념식에서 '자랑스런 동문인 상'을 받았다.
									</p>
								</div>
							</li>
						</ul>
					</div>
				</div>				
			</div>

		</section>
		<!-- section4 -->
		<section class="section" id="section4">
			<!-- Swiper -->
			<div class="swiper sec4_slide">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<a href="${pageContext.request.contextPath }/foundation2">
							<div class="slide_con" style="background: url(${pageContext.request.contextPath }/assets/images/sec4_slide_bg1.png) no-repeat center center;">
								<div class="txt" >
									<h1>봉사(奉仕)</h1>
									<p>
										손을 비워서 마음을 채우면 행복합니다.<br/>
										봉사와 나눔이야말로 선진 사회의 ‘소금’입니다.<br/>
										가천미추홀청소년봉사단의 씩씩한 기상, ‘심청효행대상’에 빛나는<br class="pc_only"/>
										고결한 효성은 세상을 밝히는 봉사의 등불입니다.<br/>
										가천문화재단 가천박물관이 베푸는 문화 나눔이 훈훈하고<br class="pc_only"/>
										격조 높은 세상을 가꿉니다.									
									</p>
								</div>
							</div>
						</a>
					</div>
					<div class="swiper-slide">
						<a href="${pageContext.request.contextPath }/foundation2">
							<div class="slide_con" style="background: url(${pageContext.request.contextPath }/assets/images/sec4_slide_bg2.png) no-repeat center center;">
								<div class="txt">
									<h1 class="orange">박애(博愛)</h1>
									<p>
										그늘 진 곳, 소외된 삶들을 보살핍니다.<br/>
										'보증금 없는 병원’, ‘새생명 찾아주기 운동’,<br class="pc_only"/>
										해외심장병 어린이 무료수술, 의료 취약지 병원운영 등으로<br class="pc_only"/>
										   어려운 환경의 위태로운 생명을 사랑으로 돌봅니다.<br/>
										   낮은 데, 외딴 삶들을 외면하지 않는 것이 길병원 정신의 뿌리입니다.
									   
									</p>
								</div>
							</div>
						</a>

					</div>
					<div class="swiper-slide">
						<a href="${pageContext.request.contextPath }/foundation2">
							<div class="slide_con" style="background: url(${pageContext.request.contextPath }/assets/images/sec4_slide_bg3.png) no-repeat center center;">
								<div class="txt">
									<h1 class="blue">애국(愛國)</h1>
									<p>
										인재 양성이 ‘나라사랑의 시작이자 끝’입니다.<br/>
										사람이 바로 그 공동체의 미래입니다.<br/>
										글로벌 리더를 배출하고, 의료인재를 가꾸어내는 꿈이<br class="pc_only"/>
										가천대학교의 글로벌, 메디컬 두 캠퍼스에 담겨 있습니다.<br/>
										기초과학을 연구하는 ‘가천뇌과학연구원’, ‘이길여 암·당뇨연구원’은<br class="pc_only"/>
										21세기 초일류 코리아의 디딤돌입니다.
								
									</p>
								</div>
							</div>
						</a>			
					</div>
				</div>	
				<div class="swiper-button-next swiper-button-next4"></div>
				<div class="swiper-button-prev swiper-button-prev4"></div>
			</div>
		</section>	
		<!-- section5 -->
		<section class="section" id="section5">
			<div class="wrap">
				<div class="left" data-aos="fade-right" data-aos-once="true" data-aos-duration="1000">
					<div class="con_head">
						<h3>소식</h3>
						<!-- 버튼만 구현해놓음 -->
						<ul class="news_btn">
							<li>
								<input type="radio" name="news" id="news1" checked>
								<label for="news1">재단뉴스</label>
							</li>
							<li>
								<input type="radio" name="news" id="news2">
								<label for="news2">공지사항</label>
							</li>
							<li>
								<input type="radio" name="news" id="news3">
								<label for="news3">관람후기</label>
							</li>
						</ul>
						<div class="swiper_btn">
							<div class="swiper-button-prev swiper-button-prev5"></div>
							<div class="swiper-button-next swiper-button-next5"></div>
						</div>
					</div>					
				</div>
				<div class="right" data-aos="fade-left" data-aos-once="true" data-aos-duration="1000">
					<!-- Swiper -->
					<div class="swiper sec5_slide">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<a href="${pageContext.request.contextPath }/news1_detail">
									<div class="slide_con">
										<div class="txt">
											<h4>
												가천문화재단, '정월대보름<br/>
												오행시 짓기' 수상작 발표											
											</h4>
											<h5>
												지난달 7일부터 20여일 동안 진행된<br/>
												이번 공모는 '정월대보름' 다섯 글자에 소원을<br/>
												담은 오행시를 짓는 시민 참여행사였다.
											</h5>
											<p><i><img src="${pageContext.request.contextPath }/assets/images/i_arrow.png" alt=""></i>2022.03.21</p>
										</div>
									</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a href="${pageContext.request.contextPath }/news1_detail">
									<div class="slide_con">
										<div class="txt">
											<h4>
												이길여 총장 자서전 ‘아름다운 <br/>
												바람개비’ 아랍어판 출판										
											</h4>
											<h5>
												우리대학 이길여 총장 자서전 ‘아름다운 <br/>
												바람개비’ 아랍어판이 최근 출간됐다. <br/>
												아랍어판은 전 명지대 김종도 교수가 번역...
											</h5>
											<p><i><img src="${pageContext.request.contextPath }/assets/images/i_arrow.png" alt=""></i>2022.03.21</p>
										</div>
									</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a href="${pageContext.request.contextPath }/news1_detail">
									<div class="slide_con">
										<div class="txt">
											<h4>
												심장 6차례나 멎었던 중학생의 <br/>
												기적... 한 달 만에 건강하게 퇴원									
											</h4>
											<h5>
												급성 심근염으로 쓰러진 중학생이 6번의 <br/>
												심정지를 겪고도 건강을 회복해 화제다.<br/>
												21일 인천 길병원은 지난 1월 26일 응급실...
											</h5>
											<p><i><img src="${pageContext.request.contextPath }/assets/images/i_arrow.png" alt=""></i>2022.03.21</p>
										</div>
									</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a href="${pageContext.request.contextPath }/news1_detail">
									<div class="slide_con">
										<div class="txt">
											<h4>
												가천대, 비교과 통합관리<br/>
												프로그램 ‘윈드’ 운영										
											</h4>
											<h5>
												가천대는 학생들이 경험을 통해 배우<br/>
												며 사회에 기여하는 구성원으<br/>
												로 성장 할 수 있도록 교과활동
											</h5>
											<p><i><img src="${pageContext.request.contextPath }/assets/images/i_arrow.png" alt=""></i>2022.03.21</p>
										</div>
									</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a href="${pageContext.request.contextPath }/news1_detail">
									<div class="slide_con">
										<div class="txt">
											<h4>
												가천대, 비교과 통합관리<br/>
												프로그램 ‘윈드’ 운영										
											</h4>
											<h5>
												가천대는 학생들이 경험을 통해 배우<br/>
												며 사회에 기여하는 구성원으<br/>
												로 성장 할 수 있도록 교과활동
											</h5>
											<p><i><img src="${pageContext.request.contextPath }/assets/images/i_arrow.png" alt=""></i>2022.03.21</p>
										</div>
									</div>
								</a>
							</div>
						</div>	
					</div>
				</div>
			</div>
		</section>
		<!-- section6 -->
		<section class="section" id="section6" style="background: url(${pageContext.request.contextPath }/assets/images/sec6_bg.png) no-repeat center center;">
			<div class="bg"></div>
			<div class="wrap">
				<div class="sec_head">
					<h2>Gachon SNS</h2>
					<ul class="sns">
						<li>
							<a href="https://www.youtube.com/channel/UCO0FZPU4bLODaTN59eT2AzA" target="_blank">
								<img src="${pageContext.request.contextPath }/assets/images/sns1.png" alt="">
							</a>
						</li>
						<li>
							<a href="https://www.facebook.com/gachon1958" target="_blank">
								<img src="${pageContext.request.contextPath }/assets/images/sns2.png" alt="">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="${pageContext.request.contextPath }/assets/images/sns3.png" alt="">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="${pageContext.request.contextPath }/assets/images/sns4.png" alt="">
							</a>
						</li>
					</ul>
				</div>
				<ul class="sec_con">
					<li data-aos="fade-up" data-aos-once="true" data-aos-duration="1000">
						<a href="https://youtu.be/yUwvW6ukS-Q" target="_blank">
							<div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/sec6_img1.jpg) no-repeat center center; background-size: cover;"></div>
							<div class="txt">
								<h5><i><img src="${pageContext.request.contextPath }/assets/images/i_youtube.png" alt=""></i> YouTube</h5>
								<!-- 
									<h5><i><img src="${pageContext.request.contextPath }/assets/images/i_instagram.png" alt=""></i> INSTAGRAM</h5>
									<h5><i><img src="${pageContext.request.contextPath }/assets/images/i_blog.png" alt=""></i> BLOG</h5>
									<h5><i><img src="${pageContext.request.contextPath }/assets/images/i_facebook.png" alt=""></i> FACEBOOK</h5> 
								-->
								<p>
									통통배를 타고<br/>
									‘무료 진료 봉사’ 떠나는 의사																
								</p>
							</div>
						</a>
					</li>
					<li data-aos="fade-up" data-aos-once="true" data-aos-duration="1000" data-aos-delay="100">
						<a href="https://youtu.be/Fnyyq2q1aSc" target="_blank">
							<div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/sec6_img2.jpg) no-repeat center center; background-size: cover;"></div>
							<div class="txt">
								<h5><i><img src="${pageContext.request.contextPath }/assets/images/i_youtube.png" alt=""></i> YouTube</h5>
								<p>
									이길여 회장이 본<br/>
									1960년대 미국과 한국의 의료환경									
								</p>
							</div>
						</a>
					</li>
					<li data-aos="fade-up" data-aos-once="true" data-aos-duration="1000" data-aos-delay="200">
						<a href="https://youtu.be/5B91hxt6YE0" target="_blank">
							<div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/sec6_img3.jpg) no-repeat center center; background-size: cover;"></div>
							<div class="txt">
								<h5><i><img src="${pageContext.request.contextPath }/assets/images/i_youtube.png" alt=""></i> YouTube</h5>
								<p>
									이길여 회장이<br/>
									의사의 길을 선택한 이유									
								</p>
							</div>
						</a>
					</li>
					<li data-aos="fade-up" data-aos-once="true" data-aos-duration="1000" data-aos-delay="300">
						<a href="https://youtu.be/PUG5U_wJGeg" target="_blank">
							<div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/sec6_img4.jpg) no-repeat center center; background-size: cover;"></div>
							<div class="txt">
								<h5><i><img src="${pageContext.request.contextPath }/assets/images/i_youtube.png" alt=""></i> YouTube</h5>
								<p>
									KBS 한국 현대사 증언<br/>
									이길여 회장의 ‘어머니’
								</p>
							</div>
						</a>
					</li> 
				</ul>
			</div>
		</section>		
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
									<pre style=" overflow: auto; white-space: pre-wrap;">
										뉴스레터 문자 발송을 위한 최소한의 개인정보를 수집 및 이용합니다. 
										수집된 정보는 발송 외 다른 목적으로 이용되지 않으며, 서비스가 종료되거나 발송을 원하지 않을 경우 즉시 파기됩니다.
									</pre>
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
<script>
	AOS.init();
</script>

<script type="text/javascript">
	$(document).ready(function() {

		// //마우스 스크롤 잠금
		// $('html, body').css({'overflow': 'hidden', 'height': '100%'});
		// 	$('body').on('scroll touchmove mousewheel', function(event) {
		// 	event.preventDefault();
		// 	event.stopPropagation();
		// 	return false;
		// });


		setTimeout(function(){
			// $('body').off('scroll touchmove mousewheel');	//마우스 스크롤 잠금 해제
			$('.intro').remove();
			$("html, body").animate({scrollTop: 0}, 400);
		},126000)	
				
	});

	// 쿠키 생성
	function setCookie( name, value, expiredays ) {  // 쿠키저장
		var todayDate = new Date();  //date객체 생성 후 변수에 저장
		todayDate.setDate( todayDate.getDate() + expiredays ); 
		// 시간지정(현재시간 + 지정시간)
		document.cookie = name + "=" + value + "; path=/; expires=" + todayDate.toUTCString() + ";"
		//위 정보를 쿠키에 굽는다
	} 


	$(function(){
		// $(".popup_box").draggable({containment:'parent', scroll:false}); // 레이어 팝업 창 드래그 가능
		//{containment:'parent', scroll:false} 화면 영역 밖으로 드래그 안됌.
					
		if(document.cookie.indexOf("popToday3=close3") < 0 ){      // 쿠키 저장여부 체크
			document.getElementById("popup_layer").style.display = "block";
			}else {
			document.getElementById("popup_layer").style.display = "none"; 
			// $('body').off('scroll touchmove mousewheel');	//마우스 스크롤 잠금 해제
			}
		});
				
	//오늘하루만보기 닫기버튼 스크립트
	function closeToday() { 
		setCookie( "popToday3", "close3" , 1  ); 
		$("#popup_layer").css("display", "none");
		document.getElementById("popup_layer").style.display = "none";	
		// $('body').off('scroll touchmove mousewheel');//마우스 스크롤 잠금 해제
	}
    
	
</script>


<script>
    var swiper = new Swiper(".visu_slide", {
        loop : true, // 슬라이드 반복 여부

        autoplay : {  // 자동 슬라이드 설정 , 비 활성화 시 false
            delay : 5000,   // 시간 설정
            disableOnInteraction : false,  // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
        },
		// navigation: {
		// 	nextEl: ".swiper-button-next1",
		// 	prevEl: ".swiper-button-prev1",
		// },		
        pagination: {
          el: ".swiper-pagination1",
        },		
    });	

    var swiper = new Swiper(".sec1_slide", {
        loop : true, // 슬라이드 반복 여부
        effect : 'fade', // 페이드 효과 사용
        autoplay : {  // 자동 슬라이드 설정 , 비 활성화 시 false
            delay : 3000,   // 시간 설정
            disableOnInteraction : false,  // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
        },
		navigation: {
			nextEl: ".swiper-button-next2",
			prevEl: ".swiper-button-prev2",
		},	
    });

    var swiper = new Swiper(".sec2_slide", {
        loop : true, // 슬라이드 반복 여부
        effect : 'fade', // 페이드 효과 사용
        autoplay : {  // 자동 슬라이드 설정 , 비 활성화 시 false
            delay : 3000,   // 시간 설정
            disableOnInteraction : false,  // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
        },	
        pagination: {
          el: ".swiper-pagination3",
        },		
    });	
    var swiper = new Swiper(".sec4_slide", {
        loop : true, // 슬라이드 반복 여부

        autoplay : {  // 자동 슬라이드 설정 , 비 활성화 시 false
            delay : 5000,   // 시간 설정
            disableOnInteraction : false,  // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
        },
		navigation: {
			nextEl: ".swiper-button-next4",
			prevEl: ".swiper-button-prev4",
		},			
    });			

    var swiper = new Swiper(".sec5_slide", {
        slidesPerView: 4,
		// centeredSlides : true, // true시에 슬라이드가 가운데로 배치
        // autoplay : {  // 자동 슬라이드 설정 , 비 활성화 시 false
        //     delay : 3000,   // 시간 설정
        //     disableOnInteraction : false,  // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
        // },	
		navigation: {
			nextEl: ".swiper-button-next5",
			prevEl: ".swiper-button-prev5",
		},	
        // pagination: {
        //   el: ".swiper-pagination5",
        // },
        breakpoints : { // 반응형 설정이 가능 width값으로 조정
            420 : {
                slidesPerView : 1,
            },            
            900 : {
                slidesPerView : 1,
            },
                      
        }, 					
    });		

    var swiper = new Swiper(".footer_slide", {
        loop : true, // 슬라이드 반복 여부
        slidesPerView: 4,
        autoplay : {  // 자동 슬라이드 설정 , 비 활성화 시 false
            delay : 3000,   // 시간 설정
            disableOnInteraction : false,  // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
        },
		// navigation: {
		// 	nextEl: ".swiper-button-next3",
		// 	prevEl: ".swiper-button-prev3",
		// },
        breakpoints : { // 반응형 설정이 가능 width값으로 조정
            420 : {
                slidesPerView : 1,
                centeredSlides : true, // true시에 슬라이드가 가운데로 배치
            },            
            550 : {
                slidesPerView : 1,
                centeredSlides : true, // true시에 슬라이드가 가운데로 배치
            },
            1024 : {
                slidesPerView : 2,
                centeredSlides : false, // true시에 슬라이드가 가운데로 배치
            }, 
            1340 : {
                slidesPerView : 3,
                centeredSlides : true, // true시에 슬라이드가 가운데로 배치
            },                        
        }, 		
    });		

 	
</script>

