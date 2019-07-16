<%-- 
    Document   : Login2
    Created on : 11 Jan, 2019, 7:02:05 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h1{color: gold;}
            body{background-color: black;}
            font{color: red;}
            h2{color: red;}
        </style>
    </head>
    <body>
        <h2>WELCOME TO LOGIN PAGE!</h2>
        
        <%
            String ab =request.getParameter("txt1");
             String bb =request.getParameter("txt2");
             if(ab.equals("exam") && bb.equals("exam"))
             {
                 response.sendRedirect("RegInsert1.jsp");
             }
             else
             {
                out.print("<h1>YOUR USER NAME OR PASSWPRD IS WRONG <h1>");
                
             }
            
            %>
    </body>
</html>
