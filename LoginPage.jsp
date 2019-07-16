<%-- 
    Document   : LoginPage.jsp
    Created on : 10 Jan, 2019, 11:35:35 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EXAMINATION</title>
        <style>
             h1{color: palevioletred;}
            h2{color: teal;}
            body{background-color: black;}
            input{color: green;}
        </style>
    </head>
    <body>
        <h2 align="center">WELCOME TO COLUMBIA COLLEGE</h2>
        <h1 align="right"><a href="WelcomePage.jsp">BACK</a>
        <form method="post" action="Login2.jsp">
            <h4 align="center">PLEASE ENTER YOUR USERNAME AND PASSWORD BELOW</h4>
            <br>
            <table align="center">
                <tr>
                   
                    <td> <input type="text" name="txt1"
                                placeholder="USERNAME"></td>
                 </tr>
            <br>
            <tr>
                <td> <input type="password" name="txt2"
                            placeholder="PASSWORD"></td>
            </tr>
            <br>
            <tr>
                <td> <input type="submit" name="submit" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CLICK"></td>
            </tr>
             </table>
        </form>
       
        
    </body>
</html>
