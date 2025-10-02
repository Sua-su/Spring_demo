<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>BP600 Practice#1(JSP기초)</title>

<%--  css가져오기  --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home.css">

</head>
<body>


<%-- 정적 include 시키기  --%>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<hr/>
<%-- 동적 include 시키기  --%>
	<jsp:include page="${contentPage}" />
	<hr/>
<%-- 정적 include 시키기  --%>
	<%@ include file ="/WEB-INF/views/common/footer.jsp" %>

</body>
</html>
