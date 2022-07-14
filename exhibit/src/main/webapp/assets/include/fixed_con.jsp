<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="fixed_con">
		<ul>
			<li>
				<a href="${pageContext.request.contextPath }/index.jsp">
					<i><img src="${pageContext.request.contextPath }/assets/images/i_main.png" alt=""></i>
					<p>메인</p>
				</a>
			</li>
			<li>
				<a href="http://easyvr.co.kr/gachon2/index.jsp" target="_blank">
					<i><img src="${pageContext.request.contextPath }/assets/images/i_vr.png" alt=""></i>
					<p>VR</p>
				</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath }/services/information1.jsp">
					<i><img src="${pageContext.request.contextPath }/assets/images/i_tour.png" alt=""></i>
					<p>관람 안내</p>
				</a>
			</li>
			<li>
				<a href="#" id="top_btn">
					<i><img src="${pageContext.request.contextPath }/assets/images/i_top.png" alt=""></i>
					<p>TOP</p>
				</a>
			</li>
		</ul>
	</div>
</body>
</html>