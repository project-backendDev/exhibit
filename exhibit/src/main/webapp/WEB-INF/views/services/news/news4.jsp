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
		$("form[name=viewForm]").attr('action', '/sayeon/'+ artcl_Seq +'/artclView');
		$("form[name=viewForm]").submit();
	}
	
	$(document).ready(function() {
		$("#search_Btn").click(function() {
			$("#artclListForm").attr('action', '/sayeon/news4');
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
		                            			<c:when test="${artclList != null }">
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
                    </div>
                </div>
                <div class="apply_btn bordernone">
                    <%-- <a href="${pageContext.request.contextPath }/services/news/news4_write" --%>
                    <a href="${pageContext.request.contextPath }/sayeon/registView">
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

