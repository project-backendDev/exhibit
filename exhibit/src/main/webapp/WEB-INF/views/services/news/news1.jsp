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
		$("form[name=viewForm]").attr('action', '/notice/'+ artcl_Seq +'/artclView');
		$("form[name=viewForm]").submit();
	}
	
	$(document).ready(function() {
		$("#search_Btn").click(function() {
			$("#artclListForm").attr('action', '/notice/news1');
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
                <h2>공지사항</h2>
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
                        <li>공지사항</li>
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
                    <div class="table type_board">
                    	<form name="viewForm" method="post">
	                            	<c:set var="searchType" value="${paging.searchType}" />
									<input type="hidden" name="nowPage" value="${paging.nowPage}">
									<input type="hidden" name="cntPerPage" value="${paging.cntPerPage}">
									<input type="hidden" name="searchType" value="${searchType }">
									<input type="hidden" name="searchValue" value="${paging.searchValue }">
									
			                        <h6>총 <span><c:out value="${paging.total }" /></span>건 검색되었습니다.</h6>
			                        <table>
			                            <tbody>
				                            <tr>
				                                <th style="width: 12%;">번호</th>
				                                <th style="width: 50%;">제목</th>
				                                <th style="width: 26%;">작성일</th>
				                                <th style="width: 12%;">조회</th>
				                            </tr>
				                            <c:choose>
		                            			<c:when test="${artclList != null && artclList.size() > 0}">
			                            			<c:forEach items="${artclList }" var="list" >
			                            			<%-- <fmt:parseDate var="nowDate" value="${now }" pattern="yyyy-MM-dd"/>
			                            			<fmt:parseDate var="regD" value="${list.reg_date }" pattern="yyyy-MM-dd"/>
			                            			<fmt:parseNumber var="nowDate_N" value="${nowDate.time / (1000*60*60*24)}" integerOnly="true" />
			                            			<fmt:parseNumber var="regD_N" value="${regD.time / (1000*60*60*24)}" integerOnly="true" />
			                            			--%>
			                            			<input type="hidden" name="artcl_Seq" value="${list.artcl_Seq}">
			                            			
							                            <tr>
							                                <td><c:out value="${list.artcl_Seq }"/></td>
							                                <td>
								                                <a onclick="artclView(${list.artcl_Seq})" target="_blank" style="cursor: pointer;">
								                                	<p>
								                                		<c:choose>
																	        <c:when test="${fn:length(list.title) gt 26}">
																	        	<c:out value="${fn:substring(list.title, 0, 25)} ..."/>
																	        </c:when>
																	        <c:otherwise>
																	        	<c:out value="${list.title}"/>
																	        </c:otherwise>
																	    </c:choose>	
								                                	</p>
								                                	<%-- <c:if test="${regD_N > (nowDate_N + 3) }">
									                                	<i class="i_new">
									                                		<img src="${pageContext.request.contextPath }/assets/images/i_new.png" alt="새글">
									                                	</i>
								                                	</c:if>
								                                	--%>
								                                </a>
								                            </td>
							                                <%-- <td><c:out value="${regD }"/></td> --%>
							                                <td><fmt:formatDate value="${list.reg_date }" pattern="yyyy-MM-dd"/> </td>
							                                <td><c:out value="${list.hit }"/></td>
							                            </tr>
					                        		</c:forEach>
					                        	</c:when>
					                        	<c:otherwise>
					                        		<tr>
		                            					<td colspan="4">게시물이 없습니다.</td>
		                            				</tr>
		                            			</c:otherwise>
					                        </c:choose>
			                        	</tbody>
			                       	</table>
		                       	</form>
	                            <!-- pager -->
	                            <%@include file="pageProcess.jsp"%> 
                        <%--
                        <h6>총 <span>81</span>건 검색되었습니다.</h6>
                        <table>
                            <tbody>
	                            <tr>
	                                <th style="width: 12%;">번호</th>
	                                <th style="width: 50%;">제목</th>
	                                <th style="width: 26%;">작성일</th>
	                                <th style="width: 12%;">조회</th>
	                            </tr>
	                            <tr>
	                                <td>10</td>
	                                <td><a href="${pageContext.request.contextPath }/services/news/news1_detail"><p>단체관람 재개 안내</p><i class="i_new"><img src="${pageContext.request.contextPath }/assets/images/i_new.png" alt=""></i></a></td>
	                                <td>2022-00-00</td>
	                                <td>589</td>
	                            </tr>
	                            <tr>
	                                <td>9</td>
	                                <td><a href="${pageContext.request.contextPath }/services/news/news1_detail"><p>2022년 3월 운영안내 (3/1(화) 3.1절 정상운영)</p></a></td>
	                                <td>2022-00-00</td>
	                                <td>589</td>
	                            </tr>
	                            <tr>
	                                <td>8</td>
	                                <td><a href="${pageContext.request.contextPath }/services/news/news1_detail"><p>2021년 가천문화재단 10대뉴스</p></a></td>
	                                <td>2022-00-00</td>
	                                <td>589</td>
	                            </tr>
	                            <tr>
	                                <td>7</td>
	                                <td><a href="${pageContext.request.contextPath }/services/news/news1_detail"><p>2022년 1월 1일(신정) 휴관 안내</p></a></td>
	                                <td>2022-00-00</td>
	                                <td>589</td>
	                            </tr>
	                            <tr>
	                                <td>6</td>
	                                <td><a href="${pageContext.request.contextPath }/services/news/news1_detail"><p>2021년 10월 운영안내 (개천절, 한글날 정상운영)</p></a></td>
	                                <td>2022-00-00</td>
	                                <td>589</td>
	                            </tr>
	                            <tr>
	                                <td>5</td>
	                                <td><a href="${pageContext.request.contextPath }/services/news/news1_detail"><p>2021년 9월 (추석 연휴기간) 운영안내</p></a></td>
	                                <td>2022-00-00</td>
	                                <td>589</td>
	                            </tr>
	                            <tr>
	                                <td>4</td>
	                                <td><a href="${pageContext.request.contextPath }/services/news/news1_detail"><p>2021년 8월 운영안내 (8/15(일) 광복절 정상운영)</p></a></td>
	                                <td>2022-00-00</td>
	                                <td>589</td>
	                            </tr>
	                            <tr>
	                                <td>3</td>
	                                <td><a href="${pageContext.request.contextPath }/services/news/news1_detail"><p>2021년 6월 운영안내 (6/6(일) 현충일 정상운영)</p></a></td>
	                                <td>2022-00-00</td>
	                                <td>589</td>
	                            </tr>
	                            <tr>
	                                <td>2</td>
	                                <td><a href="${pageContext.request.contextPath }/services/news/news1_detail"><p>2021년 5월 석가탄신일 정상운영 안내</p></a></td>
	                                <td>2022-00-00</td>
	                                <td>589</td>
	                            </tr>
	                            <tr>
	                                <td>1</td>
	                                <td><a href="${pageContext.request.contextPath }/services/news/news1_detail"><p>2021년 5월 운영안내 (어린이날, 석가탄신일 정상운영)</p></a></td>
	                                <td>2022-00-00</td>
	                                <td>589</td>
	                            </tr>
                        	</tbody>
                       	</table>
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
                        </div> --%>                           
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

