<%-- 
    Document   : RegUpdate.jsp
    Created on : 10 Jan, 2019, 8:09:03 PM
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
 .tb{font-size: 30px;}
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
    <h1 align="right"><a href="Choice.jsp">BACK</a></h1>
    
    <body>
       
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
               
            rs=stm.executeQuery("select *from examreg where studentid ='"+prg+"'");
               if(rs.next())
               {
                   f=1;
                   out.print("<h1 align='center' style='color:black'> BELOW IS YOUR INFORMATION.MAKE CHANGES IF NECCESSARY</h1><br>");
                   out.print("<br><h3>Below is wat you submitted!!</3>");
                   
               }
               else
               {
                   out.print("<h3>The student id is wrong</h3>");
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
                
         <form method="post" action="RegUpdate2.jsp">
             <table align="center" style="border: 1" class="tb">
            <br><br>
            <tr>
                <td>Student Id</td>
                <td> <input type="text" name="num1" readonly value=<%=rs.getString("studentid")%>></td>
                
            </tr>
            
             <tr>
                  <td>First Name</td>
                 <td> <input type="text" name="num2" value=<%=rs.getString("firstname")%>></td>
             </tr>
            
             <tr>
                  <td>Last Name</td>
            <td> <input type="text" name="txt1" value=<%=rs.getString("lastname")%>> </td>
                 </tr>
           
             <tr>
                  <td>DOB</td>
            <td> <input type="date" name="txt2" value=<%=rs.getString("dob")%>> </td>
             </tr>
            
             <tr>
                  <td>Qualification</td>
             <td><input type="text" name="qly" value=<%=rs.getString("qualification")%> ></td>
                  </tr
                  <tr>
                  <td>Address</td>
             <td><input type="text" name="add" value=<%=rs.getString("address")%>> </td>
                  </tr>
                  <tr>
                  <td>Phone No</td>
             <td><input type="text" name="ph" value=<%=rs.getString("phone")%>> </td>
                  </tr>
                   <tr>
                  <td>Email</td>
             <td><input type="text" name="mail" value=<%=rs.getString("email")%>> </td>
                  </tr>
            
             <tr>
                  <td>Subject 1</td>
                 <td><input type="text" name="sub1" value=<%=rs.getString("sub1")%>></td>
                      </tr>
            
             <tr>
                  <td>Subject 2</td>
            <td> <input type="text" name="sub2" value=<%=rs.getString("sub2")%>> </td>
                 </tr>
           
             <tr>
                 <td>Subject 3</td>
                 <td><input type="text" name="sub3" value=<%=rs.getString("sub3")%>> </td>
                      </tr>
                      <tr>
                 <td>Scholarship</td>
                 <td><input type="text" name="sub3" value=<%=rs.getString("position")%>> </td>
                      </tr>
        </table>
                      <center>  <input type="submit" name="submit" value="UPDATE"></center>
        </form>
                      
                      <%
                        }
%>
    </body>
</html>
