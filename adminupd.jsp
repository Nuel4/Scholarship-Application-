<%-- 
    Document   : adminupd.jsp
    Created on : 4 Apr, 2019, 12:36:40 AM
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
        <h1 align="left">  <a href="adminduties.jsp">BACK</a></h1>
        <h1 align="center">SEARCH FOR STUDENT'S INFORMATION</h1>
        <form method="post" action="ResultUpdate.jsp">
            <center> <tr>
        <td><input type=text  name=stud  placeholder="student id"></td></tr><br><br>
    <tr>
        <td><input type="submit"  name="submit"  value="SEARCH"></td></tr></center></form>
    </body>
</html>
