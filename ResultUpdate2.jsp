<%-- 
    Document   : ResultUpdate2.jsp
    Created on : 12 Jan, 2019, 10:50:57 PM
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
        <h3 align="center">STUDENT RESULT UPDATED PAGE!</h3>
        <h3 align="right"><a href="ResultUpdate.jsp">BACK</a></h3>
         <%
             ResultSet rs;
                  int  prg = Integer.parseInt(session.getAttribute("noo").toString());
                    %>
         <%
            String std=request.getParameter("hrg");
           
          
            String nam = request.getParameter("hr");
             String col = request.getParameter("work");
              String cos = request.getParameter("hosp");
              String sem = request.getParameter("doctor");
              String sub = request.getParameter("he");
              String sub2 = request.getParameter("heam");
              String sub3 = request.getParameter("healtyear");
             // String sub4 = request.getParameter("he4");
              //String sub5 = request.getParameter("he5");
            //String sub6 = request.getParameter("he6");
              try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement stm =con.createStatement();
                stm.execute("update result set studentid="+prg+", studname='"+nam+"',english='"+col+"',maths='"+cos+"',java='"+sem+"',totalmarks='"+sub+"',avg='"+sub2+"', grade='"+sub3+"' where Studentid = "+prg+"");
            rs=stm.executeQuery("select * from result where studentid ="+prg );
               if(rs.next())
               {
                   out.print("<h3> successfully updated!!</3>");
                   
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
        <table align="center">
            <br><br>
              <tr>
                <th>STUDENT NAME</th>
                <th>MARKS</th><th>COURSE</th><th>GRADE</th>
         
        </table>
            <br>
            <tr>
                <td>STUDENT ID</td>
                <td> <input type="text" name="num1" value="<%=prg%>"></td>
            </tr>
            
             <tr>
                  <td>STUDENT NAME</td>
                 <td> <input type="text" name="num2" value="<%=nam%>"></td>
             </tr>
            
             <tr>
                  <td>ENGLISH</td>
            <td> <input type="text" name="txt1" value="<%=col%>"> </td>
                 </tr>
           
             <tr>
                  <td>MATHS</td>
            <td> <input type="text" name="txt2" value="<%=cos%>"> </td>
             </tr>
            
             <tr>
                  <td>JAVA</td>
             <td><input type="text" name="num3" value="<%=sem%>"> </td>
                  </tr>
            
             <tr>
                  <td>TOTAL MARKS</td>
                 <td><input type="text" name="num4" value="<%=sub%>"></td>
                      </tr>
            
             <tr>
                  <td>AVERAGE MARKS</td>
            <td> <input type="text" name="txt3" value="<%=sub2%>"> </td>
                 </tr>
           
             <tr>
                 <td>GRADE</td>
                 <td><input type="text" name="txt4" value="<%=sub3%>"> </td>
                      </tr>
           
            
             
        </table>
               
    </body>
        <table align="center">
           
          
    </body>
</html>
