<%-- 
    Document   : Choice.jsp
    Created on : 11 Jan, 2019, 7:10:04 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h1{color: palevioletred;}
            h2{color: teal;}
            <%-- body{background-color: black;}--%>
        </style>
    </head>
  
    <body>
        
        <div class="container" style="display: flex; justify-content: space-between; align-items: center; background-color:brown; padding:10px 2rem;">
    <div style="width:15%"><img src="pic/logo.jpg" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href="index.html">Home</a></li>
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href="index.html">About Us</li>
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href="index.html">Contact Us</li>
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href="index.html"> Address</li>
        <li class="button" style="background: wheat; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">logout</a></li>
        
    </ul>
</div>
        <h1 align="center">SELECT WHAT YOU WANT TO DO BELOW!</h1>
        <br>
        
        <br>
        <h2 align="center">TO UPDATE YOUR REGISTRATION -> <a href="searchup.jsp">UPDATE</a></h2>
        <br> 
        <h2 align="center">TO VIEW REGISTRATION YOUR FORM -> <a href="RegSelect1.jsp">VIEW</a></h2>
        <br> 
        <%-- <h2 align="center">TO DELETE YOUR REGISTRATION FOR YOUR EXAM -> <a href="RegDelete.jsp">DELETE</a></h2>--%>
        <br>
          <h1 align="center"><a href="question1.jsp">Question Paper </a></h1> 
    </body>
    <br>
     <h2 align="center">TO  CHECK  STUDENT RESULT  : <a href="ExamResult.jsp">CLICK HERE</a></h2>
</html>
