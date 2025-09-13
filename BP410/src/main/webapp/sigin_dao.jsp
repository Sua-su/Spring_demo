<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
    
 <%
 
 	request.setCharacterEncoding("UTF-8");
 
 	String actionType = request.getParameter("actionType");
 	if(actionType == null) {
 		response.sendRedirect(request.getContextPath() + "/index.jsp");
 		return;
 	}
 
 	final String userID_DUMMY = "su";
 	final String userPW_DUMMY = "1234";
 	
 	switch (actionType) {
 	case "Login":
 		String userID = request.getParameter("userid");
 		String userPW = request.getParameter("userwd");
 		
 		
 	}
 
 
 
 %>
 