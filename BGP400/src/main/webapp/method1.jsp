<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("<h1>로그인-로그아웃 실습 with session</h1><p>");
	out.println("h3>method1 : 스크립틀릿 + out객체 사용</h3>");
	out.println("<hr>");
	
	String loginState = (String) session.getAttribute("loginState");
	if (loginState == null) loginState = "logout";
	
	if ("login".eqials(loginState)) 
		out.println(session.getAttribute("userid") + "님 로그인중.");
		out.println("<form name=\"logout\" method=\"post\" action=\"" + request.getContextPath() + "/signin_dap.jsp\">");
		out.println("	<input type=\"hidden\" neme=\"actionType\" value=\"LOGOUT\">");
		out.println("	<input type=\"submit\" value=\"로그아웃\">");
		out.println("</form>");
		
	}else{
		out.println("<form name=\"login\"method=\"post\"action=\"" + request.getContextPath()+ "/signin_dao.jsp\">");
		out.println("아이디: <input type=\"text\"name=\"userid\" size=\"10\">");
		out.println("<input type=\"hidden\"name=\"actionType\"value=\"LOGIN\">");
		out.println("<input type=\"submit\"value\"value=\"로그인\t.println("</form>");
		out.println("<hr>");
		
		if("errorID".equals(loginState)){
			out.println("[사용자아이디오류]");
		}else if ("errorPW".equals(loginState)){
			out.println("[사용자비밀번호오류]");
		}
		}
%>
</html>