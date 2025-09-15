<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Logout method1</title>
</head>
<body>
	<h1>login logout method1</h1>
	<h3>metho2 :</h3>
	<hr/>
	
	
<%
	String loginState = (String) session.getAttribute("loginState");
	if (loginState == null) loginState = "logout";
	
	if ("login".equals(loginState)) {
		
%>
	<%=(String)session.getAttribute("userid") %>님 로그인
	<form name="logout" method="post" action="<%=request.getContextPath()%> /LoginController">
		<input type="hidden" name="actionType" value="logout">
		<input type="submit" value="logout">
	</form>
<%
	}else {
%>
		<form name="login" method="post" action="<%=request.getContextPath()%>/LoginController">
		id : <input type="text" name="userid" size="10">
		pw : <input type="password" name="passwd" size="10">
		<input type="hidden" name="actionType" value="login">
		<input type="submit" value="login">
	</form>
	<hr/>
	
<%
	if ("errorID".equals(loginState)) { %>
		[user Id error]<br/>
	
<%}
	else if ("errorPW".equals(loginState)) { %>
		[user Pw error]<br/>
<%
}


	}
%>
	<p><a href="<%=request.getContextPath() %>/index.jsp">to home</a>

</body>
</html>