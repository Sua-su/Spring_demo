<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>BP600 Practice#1(JSP기초)</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home.css">

</head>
<body>


	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<hr/>
	<jsp:include page="${contentPage}" />
	<hr/>
	<%@ include file ="/WEB-INF/views/common/footer.jsp" %>

</body>
</html>
