<%-- 
    Document   : general.jsp
    Created on : 3 Apr, 2019, 10:17:15 PM
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
            String ab =request.getParameter("reg");
             
             if(ab.equals("admin"))
             {
                 response.sendRedirect("adminlogin.jsp");
             }
             if(ab.equals("student"))
             {
                response.sendRedirect("genlogin.jsp"); 
             }
             else
             {
                out.print("<br><br><br><h1 style='background-color:blue'>YOUR USER NAME OR PASSWPRD IS WRONG </h1>");
                
             }
            
            %>
    </body>
</html>
