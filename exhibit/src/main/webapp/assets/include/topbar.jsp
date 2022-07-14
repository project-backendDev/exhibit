<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div class="header_top">
			<ul class="left">
				<li>
					<a href="http://gachongil.com/" target="_blank">가천길재단</a>
				</li>
				<li>|</li>
				<li>
					<a href="http://www.gachon.or.kr/" target="_blank">가천문화재단</a>
				</li>
				<li>|</li>
				<li>
					<a href="http://www.gcmuseum.org/" target="_blank">가천박물관</a>
				</li>
			</ul>
			<ul class="right">
				<li>
					<a href="https://www.youtube.com/channel/UCO0FZPU4bLODaTN59eT2AzA" target="_blank">유튜브</a>
				</li>
				<li>|</li>
				<li>
					<a href="https://www.facebook.com/gachon1958" target="_blank">페이스북</a>
				</li>
			</ul>			
		</div>
		<div class="header_bottom">
			<div class="logo">
				<a href="${pageContext.request.contextPath }/">
					<img src="${pageContext.request.contextPath }/assets/images/logo.png" alt="">
				</a>
			</div>
			<nav class="gnb pc_only">
				<ul>
					<li>
						<a href="${pageContext.request.contextPath }/services/introduce/introduce1_1.jsp">소개</a>
						<div class="depth2">
							<ul>
								<li>
									<a href="${pageContext.request.contextPath }/services/introduce/introduce1_1.jsp">설립자 소개</a>
									<div class="depth3">
										<ul>
											<li>
												<a href="${pageContext.request.contextPath }/services/introduce/introduce1_1.jsp">인사말</a>
											</li>
											<li>
												<a href="${pageContext.request.contextPath }/services/introduce/introduce1_2.jsp">가천이란</a>
											</li>
											<li>
												<a href="${pageContext.request.contextPath }/services/introduce/introduce1_3.jsp">프로필</a>
											</li>
										</ul>
									</div>
								</li>
								<li><a href="${pageContext.request.contextPath }/services/introduce/introduce2.jsp">설립 목적</a></li>
								<li><a href="${pageContext.request.contextPath }/services/introduce/introduce3.jsp">언론에 비친 기념관</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/services/exhibition/exhibition1.jsp">전시 공간</a>
						<div class="depth2">
							<ul>
								<li><a href="${pageContext.request.contextPath }/services/exhibition/exhibition1.jsp">외부전경</a></li>
								<li><a href="${pageContext.request.contextPath }/services/exhibition/exhibition2.jsp">1층 전시실</a></li>
								<li><a href="${pageContext.request.contextPath }/services/exhibition/exhibition3.jsp">2층 전시실</a></li>
								<li><a href="${pageContext.request.contextPath }/services/exhibition/exhibition4.jsp">3층 전시실</a></li>
								<li><a href="${pageContext.request.contextPath }/services/exhibition/exhibition5.jsp">주요 전시물</a></li>
								<li><a href="${pageContext.request.contextPath }/services/exhibition/exhibition6.jsp">VR관람</a></li>
							</ul>
						</div>						
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/information1">관람 안내</a>
						<div class="depth2">
							<ul>
								<li><a href="${pageContext.request.contextPath }/information1">관람 안내</a></li>
								<li><a href="${pageContext.request.contextPath }/information2">단체관람 예약</a></li>
								<li><a href="${pageContext.request.contextPath }/information3">자주 묻는 질문</a></li>
								<li><a href="${pageContext.request.contextPath }/information4">오시는 길</a></li>
							</ul>
						</div>							
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/services/news/news1.jsp">알림/참여</a>
						<div class="depth2">
							<ul>
								<li><a href="${pageContext.request.contextPath }/services/news/news1.jsp">공지사항</a></li>
								<li><a href="${pageContext.request.contextPath }/services/news/news2.jsp">언론보도</a></li>
								<li><a href="${pageContext.request.contextPath }/services/news/news3.jsp">뉴스레터</a></li>
								<li><a href="${pageContext.request.contextPath }/services/news/news4.jsp">사연남기기</a></li>
								<li><a href="${pageContext.request.contextPath }/services/news/news5.jsp">자원봉사</a></li>
							</ul>
						</div>	
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/services/foundation/foundation1.jsp">가천길재단</a>
						<div class="depth2">
							<ul>
								<li><a href="${pageContext.request.contextPath }/services/foundation/foundation1.jsp">재단현황</a></li>
								<li><a href="${pageContext.request.contextPath }/services/foundation/foundation2.jsp">재단이념</a></li>
								<li><a href="${pageContext.request.contextPath }/services/foundation/foundation3.jsp">재단연혁</a></li>
							</ul>
						</div>							
					</li>
				</ul>
			</nav>
			<div class="blank pc_only">
				<img src="${pageContext.request.contextPath }/assets/images/blank.png" alt="">
			</div>			
			<div class="gnb_right mo_only">
				<ul class="">
					<li>
						<div class="ico toggle-side-bar-btn menu_btn">
							<div></div>
							<div></div>
							<div></div>
						</div> 
						<div class="menu">
							<div class="menu_close menu_btn">
								<img src="${pageContext.request.contextPath }/assets/images/close.png" alt="">
							</div>
							<div class="menu_logo">
								<a href="${pageContext.request.contextPath }/index.jsp">
									<img src="${pageContext.request.contextPath }/assets/images/logo.png" alt="">
								</a>
							</div>
							<!-- <ul class="lnb"> 
								<li><a href="${pageContext.request.contextPath }/services/login.jsp">로그인</a></li>
								<li><a href="${pageContext.request.contextPath }/services/agree_term.jsp">회원가입</a></li>
								<li><a href="${pageContext.request.contextPath }/services/my.jsp">마이페이지</a></li>
								<li><a href="${pageContext.request.contextPath }/services/notice.jsp">공지사항</a></li>
								<li><a href="${pageContext.request.contextPath }/services/faq.jsp">FAQ</a></li>
								<li><a href="${pageContext.request.contextPath }/services/quick_reserv.jsp">예약신청</a></li>
							</ul> -->
							<div class="menu_list">
								<div id="Accordion_wrap">
									<div class="que">
										<a>소개</a>
									</div>
									<div class="anw">
										<span>
											<a>설립자 소개</a>
											<ul>
												<li><a href="${pageContext.request.contextPath }/services/introduce/introduce1_1.jsp">인사말</a></li>
												<li><a href="${pageContext.request.contextPath }/services/introduce/introduce1_2.jsp">가천이란</a></li>
												<li><a href="${pageContext.request.contextPath }/services/introduce/introduce1_3.jsp">프로필</a></li>
											</ul>
										</span>
										<span><a href="${pageContext.request.contextPath }/services/introduce/introduce2.jsp">설립목적</a></span>
										<span><a href="${pageContext.request.contextPath }/services/introduce/introduce3.jsp">언론에 비친 기념관</a></span>
									</div>
									<div class="que">
										<a>전시 공간</a>
									</div>
									<div class="anw">
										<span><a href="${pageContext.request.contextPath }/services/exhibition/exhibition1.jsp">외부전경</a></span>
										<span><a href="${pageContext.request.contextPath }/services/exhibition/exhibition1.jsp">1층 전시실</a></span>
										<span><a href="${pageContext.request.contextPath }/services/exhibition/exhibition1.jsp">2층 전시실</a></span>
										<span><a href="${pageContext.request.contextPath }/services/exhibition/exhibition1.jsp">3층 전시실</a></span>
										<span><a href="${pageContext.request.contextPath }/services/exhibition/exhibition1.jsp">주요 전시물</a></span>
										<span><a href="${pageContext.request.contextPath }/services/exhibition/exhibition1.jsp">VR관람</a></span>
									</div>
									<div class="que">
										<a>관람 안내</a>
									</div>
									<div class="anw">
										<span><a href="${pageContext.request.contextPath }/services/information/information1.jsp">관람 안내</a></span>
										<span><a href="${pageContext.request.contextPath }/services/information/information2.jsp">단체관람 예약</a></span>
										<span><a href="${pageContext.request.contextPath }/services/information/information3.jsp">자주 묻는 질문</a></span>
										<span><a href="${pageContext.request.contextPath }/services/information/information4.jsp">오시는 길</a></span>
									</div>
									<div class="que">
										<a>알림/참여</a>
									</div>
									<div class="anw">
										<span><a href="${pageContext.request.contextPath }/services/news/news1.jsp">공지사항</a></span>
										<span><a href="${pageContext.request.contextPath }/services/news/news2.jsp">언론보도</a></span>
										<span><a href="${pageContext.request.contextPath }/services/news/news3.jsp">뉴스레터</a></span>
										<span><a href="${pageContext.request.contextPath }/services/news/news4.jsp">사연남기기</a></span>
										<span><a href="${pageContext.request.contextPath }/services/news/news5.jsp">자원봉사</a></span>
									</div>
									<div class="que">
										<a>가천길재단</a>
									</div>
									<div class="anw">
										<span><a href="${pageContext.request.contextPath }/services/foundation/foundation1.jsp">재단현황</a></span>
										<span><a href="${pageContext.request.contextPath }/services/foundation/foundation2.jsp">재단이념</a></span>
										<span><a href="${pageContext.request.contextPath }/services/foundation/foundation3.jsp">재단연혁</a></span>
									</div>
									</div>
							</div>
						</div>						
					</li>
				</ul>
			</div>
		</div>

</body>
</html>