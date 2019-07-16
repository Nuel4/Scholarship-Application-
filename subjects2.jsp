<%-- 
    Document   : subjects2
    Created on : 31 Mar, 2019, 11:03:24 PM
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
        <style type="text/css">
            table{
                border-collapse: collapse;
                width: 100%;
                color: #2196f3;
                font-family: monospace;
                font-size: 25px;
                text-align: left;
            }
            .dnt{color: black;margin-bottom: 20px;}
        </style>
    </head>
    <body>
        <%
            ResultSet st=null;
            %>
        <%
            int p=0;
            
          String prg = session.getAttribute("num").toString();
         
          
             String subj1 =request.getParameter("sub1");
              String subj2 =request.getParameter("sub2");
               String subj3 =request.getParameter("sub3");
              //  String subj4 =request.getParameter("sub4");
                 // String subj5  =request.getParameter("sub5");
                  // String subj6=request.getParameter("sub6");
                   
                  
           
            
               
             try
              {
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement stm =con.createStatement();
             if(subj1.equals("")|| subj2.equals("") || subj3.equals(""))
            {
               out.print("You must select three subjects");
               
            }
             else
             {
              stm.execute("update examreg set sub1='"+subj1+"', sub2='"+subj2+"', sub3='"+subj3+"' where studentid ="+prg);
               st = stm.executeQuery("select * from examreg where studentid = "+prg+"");
               if(st.next())
               {
                   p =1;
               }
              }
              
              }
       
              catch(Exception e)
              {
               out.print(e);
              }
            %>
            <%
                if(p==1)
                {
                 %>
                
                  <body style="padding:0; margin: 0">
 
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
                        <h2 align="left"><a href="subjects.jsp">BACK</a></h2>
                 <table style=" margin-top: 70px;padding-right: 30px; margin-left: 70px; margin-right: 70px; width: 30px; margin-bottom: 70px;">
               
                     <tr>
                         <th class="dnt">STUDENT</th>
                      <th class="dnt">DETAILS</th>
                     </tr>
                     <tr>
                         <td>STUDENT ID</td>
                <td> <input type="text" name="stdid" value="<%=st.getString("StudentId")%>"></td>
                     </tr>
                     <tr>
                         <td> FIRST NAME</td>
     <td> <input type="text" name="stna" value="<%=st.getString("firstname")%>"></td>
                     </tr>
           
    <tr>  
        <td>LAST NAME</td>
        <td> <input type="text" name="stln" value="<%=st.getString("lastname")%>"></td>
    </tr>
         
    <tr> 
        <td>DOB</td>
        <td><input type="text" name="sdob" value="<%=st.getString("dob")%>"></td>
    </tr>
            
    <tr> 
        <td>QUALIFICATION</td>
        <td><input type="text" name="qlf" value="<%=st.getString("qualification")%>"></td>
    </tr>
    <tr> 
        <td>ADDRESS</td>
        <td><input type="text" name="add" value="<%=st.getString("address")%>"></td>
    </tr>
    <tr>
        <td>PHONE NO</td>
            <td><input type="text" name="phn" value="<%=st.getString("phone")%>"></td>
    </tr>
    <tr>
        <td>EMAIL</td>
            <td><input type="text" name="mail" value="<%=st.getString("email")%>"></td>
    </tr>
    <tr>
        <td>FIRST SUBJECT</td>
             <td><input type="text" name="sub1" value="<%=st.getString("sub1")%>"></td>
    </tr>
    <tr>
        <td> SECOND SUBJECT</td>
            <td><input type="text" name="sub2" value="<%=st.getString("sub2")%>"></td>
    </tr>
    <tr>
        <td>THIRD SUBJECT</td>
            <td><input type="text" name="sub3" value="<%=st.getString("sub3")%>"></td>
    </tr>
            
          Click here to  <a href="Choice.jsp">Proceed</a>
            <br>
            </table>
              <%
                }
%>
    </body>
</html>
