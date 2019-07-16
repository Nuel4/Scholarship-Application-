<%-- 
    Document   : ExamResult.jsp
    Created on : 10 Jan, 2019, 4:56:04 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
              
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
        <h1 align="center">WELCOME TO RESULT CHECKING PAGE</h1>
         <h1 align="right"><a href="index.html">BACK</a></h1>
    
         <form method="post" action="ResultLogin.jsp">
            <h3 align="center">PLEASE ENTER YOUR USERNAME AND PASSWORD BELOW</h3>
            <table align="center">
            <br>
            <tr>
                <td><input type="text" name="txt1"
                           placeholder="username "></td>
            </tr>
                      <br>
                      <tr>
                          <td><input type="password" name="num"
                                     placeholder="student id"></td>
                      </tr>
            <br>
            <br>
            <tr>
                <td>  <input type="submit" name="submit" value="SUBMIT"></td>
            </tr>
            </table>
        </form>
    </body>
</html>
