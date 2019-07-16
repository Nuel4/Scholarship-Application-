
<%-- 
    Document   : ResultUpdate.jsp
    Created on : 11 Jan, 2019, 10:25:37 PM
    Author     : Admin
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
            <%-- body{background-color: black;}--%>
            td{color: wheat;}
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
        
        <h1 align="center">RESULT UPDATION  PAGE</h1>
        <h2 align="right"><a href="#.jsp">BACK</a></h2>
        <br>
       
        <table align="center">
            <h2 align="center">ENTER STUDENT DETAILS BELOW</h2>
            <tr>
          
             <%
            
            int prg;
            int f=0;
            %>
            <%
                Connection con;
                
                Statement stmt=null;
                ResultSet sr=null;
                %>
                <%
                   // prg = Integer.parseInt( session.getAttribute("num").toString());
                    String idn = request.getParameter("stud");
                   
                    
                    %>
                <%
                    try
{

Class.forName("com.mysql.jdbc.Driver");
 con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp","root","root");
 stmt=con.createStatement();
 sr = stmt.executeQuery("select * from result where studentid = "+idn);
 String deb;
 if(sr.next())
 {
     f=1;
     session.setAttribute("noo", idn);
 
   out.print("<center><h1>Student's Details</h1></center>");
 }
 else
 {
     out.print("number not found");
     
 }
 }
                    catch(Exception e)
                    {
                      e.printStackTrace();
                    }
            %>
            <%
                if(f==1)
                {
                %>
               <body  bgcolor="aaccda">
<font face="Times New Roman" color=#330033 size=3>

 <form method="post" action="RegUpdate2.jsp">
    <center><table border="0">
            <td><b><i>Student Number:</b></i></td>
<td><input type=text name=hrg size="10"   disabled value= <%=sr.getString("studentid") %> ></td>


</tr>
<tr>
<td><b><i> NAME:</b></i></td>
<td><input type=text name=hr size="10" value=<%=sr.getString("name")%> ></td>
</tr>
<tr>
<td><b><i>ENGLISH 1:</b></i></td>
<td><input type=text name=work size="20"  value=<%= sr.getString("english") %>></td>
</tr>
<tr>
<td><b><i> MATHEMATICS 2:</b></i></td>
<td><input type=text name=hosp size="20"  value=<%= sr.getString("maths") %>></td>
</tr>

<tr>
<td><b><i>JAVA 3 :</b></i></td>
<td><input type=text name=doctor size="20"  value=<%= sr.getString("java") %>></td>
</tr>



</table>

<table border="0" width="500">
    <td><b><i>TOTAL MARKS 1:</b></i></td>
<td><input type=text name=he size="20"  value=<%= sr.getString("totalmarks") %>></td>
<tr>
<td><b><i>AVERAGE MARK:</b></i></td>
<td><input type=text name=heam size="15"  value=<%= sr.getString("avg") %>></td>
<td>GRADE</td>
<td><input type=text  name=healtyear  value=<%= sr.getString("grade") %>></td>
</tr>
<tr>

            </tr>
              </table>
<tr> <br><br><td> <input type="submit" name="submit" value="UPDATE"></td></tr>
</center>
</form>
<%
}
%>
        </form>
    </body>
</html>
