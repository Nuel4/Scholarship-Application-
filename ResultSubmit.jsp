<%-- 
    Document   : ResultSubmit
    Created on : 11 Jan, 2019, 10:24:42 PM
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
            body{background-color: black;}
            td{color: yellow;}
            h3{color: teal;}
        </style>
    </head>
    <body>
        <h1 align="center">RESULT SUBMISSION</h1> 
        <h2 align="right"> <a href="ResultInfo.jsp">BACK</a></h2>
        <br>
        <br>
        <form method="post" action="ResultSubmit2.jsp">
           
        <table align="center">
            <tr>
                <td></td>
            <h3 align="center">ENTER STUDENT RESULT DETAILS</h3>
        </tr>
            <tr>
                <td>EXAM ID</td><td><input type="number" name="num1"></td>
            <br>
            </tr>
            <tr>
               <td>STUDENT ID</td><td><input type="number" name="num2"></td>
            </tr>
            <tr>
                <td>STUDENT NAME</td><td><input type="text" name="txt1"></td>
            </tr>
            <tr>
                <td>COURSE</td><td><input type="text" name="txt2"></td>
            </tr>
            <tr>
                <td>TOTAL MARKS</td><td><input type="number" name="num3"></td>
            </tr>
            <tr>
                <td>GRADE</td><td><input type="text" name="num4"></td>
            </tr>
            <br>
            <tr>
                <td></td>
                &nbsp;&nbsp;<td> <input type="SUBMIT" name="SUBMIT" value="SUBMIT"></td>
              </tr>
        </form>
    </body>
</html>
