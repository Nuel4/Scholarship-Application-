<%-- 
    Document   : adminpage.jsp
    Created on : 1 Apr, 2019, 5:05:10 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <div class="container" style="display: flex; justify-content: space-between; align-items: center; background-color:brown; padding:10px 2rem;">
    <div style="width:15%"><img src="pic/logo.jpg" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href="adminquestion.jsp"> SET EXAM QUESTIONS</a></li>
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href="adminstudents.jsp"> STUDENTS RESULTS</li>
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href="cancel.jsp"> CANCEL RESULT</li>
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href=adminview.jsp"> STUDENTS DETAIL</li>
        <li class="button" style="background: wheat; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">logout</a></li>
        
    </ul>
</div>
    <body>
        <h1>MANAGEMENTS DUTIES</h1>
        <a href="adminquestion.jsp"> SET EXAM QUESTIONS</a><br>
        <br> <a href="adminstudents.jsp"> STUDENTS RESULTS</a><br>
        <br><a href="cancel.jsp"> CANCEL RESULT</a><br>
        <br><a href="adminview.jsp"> STUDENTS DETAIL</a><br>
       
        
    </body>
</html>
