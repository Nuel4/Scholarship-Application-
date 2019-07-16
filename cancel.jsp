<%-- 
    Document   : cancel
    Created on : 23 Apr, 2019, 12:59:58 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
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
        <h2 align="center">SEARCH STUDENT DETAIL</h2> 
            <h2 align="right"><a href="adminpage.jsp">BACK</a></h2>
        
        <form method="post" action="cancel2.jsp">
            <h3 align =center> ENTER STUDENT ID TO VIEW  REGISTRATION INFORMATION </h3>
            <table align="center">
                <tr>
                    <td> <label>STUDENT ID</label></td>
                    <td> <input type="text" name="stud"></td>
                    </tr>
            <br>
            <tr>
                <td></td>
                <td><input type="submit" name="submit" value="CLICK"></td>
            </tr>
            <br>
            </table>
   
    </body>
</html>
