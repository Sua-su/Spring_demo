<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BGP Prac. index</title>
</head>
<body>
	<h1>BGP Prac. #500</h1>
	<h3>login-out with session</h3>
	<h3>Controller / servlet / DAO / DTO class</h3>
	<hr>
	
	<a href="<%=request.getContextPath()%>/login.jsp">LOGIN PAGE (scritp + HTML)</a>
	<hr>
	
	<h3>session info.</h3>
	<%
		java.util.Enumeration<String> names = session.getAttributeNames();
		while(names.hasMoreElements()) {
			String name = names.nextElement();
			Object value = session.getAttribute(name);
			out.println(name + " : " + value + "<br>");
		}
	%>
	<hr>
	
	<form method="post" action="">
		<input type="submit" name="removeSessionBtn" value="session Del.">
	</form>
	
	<%
		if(request.getParameter("removeSessionBtn") != null) {
			session.invalidate();
			response.sendRedirect(request.getContextPath() + "/index.jsp");
			return;
		}
	%>
	
	
</body>
</html>