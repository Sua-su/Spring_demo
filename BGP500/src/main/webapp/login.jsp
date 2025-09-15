<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BGP Prac. method</title>
</head>
<body>
	<h1>login-out with session</h1>
	<h3>login.jsp : scriptlet + HTML</h3>
	<h3>Controller / servlet / DAO / DTO class</h3>
	<hr>
	
	<%
		String loginState = (String) session.getAttribute("loginState");
	
		if (loginState == null) {
			loginState = "logout";
		};
		
		if ("login".equals(loginState)) {
	%>		[<%= (String)session.getAttribute("userID") %>] LOG ON... 
			<form name="logout" method="post" action="<%=request.getContextPath()%>/loginController">
				<input type="hidden" name="actionType" value="LOGOUT">
				<input type="submit" value="LOG-OUT">
			</form>
		
	<%	} else {
	%>		<form name="login" method="post" action="<%=request.getContextPath()%>/loginController">
				ID : <input type="text"		name="userid" size="10">
				PW : <input type="password" name="passwd" size="10">
				<input type="hidden" name="actionType" value="LOGIN">
				<input type="submit" value="LOG-IN">
				
			</form>
			<hr>
	<%
			if("errorID".equals(loginState)) {
	%>			[User ID Error]<br>
	<%		} else if ("errorPW".equals(loginState)){
	%>			[User PW Error]<br>
	<%		}
		}
	%>	<p><a href="<%=request.getContextPath()%>/index.jsp">go to HOME</a></p>
</body>
</html>