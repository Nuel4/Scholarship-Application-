<%-- 
    Document   : cancel3
    Created on : 23 Apr, 2019, 1:20:53 PM
    Author     : Admin
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
         <h1 align="right"><a href="adminpage.jsp">BACK</a></h1>
     <h3 align="center">UPDATED REGISTRATION FORM</h3>
         <%
             ResultSet rs;
                 
                    %>
         <%
             String sid = request.getParameter("num1");
             String fname = request.getParameter("num2");
             String eng = request.getParameter("txt1");
             String mat = request.getParameter("txt2");
             String jav = request.getParameter("qly");
          
             String tot = request.getParameter("add");
             String avg = request.getParameter("ph");
             String gra = request.getParameter("mail");
             
              String sch = request.getParameter("sc");
           
         try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement stm =con.createStatement();
             //String query="insert into examreg values ('"+id+"' ,'"+first+"','"+last+"','"+dbirth+"','"+qlify+"','"+addr+"','"+phone+"','"+eml+"','"+b+"','"+bb+"','"+bbb+"','"+bbbb+"' )";
               stm.execute("update result set studentid='"+sid+"', name='"+fname+"',english='cancelled',maths='cancelled',java='cancelled',totalmarks='cancelled',avg='cancelled',grade='cancelled',position ='cancelled' where studentid ='"+sid+"'");
                
                rs =stm.executeQuery("select * from result where studentid = '"+sid+"'");
               
               if(rs.next())
               {
                  out.print(" <h2 style='color:red'>Student's result is cancelled successfully</h2>");
                  
               }
               else
               {
                   out.print("Not updated");
               }
              }
              
              catch(Exception e)
              {
                 e.printStackTrace();
              }
            %>
      
    </body>
</html>
