<%-- 
    Document   : exercicio 3
    Created on : May 18, 2021, 3:05:44 PM
    Authors     : Lucas Aguiar Cera e Renan Wenzel 
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            String NameOperator, NameHolder, StringNumber, StringBalance, StringValue, buttonClicked;

            NameOperator = request.getParameter("Operator");
            NameHolder = request.getParameter("Holder");
            StringNumber = request.getParameter("Number");
            StringBalance = request.getParameter("accountBalance");
            StringValue = request.getParameter("accountValue");
            buttonClicked = request.getParameter("buttonClickable");

            response.sendRedirect("search.jsp?Operator=" + NameOperator +"&Holder=" + NameHolder + "&Number=" + StringNumber + "&accountBalance=" + StringBalance + "&accountValue=" + StringValue + "&buttonClickable="+ buttonClicked);
        %>
    </body>
    
</html>