<%-- 
    Document   : RegUpdate2
    Created on : 10 Jan, 2019, 8:12:13 PM
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
         <h1 align="right"><a href="Choice.jsp">BACK</a></h1>
     <h3 align="center">UPDATED REGISTRATION FORM</h3>
         <%
             ResultSet rs;
                  int  prg = Integer.parseInt(session.getAttribute("num").toString());
                    %>
         <%
             String sid = request.getParameter("num1");
             String fname = request.getParameter("num2");
             String lname = request.getParameter("txt1");
             String dob = request.getParameter("txt2");
             String qlfy = request.getParameter("qly");
          
             String addr = request.getParameter("add");
             String phn = request.getParameter("ph");
             String eml = request.getParameter("mail");
             String subj1 = request.getParameter("sub1");
             String sub2= request.getParameter("sub2");
             String sub3= request.getParameter("sub3");
             //String sid = request.getParameter("num1");
         try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement stm =con.createStatement();
             //String query="insert into examreg values ('"+id+"' ,'"+first+"','"+last+"','"+dbirth+"','"+qlify+"','"+addr+"','"+phone+"','"+eml+"','"+b+"','"+bb+"','"+bbb+"','"+bbbb+"' )";
               stm.execute("update examreg set studentid='"+sid+"', firstname='"+fname+"',lastname='"+lname+"',dob='"+dob+"',qualification='"+qlfy+"',address='"+addr+"',phone='"+phn+"',email='"+eml+"',sub1='"+subj1+"',sub2='"+sub2+"',sub3='"+sub3+"' where studentid ='"+sid+"'");
                
                rs =stm.executeQuery("select * from examreg where studentid = '"+sid+"'");
               
               if(rs.next())
               {
                  out.print("<h1>Successfully updated</h1>");
                  
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
