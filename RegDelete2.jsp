<%-- 
    Document   : RegDelete2.jsp
    Created on : 11 Jan, 2019, 1:47:24 AM
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
             
        </style>
    </head>
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
    <body>
        <h1 align="center">DELETED ACCOUNT PAGE</h1>
         <h1 align="right"><a href="Choice.jsp">BACK</a></h1>
    
        <%
            String de = request.getParameter("digit");
           // session.setAttribute("bb", nu.toString());
            
          
              try
                  {
                   Class.forName("com.mysql.jdbc.Driver");
                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement del =con.createStatement();
                String query="delete from examreg where studentid ="+de+"";
               int dd =del.executeUpdate(query);
                if(dd==1)
                {
                    out.print("<h3>you have successfully deleted your account</h3>");
                }
                else
                {
                    out.print("<h3>THE STUDENT ID DOES NOT EXIST</h3>");
                }
                       }
                catch(Exception e)
                 {
                    out.print(e);       
                }
                %>
    </body>
</html>
