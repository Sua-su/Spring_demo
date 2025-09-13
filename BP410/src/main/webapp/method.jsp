<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>login-logout</h1>
	<h3>method :  </h3>
	
<%

	String loginState = (String) session.getAttribute("loginState");
	if (loginState == null) loginState = "logout";
	
	if("login".equals(loginState)) {
		%>
	<%
	String loginState = (String) session.getAttribute("loginState");
	if (loginState == null) loginState = "logout";
	
	if ("login".equals(loginState)){
		%>
	<%= (String)session.getAttribute("userid")%> login
	<form name = "logout" method="post" action="<%=request.getContextPath() %>/sigin._dao.jsp">
		<input type="hidden" name="actionTpye" value="Logout">
		<input type="submit" value="logout">		
	</form>

	
<%
} else
%>

	<form name="login" method="post" action="<%=request.getContextPath() %>/sigin.dao.jsp">
		id : <input type ="text" name=""userid" size="10">
		pw : <input type="password" name="password" size="10">
		<input type="hidden" name ="actinType" value="Login">
		<input type ="submit" value="login">
	</form>
<% 

	if ("errorID".equals(loginState)) {
%>		[ID error] <br/>
<%	} else if ("errorPW".equals(loginState)){ %>
		[PW error] <br/>
		
<%
}


	}

%>



	<a href="<%=request.getContextPath() %>/index.jsp">to home</a>

	
</body>
</html>