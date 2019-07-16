<%-- 
    Document   : adminlogin2.jsp
    Created on : 3 Apr, 2019, 10:59:58 PM
    Author     : Admin
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
            String ab =request.getParameter("txt1");
             String bb =request.getParameter("txt2");
             if(ab.equals("admin") && bb.equals("admin"))
             {
                 response.sendRedirect("adminduties.jsp");
             }
             else
             {
                out.print("<h1>YOUR USER NAME OR PASSWPRD IS WRONG <h1>");
                
             }
            
            %>
    </body>
</html>
