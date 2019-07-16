<%-- 
    Document   : RegSELECT1.JSP
    Created on : 11 Jan, 2019, 1:45:44 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
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
            td{color: palevioletred;}
            input{color: purple;
            background-color: wheat;}
            
        </style>
    </head>
    <body>
        <h1 align="center">STUDENT REGISTRATION DETAILS!</h1>
        <h2 align="right"><a href="Choice.jsp">BACK</a></h2>
        
        <%
               int  prg = Integer.parseInt(session.getAttribute("num").toString());
            String tr=request.getParameter("num1");
             String ei="",sn="",co="",ef="",se="",ed="",et="",ec="",eg="",eh="",ea="";
             
 try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement stm =con.createStatement();
           ResultSet ty =stm.executeQuery("select * from examreg where studentid="+tr+"");
              if(ty.next())
              {
                 
                ei= ty.getString(1);
                sn= ty.getString(2);
                co =ty.getString(3);
                ef= ty.getString(4);
                se=ty.getString(5);
                ed=ty.getString(6);
                et=ty.getString(7);
                ec=ty.getString(8);
                eg=ty.getString(9);
                eh=ty.getString(10);
                ea=ty.getString(11);
              }
              else
              {
                  out.print("<h2>PLEASE ENTER CORRECT STUDENT ID</h2>");
              }
              }
              catch(Exception e)
              {
                 out.print(e); 
              }
     
            %>
            <br>
            <br>
            <table align="center">
                <tr>
                    <td> STUDENT ID</td><td><input type="text" name="te" value="<%=ei%>"></td>
                </tr>
            <br>
            <tr>
                <td>STUDENT NAME </td><td><input type="text" name="nb" value="<%=sn%>"></td>
            </tr>
            <br>
            <tr>
                <td> COLLEGE</td><td><input type="text" name="vi" value="<%=co%>"></td>
            </tr>
            <br>
            <tr>
                <td> COURSE</td><td><input type="text" name="yu" value="<%=ef%>"></td>
            </tr>
            <br>
            <tr>
                <td> SEMESTER</td><td><input type="text" name="nb" value="<%=se%>"></td>
            </tr>
            <br>
            <tr>
                <td> SUBJECT 1</td><td> <input type="text" name="nb" value="<%=ed%>"></td>
            </tr>
            <br>
            <tr>
                <td>SUBJECT 2</td><td><input type="text" name="nb" value="<%=et%>"></td>
            </tr>
            <br>
            <tr>
                <td> SUBJECT 3</td><td> <input type="text" name="nb" value="<%=ec%>"></td>
            </tr>
            
            </table>
    </body>
</html>
