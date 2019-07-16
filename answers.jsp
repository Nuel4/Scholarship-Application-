<%-- 
    Document   : answers.jsp
    Created on : 4 Apr, 2019, 1:45:39 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form method="post" action="answer2.jsp">
              <%-- <input type="number" name="reg" value=""--%>
            <table align="center">
              <h2 align="right"><a href="adminduties.jsp">BACK</a></h2>
                <h1 align="center">ENTER CORRECT ANSWERS</h1>
                <tr>
                <td>SUBJECT NAME:</td>
                <td><input type="text" name="sub"></td>
                   </tr>
                <tr>
                <td>QUESTION 1:</td>
                <td><input type="text" name="txt1"></td>
                   </tr>
                    <tr>
                    <td>QUESTION 2:</td>
                    <td><input type="text" name="txt2"></td>
                </tr>
                <td>QUESTION 3:</td>
                    <td><input type="text" name="txt3">
                    </td>
                </tr>
                
                </tr>
                <td>QUESTION 4:</td>
                    <td><input type="text" name="txt4">
                    </td>
                </tr>
                <tr>
               <td>QUESTION 5:</td>
                    <td><input type="text" name="txt5">
                    </td></tr>
                 <tr>
                     <%--  <td>MONTH:</td>
                    <td><input type="text" name="txt6">
                    </td></tr>
                  <tr>
               <td>YEAR:</td>
                    <td><input type="text" name="txt7">
                    </td></tr> --%>
            </table>
              <center><input type="submit" name="submit" value="SUBMIT"></td></center>
        </form>
    </body>
</html>
