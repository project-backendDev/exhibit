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
		$("form[name=viewForm]").attr('action', '/introduce/'+ artcl_Seq +'/artclView');
		$("form[name=viewForm]").submit();
	}
	
	$(document).ready(function() {
		$("#search_Btn").click(function() {
			$("#artclListForm").attr('action', '/introduce/introduce3');
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
	
    <div class="sub_visu" style="background: url(${pageContext.request.contextPath }/assets/images/introduce_bg.png) no-repeat center center;">
        <div class="wrap">
            <div class="txt">
                <h2>언론에 비친 기념관</h2>
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
                        <li>소개</li>
                        <li><img src="${pageContext.request.contextPath }/assets/images/i_link_g.png" alt=""></li>
                        <li>언론에 비친 기념관</li>
                    </ul>
                </div>
                <form id="artclListForm" method="post">
	                <div class="board">
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
	                </div>
                </form>
                <div class="information">
                    <ul class="list type1">
                        <li>
                            <div class="title">
                                <h3>
                                    언론에 비친 기념관
                                </h3>
                            </div>
                            
                            <input type="hidden" value="${pageContext.request.contextPath }/assets/images/memorial1.png">
                            <form name="viewForm" method="post">
                            	<c:set var="searchType" value="${paging.searchType}" />
								<input type="hidden" name="nowPage" value="${paging.nowPage}">
								<input type="hidden" name="cntPerPage" value="${paging.cntPerPage}">
								<input type="hidden" name="searchType" value="${searchType }">
								<input type="hidden" name="searchValue" value="${paging.searchValue }">
                            
                            	<div class="memorial">
                            		<ul>
                            			<c:choose>
	                            			<c:when test="${artclList != null }">
		                            			<c:forEach items="${artclList }" var="list" >
		                            			<input type="hidden" name="artcl_Seq" value="${list.artcl_Seq}">
		                            			<c:set value="${pageContext.request.contextPath }${list.img_Path}/${list.img_File_Nm }" var="thumbPath" />
			                            		
			                            			<li>
			                            				<a onclick="artclView(${list.artcl_Seq})" target="_blank" style="cursor: pointer;">
			                            					<div class="con">
				                                                <div class="img" style="background:url(${thumbPath}); background-size: cover; "></div>
				                                                <div class="txt">
				                                                	등록일 : <fmt:formatDate value="${list.reg_date}" pattern="yyyy-MM-dd"/>
				                                                    <h5>
				                                                    	<c:choose>
																	        <c:when test="${fn:length(list.title) gt 26}">
																	        	<c:out value="${fn:substring(list.title, 0, 25)} ..."/>
																	        </c:when>
																	        <c:otherwise>
																	        	<c:out value="${list.title}"/>
																	        </c:otherwise>
																	    </c:choose>	
				                                                    </h5>
				                                                    <p>
																		<c:choose>
																	        <c:when test="${fn:length(list.content) gt 26}">
																	        	<c:out value="${fn:substring(list.content, 0, 25)} ..."/>
																	        </c:when>
																	        <c:otherwise>
																	        	<c:out value="${list.content}"/>
																	        </c:otherwise>
																	    </c:choose>	
				                                                    </p>
				                                                    
				                                                </div>
				                                            </div>
			                            				</a>
													</li>                            			
		                            			</c:forEach>
	                            			</c:when>
	                            			<c:otherwise>
	                            				게시물이 없습니다.
	                            			</c:otherwise>
                            			</c:choose>
                            		</ul>
                            	</div>
                            </form>
<%-- 
                            <div class="memorial">
                                <ul>
                                    <li>
                                        <a href="https://enews.incheon.go.kr/usr/com/prm/BBSDetail.do?menuNo=1002&upperMenuId=1&bbsId=BBSMSTR_000000000362&nttId=6097&searchBoardGubun=&boardTab=&pageIndex=1&searchCnd=&searchWrd=&boardType=&searchStartDate=&searchEndDate=" target="_blank">
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/memorial1.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>[인천 i-View] "1960년대 인천의 산부인과 병원은 어땠을까?</h5>
                                                    <p>
														10월 10일 임산부의 날 맞아 가천 이길여 산부인과 기념관 가다
                                                    </p>
                                                    
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://youtu.be/JeoCRLhDzNo" target="_blank">
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/memorial2.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>[KFM 모닝와이드] "인천에는 산부인과 기념관이 있다."</h5>
                                                    <p>
														인천에 가면 '산부인과 기념관'이 있다고 하는데 ... 1960~70년대 산부인과의 풍경을<br class="pc_only"/>
														그대로 재연해 놓은 공간, 지금부터 함께 가보자
                                                    </p>
                                                    
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="http://www.m-i.kr/news/articleView.jsp?idxno=513890" target="_blank">
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/memorial3.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>[매일일보] 가천'이길여산부인과'기념관 어린이날 맞아 이벤트</h5>
                                                    <p>
														2016년 6월 동인천길병원에 개관... 캐릭터 풍선 등 다양한 기념품 제공 계획
                                                    </p>
                                                    
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="http://www.kyeongin.com/main/view.php?key=20190110010003533" target="_blank">
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/memorial4.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>[경인일보] 1960~1970년대 병동 '교육·추억' 모두 만족</h5>
                                                    <p>
														가천 이길여 산부인과 기념관 개관 30개월만에 5만명 관람
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://health.chosun.com/site/data/html_dir/2018/02/01/2018020101109.jsp" target="_blank">
                                            <div class="con">
                                                <div class="img" style="background: url(${pageContext.request.contextPath }/assets/images/memorial5.png); background-size: cover;"></div>
                                                <div class="txt">
                                                    <h5>[헬스조선] '이길여 산부인과 기념관' 인천 관광명소 됐다</h5>
                                                    <p>
														개관 2년 6개월 만에 관람...'교육의 장'으로 인기
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
--%>
                            <!-- pager -->
                            <%@include file="pageProcess.jsp"%>
                            <%-- <div class="boardPager">
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
                            --%>
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

