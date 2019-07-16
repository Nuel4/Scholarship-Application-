<%-- 
    Document   : resultdelete2.jsp
    Created on : 4 Apr, 2019, 1:27:28 AM
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
       <h1 align="center">DELETED ACCOUNT PAGE</h1>
         <h1 align="right"><a href="adminduties.jsp">BACK</a></h1>
    
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
                    out.print("<h3>successfully deleted </h3>");
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
