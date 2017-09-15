
<%@page import="com.bbharose.AuthUser"%>
<%@page import="com.bbharose.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    AuthUser info=null;
     boolean authenticated=false;
    if (request.getMethod().equalsIgnoreCase("get")) {
        response.sendRedirect("index.jsp");
    } else if (request.getMethod().equalsIgnoreCase("post")) {
        String email = request.getParameter("email").trim();
        String passwd = request.getParameter("passwd");
        info = DBManager.loginUser(email,passwd);
        session.setAttribute("info", info);
        response.sendRedirect("USERS/profile.jsp");
       
    }

%>
