<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%!
     boolean isValid(String n, String p) {
        if(n != null && p != null) {
            if (n.equals("anjan") && p.equals("akb123")) {
                return true;
            }
        }
            return false;
    }
%>
<% System.out.print("Inside JSP");
    String name = request.getParameter("name");
    String pswd = request.getParameter("pswd");
    if(isValid(name,pswd)) {

        RequestDispatcher rd = request.getRequestDispatcher("Page_1.jsp");
        rd.forward(request,response);
    } else {
        RequestDispatcher rd = request.getRequestDispatcher("LoginHtml.html");
        rd.forward(request,response);
    } %>
</body>
</html>