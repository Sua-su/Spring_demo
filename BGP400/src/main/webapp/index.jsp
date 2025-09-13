
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login logout</title>
</head>
<body>
	
	<h1>BGP</h1>
	<h3>login-logout</h3>
	
	<hr/>
	
	<a href="<%=request.getContextPath() %>/index.jsp"></a>
	
	<hr/>
	
	<h3>session info</h3>
	<h3>not save PW on session</h3>
	
	<hr/>
	
<%

	java.util.Enumeration<String> names = session.getAttributeNames();
	while(names.hasMoreElements()) {
		String name = names.nextElement();
		Object value = request.getAttribute(name);
		out.println(name + " : " + value + "<br/>");
	}
%>

	<form method="post">
	
	<input type="submit" name="removeSessionBtn " value="removeSession">
	</form>

<%
	if(request.getParameter("removeSessionBtn") != null) {
		session.invalidate();
		response.sendRedirect(request.getContextPath()+"/index.jsp");
		return;
	}


%>





</body>
</html>