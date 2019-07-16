<%-- 
    Document   : answer2.jsp
    Created on : 4 Apr, 2019, 1:59:03 AM
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
    </head>
    <h2 align="right"><a href="adminduties.jsp">BACK</a></h2>
    <body>
        <%
            ResultSet rt;
            %>
         <%!
            int nu;
            String na, grd1,grd2,grd3,grd4;
            
            int ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,ans11,ans12,ans13,ans14,ans15;
            
            int total,grade,sec,entotal,matotal,javtotal ,num;
            double avg;
            %>
       <%
            String su = request.getParameter("sub");
            String qt1 = request.getParameter("txt1");
            String qt2 = request.getParameter("txt2");
             String qt3 = request.getParameter("txt3");
              String qt4 = request.getParameter("txt4");
               String qt5 = request.getParameter("txt5");
                //String mon = request.getParameter("txt6");
              // String yr = request.getParameter("txt7");
               
                   
                    
          //  int prg =Integer.parseInt(session.getAttribute("noo").toString());
            %>
            <%
                 try
              { 
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement stm =con.createStatement();
           
stm.execute("insert into password values ('"+su+"','"+qt1+"','"+qt2+"','"+qt3+"','"+qt4+"','"+qt5+"')");
             rt=stm.executeQuery("select *from password where subj ='"+su+"'");
               if(rt.next())
               {
                   
                   out.print(" ANSWERS SUCCESSFULLY SUMBITTED ");
                   
               }
               else
               {
                   out.print("Not submitted");
                   
               }
             
              }
              catch(Exception e)
              {
                 out.print(e);
                 
              }
            %>
    </body>
</html>
