<%-- 
    Document   : ResultView2.jsp
    Created on : 13 Jan, 2019, 1:36:32 AM
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
             .tn{color: green; margin-top:40px; padding:30px;}
            .tb{font-size:30px; margin-top:10px; margin-bottom:10px;}
            <%-- body{background-color: black;}--%>
            td{color: palevioletred;}
            input{color: green;
           .tb
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
        <h2 align="center" class="tn">THIS IS YOUR FINAL RESULT</h2>
        <h2 align="right"><a href="ResultView.jsp">BACK</a></h2>
        <%
            ResultSet st;
            String tr=request.getParameter("num1");
             String ei="",sn="",co="",ef="",se="",ed="",em="",ej="", et="" ,ep="";
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
                 ep=st.getString(11);
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
            <table align="center" class="tb">
                <tr>
                    <%--   <td> COURSE </td><td><input type="text" name="te" disabled value="<%=en%>"></td>--%>
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
             <tr>
                <td>SCHOLARSHIP </td><td><input type="text" name="te" disabled value="<%=ep%>"></td>
            </tr>
            <br>
          
            </table>
    </body>
</html>
