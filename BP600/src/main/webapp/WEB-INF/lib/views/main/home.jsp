<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BP600 Practice#1(JSP-begginer)</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/home.css">

</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<hr/>
	
	<jsp:include page = "${contentPage }"/>
	
	<%@ include file = "/WEB-INF/views/common/fotter.jsp" %>

</body>
</html>