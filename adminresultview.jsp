<%-- 
    Document   : adminresultview.jsp
    Created on : 4 Apr, 2019, 1:04:44 AM
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
       
        <h2 align="center"> FILL YOUR STUDENT ID</h2>
        <h2 align="right"> <a href="adminduties.jsp">BACK</a></h2>
        <br>
        <form method="post" action="adminresultview2.jsp">
            <table align="center">
                <tr>
                    <td><label> STUDENT ID</label></td>
                   <td> <input type="number" name="num1"></td>
                </tr>
            <br>
            <tr>
                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="CLICK"></td>
            </tr>
            <br>
    </body>
</html>
