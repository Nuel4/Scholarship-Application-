<%-- 
    Document   : adminlogin.jsp
    Created on : 3 Apr, 2019, 10:32:58 PM
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
        <form method="post" action="adminlogin2.jsp">
            <h3 align="center">PLEASE ENTER YOUR USERNAME AND PASSWORD BELOW</h3>
            <table align="center">
            <br>
            <tr>
                <td><input type="text" name="txt1"
                           placeholder="username "></td>
            </tr>
                      <br>
                      <tr>
                          <td><input type="password" name="txt2"
                                     placeholder="password"></td>
                      </tr>
            <br>
            <br>
            <tr>
                <td>  <input type="submit" name="submit" value="SUBMIT"></td>
            </tr>
            </table>
    </body>
</html>
