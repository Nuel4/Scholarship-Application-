<%-- 
    Document   : ResulLogin.jsp
    Created on : 11 Jan, 2019, 1:27:15 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
              h1{color: palevioletred;}
            h2{color: teal;}
            <%--<%body{background-color: black;}--%>
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
        <%
            String aa = request.getParameter("txt1");
            String bb = request.getParameter("num");
            
                 try
              { 
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement stm =con.createStatement();
            if(aa.equals("admin") && bb.equals("admin"))
                  {
                      response.sendRedirect("adminpage.jsp");
                  }
            else
            {
                 ResultSet rt = stm.executeQuery("select * from examreg where firstname='"+aa+"' and  studentid ="+bb+"");
              if(rt.next())
              {
              
                  response.sendRedirect("ResultInfo.jsp");
              }
            
              else
              {
                  out.print("<h2>NO REGISTERED NUMBER FOUND</h2>");
              }  
            }
        }
              catch(Exception e)
              {
                 out.print(e);
                 
              }
            %>
    </body>
</html>
