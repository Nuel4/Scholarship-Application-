<%-- 
    Document   : ResultDelete.jsp
    Created on : 11 Jan, 2019, 10:26:52 PM
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
            
            label{color: white;}
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
        <h1 align="center">DELETION PAGE</h1>
        <h2 align="right"> <a href="ResultInfo.jsp">BACK</a></h2>
        <br>
        <form method="post" action="answersheet2.jsp">
            <table align="center">
            <h2 align="center">ENTER THE STUDENT ID YOU WANT TO DELETE:</h2>
            <tr>
                <td> <label align="center"> STUDENT ID</label></td>
                <td>  <input type="number" name="digit"></td>
            </tr>
            <br>
            <tr>
                <td align="center"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="submit" name="submit" value="click"></td>
            <br>
            </tr>
            </table>
    </body>
</html>
