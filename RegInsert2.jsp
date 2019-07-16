<%-- 
    Document   : Registration.jsp
    Created on : 10 Jan, 2019, 6:31:34 PM
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
           *{
    margin: 0;
    padding: 0;
}

body{
   
}

input[type=text], select {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
h1{
    padding: 1px 12px 12px 0;
    color: blue;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
  color: blue;
}

input[type=submit] {
  background-color: #4CAF50;
  color: red;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
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
 

<div class="container">
     
     
    
 
        <h1 align="center">STUDENT REGISTRATION DETAILS!</h1>
        <h1 align="right"><a href="RegInsert1.jsp">BACK</a></h1>
        <%!
             String b,bb,bbb,bbbb,bbbbb,bbbbbb; 
   ResultSet st,st1;
            %>
        <%
            String id =request.getParameter("fid");
             String first =request.getParameter("fname");
              String last =request.getParameter("lname");
               String dbirth =request.getParameter("dob");
               
                  String qlify =request.getParameter("qly");
                   String addr =request.getParameter("add");
                    String phone =request.getParameter("ph");
              String eml =request.getParameter("mail");
               
                 
             try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement stm =con.createStatement();
                if(id==""|| first==""||last==""||dbirth==""||qlify==""||eml=="")
                {
                    out.print("<h1>You have left some filed(s) empty</h1>");
                    
                }
                else
                
                  st1 = stm.executeQuery("select * from examreg where studentid = "+id+"");
               if(st1.next())
               {
                  out.print("<h3><b>Registration number already used by another student</></h3>");
               }
                
                else
                {
                String query="insert into examreg values ('"+id+"' ,'"+first+"','"+last+"','"+dbirth+"','"+qlify+"','"+addr+"','"+phone+"','"+eml+"','"+b+"','"+bb+"','"+bbb+"','"+bbbb+"' )";
              
                stm.execute(query);
               
                st = stm.executeQuery("select * from examreg where studentid = "+id+"");
               if(st.next())
               {
                   session.setAttribute("num", id);
                   response.sendRedirect("subjects.jsp");
               }
               else
               {
                   out.print("<h1>you registration failed</h1>");
               }
              }
              }
              catch(Exception e)
              {
                 e.printStackTrace();
              }
            %>
            <table>
               
    </body>
</html>
