<%-- 
    Document   : adminresultview2.jsp
    Created on : 4 Apr, 2019, 1:05:37 AM
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
         <h2 align="center">THIS IS YOUR FINAL RESULT</h2>
        <h2 align="right"><a href="adminduties.jsp">BACK</a></h2>
        <%
            ResultSet st;
            String tr=request.getParameter("num1");
             String ei="",sn="",co="",ef="",se="",ed="",em="",ej="", et="",en="";
             int k=0;
             
             
 try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement stm =con.createStatement();
               
                String query="select * from result where studentid='"+tr+"'";
             st =  stm.executeQuery(query);
              if(st.next())
              {
                 
                ei= st.getString(1);
                sn= st.getString(2);
                co =st.getString(3);
                ef= st.getString(4);
                se=st.getString(5);
                et=st.getString(6);
                ed=st.getString(7);
                em=st.getString(8);
                ej=st.getString(10);
             k=1;
              }
             
              else
              {
                  out.print("<h1>pleaase enter the the right id</h1>");
              }
              }
              catch(Exception e)
              {
                 out.print(e); 
              }
     
            %>
            
              <%
            
 try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement stm =con.createStatement();
               
                String query="select * from examreg where studentid='"+tr+"'";
             st =  stm.executeQuery(query);
              if(st.next())
              {
                 
                en= st.getString(4); 
             k=1;
              }
             
              else
              {
                  out.print("<h1>pleaase enter the the right id</h1>");
              }
              }
              catch(Exception e)
              {
                 out.print(e); 
              }
     
            %>
            <br>
            <br>
            <table align="center">
                <tr>
                     <td> COURSE </td><td><input type="text" name="te" disabled value="<%=en%>"></td>
                </tr>
            <br>
            <tr>
                <td> STUDENT ID </td><td><input type="text" name="te" disabled value="<%=ei%>"></td>
            </tr>
            <br>
            <tr>
                <td> STUDENT NAME </td><td><input type="text" name="nb" disabled value="<%=sn%>"></td>
            </tr>
            <br>
            <tr>
                <td>ENGLISH </td><td> <input type="text" name="vi" disabled value="<%=co%>"></td>
            </tr>
            <br>
            <tr>
                <td> MATHS </td><td><input type="text" name="te" disabled value="<%=ef%>"></td>
            </tr>
            <br>
            <tr>
                <td>JAVA </td><td><input type="text" name="te" disabled value="<%=se%>"></td>
            </tr>
            <tr>
                <td>MAXIMUM MARKS </td><td><input type="text" name="te" disabled value="<%=et%>"></td>
            </tr>
            <tr>
                <td>TOTAL MARKS </td><td><input type="text" name="te" disabled value="<%=ed%>"></td>
            </tr>
            <tr>
                <td>AVERAGE MARK </td><td><input type="text" name="te" disabled value="<%=em%>"></td>
                
            </tr>
            <tr>
                <td>GRADE </td><td><input type="text" name="te" disabled value="<%=ej%>"></td>
            </tr>
            <br>
          
            </table>
    </body>
</html>
