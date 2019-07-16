<%-- 
    Document   : adminview2
    Created on : 23 Apr, 2019, 1:58:56 PM
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
        <style>
            .cn{font-size: 40px;}
.st{margin-top: 30px;color: green;padding: 20px;}
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
             ResultSet rs=null;
                  String prg =request.getParameter("stud");
                 
                  
                  int f=0;
                  
                    %>
         <%
           
              try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement stm =con.createStatement();
               
            rs=stm.executeQuery("select *from result where studentid ='"+prg+"'");
               if(rs.next())
               {
                   f=1;
                  
                   
               }
               else
               {
                   out.print("<h3>wrong input</h3>");
               }
              }
              catch(Exception e)
              {
                 out.print(e); 
              }
        %>
        
        <%
            if(f==1)  
            {
                %>
                
         <form>
           <h2 align="right"><a href="adminpage.jsp">BACK</a></h2>
                <h2 class="st" align="center">Student Result</h2>
        <table class="cn" align="center" style="border: 1">
            <br><br>
            <tr>
                <td>Student Id</td>
                <td> <input type="text" name="num1" value=<%=rs.getString("studentid")%>></td>
                
            </tr>
            
             <tr>
                  <td>Name</td>
                 <td> <input type="text" name="num2" value=<%=rs.getString("name")%>></td>
             </tr>
            
             <tr>
                  <td>English Test</td>
            <td> <input type="text" name="txt1" value=<%=rs.getString("english")%>> </td>
                 </tr>
           
             <tr>
                  <td>Mathematics</td>
            <td> <input type="text" name="txt2" value=<%=rs.getString("maths")%>> </td>
             </tr>
            
             <tr>
                  <td>Java</td>
             <td><input type="text" name="qly" value=<%=rs.getString("java")%> ></td>
                  </tr
                  <tr>
                  <td>Total Marks</td>
             <td><input type="text" name="add" value=<%=rs.getString("totalmarks")%>> </td>
                  </tr>
                  <tr>
                  <td>Average Mark</td>
             <td><input type="text" name="ph" value=<%=rs.getString("avg")%>> </td>
                  </tr>
                   <tr>
                  <td>Grade</td>
             <td><input type="text" name="mail" value=<%=rs.getString("grade")%>> </td>
                  </tr>
            <td>Scholarship</td>
             <td><input type="text" name="slp" value=<%=rs.getString("position")%>> </td>
                  </tr>
            
           
        </table>
               
        </form>
                      
                      <%
                        }
%>
    </body>
</html>
