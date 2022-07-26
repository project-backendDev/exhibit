<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<div style="display: block; text-align: center;">	
		<!-- 이전페이지  c:if 부분은 건들 필요가 없음 근데 만약 파라미터값을 더 값을 일이 있다면 그것만 수정하면 됨!  -->	
		<c:if test="${paging.startPage != 1 }">
			<a href="${pathVal}?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}&searchValue=${paging.searchValue}&searchType=${paging.searchType}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b style="color: #747474;">[${p }]</b> <%--현제 페이지 일경우 링크 해제  --%>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<%-- 다른페이지 링크  --%>
					<a href="${pathVal}?nowPage=${p }&cntPerPage=${paging.cntPerPage}&searchValue=${paging.searchValue}&searchType=${paging.searchType}">[${p }]</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<!--  다음페이지 > -->
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="${pathVal}?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&searchValue=${paging.searchValue}&searchType=${paging.searchType}">&gt;</a>
		</c:if>
	</div>