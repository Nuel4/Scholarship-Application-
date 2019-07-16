<%-- 
    Document   : ResultInfo.jsp
    Created on : 11 Jan, 2019, 10:03:05 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
              h2{color: palevioletred;}
            h3{color: teal;}
            <%--body{background-color: black;}--%>
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
        <h2 align="center">SELECT ONE OPTION BELOW: </h2>
        
       
        
        <br>
        <h3 align="center">TO VIEW RESULT CLICK :<a href="ResultView.jsp">VIEW</a></h3>
        <br>
        <h3 align="center">REQUEST FOR ANSWER SHEET :<a href="answersheet1.jsp">ANSWER SHEET</a></h3>
        <br>
    </body>
     <h2 align="center">TO GO BACK TO THE MAIN PAGE:<a href="index.html">CLICK HERE</a></h2>
</html>
