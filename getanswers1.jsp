<%-- 
    Document   : getanswers1.jsp
    Created on : 4 Apr, 2019, 3:36:22 AM
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
       <h1 align="center"> RESULT SHEET!</h1>
        <h2 align="center">PLEASE FILL YOUR STUDENT ID</h2>
        <h2 align="right"> <a href="adminduties.jsp">BACK</a></h2>
        <br>
        <form method="post" action="getanswer2.jsp">
            <table align="center">
                <tr>
                    <td><label> SEARCH SUBJECT YOU WANT TO SEE THE ANSWERS</label></td>
                   <td> <input type="text" name="txt1"></td>
                </tr>
            <br>
            <tr>
                <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="CLICK"></td>
            </tr>
            <br>
    </body>
</html>
