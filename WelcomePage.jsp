<%-- 
    Document   : WelcomePage.jsp
    Created on : 10 Jan, 2019, 4:18:53 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <style>
            h1{color: red;
            font-size: 30px;}
            h3{color: fuchsia;
            font-size: 28px;}
            h4{color: green;
            font-size: 25;}
            body{background-color: black;
            font-size: 18px;}
            label{background-color: white;}
            font{color: red}
        </style>
    </head>
    <h1><a href="">OFF</a></h1>
    <h1 align="center"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COLUMBIA COLLEGE</h1>
    <body>
        <h3 align="center">KINDLY SELECT WHAT YOU WANT TO DO BELOW</h3>
        <br>
        <form method="post" action="ChoiceConformation.jsp">
            <h4 align="center">PRESS 1 FOR EXAM REGISTRATION <br> <br>PRESS 2 FOR RESULT CHECKING <h4>
        <br>
        <table align="center">
            <tr>
                <td><label>ENTER YOUR CHOICE </label></td>
            </tr>
        <br>
        <tr>
            
            <td><input type="number" name="num1"></td>
        </tr>
        <br>
        <tr>
            <td><input type="submit" name="submit" value="OK"></td>
        </tr>
        <br>
        </table>
        </form>
        
    </body>
</html>
