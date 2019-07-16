<%-- 
    Document   : ChoiceConformation.jsp
    Created on : 10 Jan, 2019, 4:46:39 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
               h1{color: yellow;}
            h2{color: teal;}
           <%-- body{background-color: black}--%>
            output{align-items: center;}
            h3{color: palevioletred;}
                     
        </style>
    </head>
    <body>
        <h2 align="center">CONFIRMATION PAGE</h2>
        <h1 align="right"><a href="WelcomePage.jsp">BACK</a></h1>
        <table align="center">
        <%
            String p = request.getParameter("num1");
            int x =Integer.parseInt(p);
            if(x==1)
            {
                response.sendRedirect("searchup.jsp");
            }
            else
            if(x==2)
            {
                response.sendRedirect("ExamResult.jsp");
            }
            else
            {
                
             out.println("<h3>INVALID CHOICE</h3>");
            }
            %>
        </table>
    </body>
</html>
