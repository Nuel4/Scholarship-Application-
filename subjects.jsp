<%-- 
    Document   : subjects.jsp
    Created on : 31 Mar, 2019, 10:14:03 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
      *{
    margin: 0;
    padding: 0;
    
}
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

#s1{
    position: center;
    padding-left: 200px;
}

    </style>
</head>

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

<div class="container">
     
    <h2 align="right"><a href="index.html">BACK</a></h2>
    <%
        String id = session.getAttribute("num").toString();
        session.setAttribute("num", id);
        %>
    <h1 align="left" style="padding: 60px;">Your registration was successful.</h1>
     
    <h1 align="center" style="padding: 50px;">Choose Your three subjects</h1>
    
        
         <form method="post" action="subjects2.jsp">
             
             <table style="align:center; margin-left: 450px;">
                 <div>
                     
             <div>
                 <tr>
                    <td>SUBJECT 1</td>
                    <td><input type="text" name="sub1">
                    </td>
                    
                 </tr>
                     </div>
                     
                 <div>
                     <tr>
                    <td>SUBJECT 2</td>
                    <td><input type="text" name="sub2">
                    </td>
                     </tr>
                </div>
                     
                 
                   <div>
                       <tr>
                    <td>SUBJECT 3</td>
                    <td><input type="text" name="sub3">
                    </td>
                       </tr>
                </div>
                 </div>
             </table>      
                 
            
           
             <center> 
                 <tr>
                     <td><input type="submit" name="submit" value="SUBMIT" style="margin-bottom: 20px;"> 
                <td><input type="reset" name="rset" value="reset">
                 </tr></center>
         </form>
    </body>
</html>
