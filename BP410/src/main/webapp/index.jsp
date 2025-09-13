<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Main</h1>
	<h3>Sub</h3>
	
	<hr/>
	
	<a href="<%=request.getContextPath() %>/index.jsp">type1</a>
	
	<hr/>
	
	<%
		java.util.Enumeration<String> names = session.getAttributeNames();
		while (names.hasMoreElements()) {
			String name = names.nextElement();
			Object value = request.getAttribute(name);
			out.print(name + " : " + value + "<br/>" );
		}
	%>

	<hr/>
	<h3>session info</h3>
	<h3>warring not save password on Session</h3>
	
	<hr/>
	
	<form method="post">
	<p><input type="submit" name="removeSessionBtn" value="remove Session"></p>	
	</form>
	
<%

	if (request.getParameter("removeSession") != null) {
		session.invalidate();
		response.sendRedirect(request.getContextPath()+"/index.jsp");
		return;
	}



%>
	
	
	
	
	
	
	
</body>
</html>