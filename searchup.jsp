<%-- 
    Document   : searchup.jsp
    Created on : 1 Apr, 2019, 10:05:32 AM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            input[type=submit] {
  background-color: #4CAF50;
  color: red;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}

input[type=submit]:hover {
  background-color: #45a049;
}

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
         <h2 align="right"><a href="Choice.jsp">BACK</a></h2>
        <h1 align="center" style="margin-top: 150px;">TYPE IN YOUR REGISTERED NUMBER</h1>
        <form method="post" action="RegUpdate.jsp">
            <center> <tr>
        <td><input type="text"  name="stud"  placeholder="student id"></td></tr><br><br>
    <tr>
        <td><input type="submit"  name="submit"  value="SEARCH"></td></tr></center></form>
    </body>
</html>
