<%-- 
    Document   : ResultView.jsp
    Created on : 11 Jan, 2019, 10:26:27 PM
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
            
            label{color: palevioletred}
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
    <body>
        <h1 align="center"> RESULT SHEET!</h1>
        <h2 align="center">PLEASE FILL YOUR STUDENT ID</h2>
        <h2 align="right"> <a href="ResultInfo.jsp">BACK</a></h2>
        <br>
        <form method="post" action="ResultView2.jsp">
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
