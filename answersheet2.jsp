<%-- 
    Document   : ResultDelet2.jsp
    Created on : 13 Jan, 2019, 2:08:08 AM
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
              h3{color: palevioletred;}
            h2{color: teal;}
            
            <%-- body{background-color: black;}--%>
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
        <h2 align="center">BELOW IS YOUR SUBMITTED ANSWERS!</h2>
       <h2 align="right"><a href="ResultInfo.jsp">BACK</a></h2>
        <%!
Connection con;
Statement stmt;
ResultSet rs,rs1;
String name,cos,id, ans1,ans2,ans3,ans4,ans5,tot;
String name2,cos2,id2, ans21,ans22,ans23,ans24,ans25,tot2;
String name3,cos3,id3, ans31,ans32,ans33,ans34,ans35,tot3,lname;
int p=0;
            %>
<%
   
    String pwd =request.getParameter("digit");
  
%>


<%
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp","root","root");

stmt=con.createStatement();

ResultSet rt =stmt.executeQuery("select * from english where studentid ='"+pwd+"'" );
if(rt.next())
{ 
    p=1;
   id =rt.getString(1);
 name  = rt.getString(2);
 
  cos=rt.getString(3);
  
  ans1 =rt.getString(4);
  ans2 =rt.getString(5);
 ans3=rt.getString(6);
  ans4 =rt.getString(7);
  ans5 =rt.getString(8);
  tot =rt.getString(9);
}
else
{
   // out.print("given id not found");  
}
}   
catch(Exception e2)
{
out.println(e2.getMessage());
}

%>


<%
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp","root","root");

stmt=con.createStatement();

ResultSet rt =stmt.executeQuery("select * from maths where studentid ='"+pwd+"'" );
if(rt.next())
{ 
    p=1;
   
 
  cos2=rt.getString(3);
  
  ans21 =rt.getString(4);
  ans22 =rt.getString(5);
 ans23=rt.getString(6);
  ans24 =rt.getString(7);
  ans25 =rt.getString(8);
  tot2 =rt.getString(9);
}
else
{
   
}
}   
catch(Exception e2)
{
out.println(e2.getMessage());
}

%>


<%
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp","root","root");

stmt=con.createStatement();

ResultSet rt =stmt.executeQuery("select * from java where studentid ='"+pwd+"'" );
if(rt.next())
{ 
    p=1;
   
 
  cos3=rt.getString(3);
  
  ans31 =rt.getString(4);
  ans32 =rt.getString(5);
 ans33=rt.getString(6);
  ans34 =rt.getString(7);
  ans35 =rt.getString(8);
  tot3 =rt.getString(9);
}
else
{
     
}
}   
catch(Exception e2)
{
out.println(e2.getMessage());
}

%>


<%
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp","root","root");

stmt=con.createStatement();

ResultSet rt =stmt.executeQuery("select * from examreg where studentid ='"+pwd+"'" );
if(rt.next())
{ 
    p=1;
  
 
  lname=rt.getString(3);
  
  
  
}
else
{
  out.print("<br> <h2 style='color:black'>The id you entered is wrong</h2> ");
}
}   
catch(Exception e2)
{
out.println(e2.getMessage());
}

%>


        <%
            if(p==1)
            {
            %>    
            
            <table>
           
                <tr>
                    <td> STUDENT ID</td><td><input type="text" name="te" value="<%=id%>"></td>
                </tr>
                <tr>
                    <td> FIRST NAME</td><td><input type="text" name="yu" value="<%=name%>"></td></tr>
                
                </table>
               
           
                    <table>
            <tr>
                <td>LAST NAME </td><td><input type="text" name="nb" value="<%=lname%>"></td>
            </tr>
             
                </table>
            <table>
                <th>
                <td><h1>ENGLISH LANGUAGE</h1></td>
            </th>
            <br><br>
             <tr>
                    <td>COURSE ID</td><td><input type="text" name="n" value="<%=cos%>"></td>
                </tr>
            </table>
                 <table style="margin-top: 10px;padding-left: 30px; background-clip: blue; align-content: center; font-size: 30px;">
                
                     <tr>
                <td> QUESTION 1:</td><td><input type="text" name="vi" disabled value="<%=ans1%>"></td>
            </tr>
            
            <tr>
                 <td> QUESTION 2:</td><td><input type="text" name="yu" disabled value="<%=ans2%>"></td>
            </tr>
            
            <tr>
                 <td> QUESTION 3:</td><td><input type="text" name="nb" disabled value="<%=ans3%>"></td>
            </tr>
            
            <tr>
                <td> QUESTION 4:</td><td> <input type="text" name="nb" disabled value="<%=ans4%>"></td>
            </tr>
            
            <tr>
                <td> QUESTION 5:</td><td><input type="text" name="nb" disabled value="<%=ans5%>"></td>
            </tr>
            <tr>
                <td> TOTAL</td><td><input type="text" name="vi" disabled value="<%=tot%>"></td>
            </tr> 
                </table>
           <table>
                <th>
                <td><h1>MATHEMATICS</h1></td>
           </th>
                <tr>
                    <td>COURSE ID</td><td><input type="text" name="n" value="<%=cos2%>"></td>
                </tr>
            </th>
            </table>
                <table style="margin-top: 10px;padding-left: 30px; background-clip: blue; align-content: center; font-size: 30px;">
                
                     <tr>
                <td> QUESTION 1:</td><td><input type="text" name="vi" disabled value="<%=ans21%>"></td>
            </tr>
            <br>
            <tr>
                 <td> QUESTION 2:</td><td><input type="text" name="yu" disabled value="<%=ans22%>"></td>
            </tr>
            <br>
            <tr>
                 <td> QUESTION 3:</td><td><input type="text" name="nb" disabled value="<%=ans23%>"></td>
            </tr>
            <br>
            <tr>
                 <td> QUESTION 4:</td><td> <input type="text" name="nb" disabled value="<%=ans24%>"></td>
            </tr>
            <br>
            <tr>
                <td> QUESTION 5:</td><td><input type="text" name="nb" disabled value="<%=ans25%>"></td>
            </tr>
            <tr>
                <td> TOTAL</td><td><input type="text" name="vi" disabled value="<%=tot2%>"></td>
            </tr> 
                </table>
            <table>
                <th>
                <td><h1>JAVA</h1></td>
            </th>
                <tr>
                    <td>COURSE ID</td><td><input type="text" name="n" value="<%=cos3%>"></td>
                </tr>
            
            </table>
                <table style="margin-top: 10px;padding-left: 30px; background-clip: blue; align-content: center; font-size: 30px;">
                
                     <tr>
                <td> QUESTION 1:</td><td><input type="text" name="vi" disabled value="<%=ans31%>"></td>
            </tr>
            <br>
            <tr>
                 <td> QUESTION 2:</td><td><input type="text" name="yu" disabled value="<%=ans32%>"></td>
            </tr>
            <br>
            <tr>
                 <td> QUESTION 3:</td><td><input type="text" name="nb" disabled value="<%=ans33%>"></td>
            </tr>
            <br>
            <tr>
                 <td> QUESTION 4:</td><td> <input type="text" name="nb" disabled value="<%=ans34%>"></td>
            </tr>
            <br>
            <tr>
                <td> QUESTION 5:</td><td><input type="text" name="nb" disabled value="<%=ans35%>"></td>
            </tr>
            <tr>
                <td> TOTAL</td><td><input type="text" name="vi" disabled value="<%=tot3%>"></td>
            </tr> 
                </table>
                <%
                    }
%>
    </body>
</html>
