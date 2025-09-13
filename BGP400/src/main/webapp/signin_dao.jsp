<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");

String actionType = request.getParameter("actionType");

if (actionType == null) {
    response.sendRedirect(request.getContextPath() + "/index.jsp");
    return;
}

final String userID_DUMMY = "su";
final String userPW_DUMMY = "1234";

switch (actionType) {
    case "login":
        String userID = request.getParameter("userid");
        String userPW = request.getParameter("passwd"); 

        if (userID == null || userPW == null || userID.trim().isEmpty() || userPW.trim().isEmpty()) {
            session.setAttribute("loginState", "errorID");
        } else if (userID_DUMMY.equals(userID)) {
            if (userPW_DUMMY.equals(userPW)) {
                session.setAttribute("loginState", "login");
                session.setAttribute("userID", userID);
                session.setAttribute("userPW", userPW);
            } else {
                session.setAttribute("loginState", "errorPW");
                session.setAttribute("userID", userID);
                session.removeAttribute("userPW");
            }
        } else {
            session.setAttribute("loginState", "errorID");
            session.removeAttribute("userID");
            session.removeAttribute("userPW");
        }
        break;

    case "logout":
        session.invalidate();
        break;

    default:
        response.sendRedirect(request.getContextPath() + "/index.jsp");
        return;
}


String referer = request.getHeader("referer");
if (referer != null && !referer.isEmpty()) {
    response.sendRedirect(referer);
} else {
    response.sendRedirect(request.getContextPath() + "/index.jsp");
}
%>