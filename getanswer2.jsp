<%-- 
    Document   : getanswer2.jsp
    Created on : 4 Apr, 2019, 3:37:22 AM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
            String tr=request.getParameter("txt1");
             String ei="",sn="",co="",ef="",se="",ed="",em="",ej="", et="";
             int k=0;
             
             
 try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement stm =con.createStatement();
               
                String query="select * from password where subj='"+tr+"'";
             st =  stm.executeQuery(query);
              if(st.next())
              {
                 
                ei= st.getString(1);
                sn= st.getString(2);
                co =st.getString(3);
                ef= st.getString(4);
                se=st.getString(5);
               ed=st.getString(6);
             k=1;
              }
             /* if(k==1)
              {
                st =  stm.executeQuery("select * from examreg where StudentId ='"+tr+"'");
                
                String  en = st.getString(4);
                }*/
              
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
                    <%--   <td> COURSE </td><td><input type="text" name="te" disabled value="<%=en%>"></td>--%>
                </tr>
                <table align="center">
            <tr>
                <td> SUBJECT :</td><td><input type="text" name="te" disabled value="<%=ei%>"></td>
            </tr>
                </table>
            
            <table align="center">
            <tr>
                <td> QUESTION 1 :</td><td><input type="text" name="nb" disabled value="<%=sn%>"></td>
            </tr>
            
            <tr>
                <td>QUESTION 2: </td><td> <input type="text" name="vi"disabled value="<%=co%>"></td>
            </tr>
            <br>
            <tr>
                <td> QUESTION 3: </td><td><input type="text" name="te" disabled value="<%=ef%>"></td>
            </tr>
            <br>
            <tr>
                <td>QUESTION 4:</td><td><input type="text" name="te" disabled value="<%=se%>"></td>
            </tr>
           
            <tr>
                <td>QUESTION 5:</td><td><input type="text" name="ter" disabled value="<%=ed%>"></td>
            </tr>
            
          
            </table>
    </body>
</html>
