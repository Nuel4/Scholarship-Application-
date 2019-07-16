<%-- 
    Document   : adminstudents
    Created on : 23 Apr, 2019, 12:11:10 PM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style>
        body{
             background-image: url(pic/air.jpg);
        }
        th{
          background-color: white;
         
        }
        td{
            background-color: green; 
        }
      
    </style>
    </head>
    
        <body style="padding:0; margin: 0">
 <br><br>
    <div class="backimg">
        <div class="hero_text"></div>
       

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
         <h2 align="right"><a href="adminpage.jsp">BACK</a></h2>
          <table align="center" cellpadding="2" cellspacing="2" border="1">
   <th>STUDENT ID</th>
   <th>FIRST NAME</th><th>ENGLISH TEST</th><th>MATHEMATICS</th><th>JAVA</th><th>MAXIMUM MARKS</th><th>TOTAL MARKS OBTAINED</th><th>AVERAGE </th><th>GRADE</th>
    
        <%!
            String keep;
            int rgn;
            ResultSet rs,rs1;
            Statement stmt,stmt1;
        int f=0;
            %>
        <%
           /* String cusid=session.getAttribute("regno").toString();
            String fr = request.getParameter("place"); 
               String des = request.getParameter("destination");
                String dd = request.getParameter("dat");*/
               
           
               try
            {
     // String cumtomerno =session.getAttribute("regno").toString();
      
            
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp","root","root");
stmt=con.createStatement(); 
stmt1=con.createStatement(); 
 
rs=stmt.executeQuery("select *from result ");
//out.print(rs=stmt.executeQuery("select * from result "));

while(rs.next())
{


    %>
   
    
    <tr>
    
    
        <td><%=rs.getString("studentid")%></a></td>
        <td> <%=rs.getString("name")%></td>
        
        <td>  <%=rs.getString("english")%></td>
        <td> <%=rs.getString("maths")%></td>
      <td> <%=rs.getString("java")%></td>
        <td>  <%=rs.getString("max")%></td>
        <td>  <%=rs.getString("totalmarks")%></td>
         <td>  <%=rs.getString("avg")%></td>
          <td>  <%=rs.getString("grade")%></td>
          <td>  <%=rs.getString("position")%></td>
           </tr>
  <%
  }
 rs1=stmt1.executeQuery("select * from result");
if(rs1.next())
{
  out.print("<center><br><h3> STUDENTS RESULTS</h3> <br></center><br><br>");

}


 else
{
out.println("No data found");
}


}
catch(Exception e)
        {
out.println("No Datas Found");
         e.printStackTrace();
       
        }
        %>
            
            
    </table>         
</html>
