<%-- 
    Document   : ResultSubmit2.jsp
    Created on : 12 Jan, 2019, 9:39:33 PM
    Author     : Admin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            input{color:gold;
            background-color: teal;}
        </style>
    </head>
    <body>
        <h1 align="center">RESULT CONFIRMATION PAGE</h1>
         <h1 align="right"><a href="ResultSubmit.jsp">BACK</a></h1>
    
        <%
            String a =request.getParameter("num1");
             String b =request.getParameter("num2");
              String c =request.getParameter("txt1");
               String d =request.getParameter("txt2");
               String ee =request.getParameter("num3");
                String f =request.getParameter("num4");
               
             try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement stm =con.createStatement();
                String query="insert into resultoverview(examid,studentid,studentname,course,marks,grade) values ("+a+" ,"+b+",'"+c+"','"+d+"',"+ee+",'"+f+"')";
               stm.execute(query);
              }
              catch(Exception e)
              {
                 e.printStackTrace();
              }
            %>
            <table align="center">
                <tr>
                    <td> <input type="number" name="num1" value="<%=a%>"></td>
                </tr>
            <br>
            <tr>
                <td> <input type="number" name="num2" value="<%=b%>"></td>
            </tr>
            <br>
            <tr>
                <td> <input type="text" name="txt1" value="<%=c%>"></td>
            </tr>
            <br>
            <tr>
                <td><input type="te" name="txt2" value="<%=d%>"></td>
            </tr>
            <br>
            <tr>
                <td> <input type="number" name="num3" value="<%=ee%>"></td>
            </tr>
            <br>
            <tr>
                <td> <input type="number" name="num3" value="<%=f%>"></td>
            </tr>
            <br>
            </table>
    </body>
</html>
