<%-- 
    Document   : design.jsp
    Created on : 19 Apr, 2019, 12:35:07 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
           
            *{
                margin: 0;
                padding: 0;
                font-family: Century Gothic;
            }
header{
    background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)) ,url(../plane3.png);
    height: 100vh;
    background-size: cover;
    background-position: center;
}
ul{
     float: right;
      list-style-type: none;
      margin: 25px;
}
ul li{
   
    display: inline-block;
   
} 
ul li a{
    text-decoration: none;
    color: #fff;
    padding: 5px 20px;
    border: 1px solid transparent;
    transition: 0.6s ease;
}
ul li a:hover{
    background-clip: #fff;
    color: #000;
}
ul li.active a{
   background-clip: #fff;
    color: #000;  
}
.logo img{
    float: left;
    width: 150px;
    height: auto;
}
.main{
    max-width: 1200px;
    margin: auto;
}
.title{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
}
.title h1{
    color: #fff;
    font-size: 70px;
}
.button{
     position: absolute;
    top: 60%;
    left: 50%;
    transform: translate(-50%,-50%);
}
.btn{
    border: 1px solid #fff;
    padding: 10px 30px;
    color: #fff;
    text-decoration: none;
    transition: 0.6s ease;
}
.btn:hover{
   background-clip: #fff;
    color: #000; 
}
        </style>
    </head>
   
   
        
    <body style="padding:0; margin: 0">

        <div class="main">   
     <div class="logo">
        <img src="pic/car.png">
     </div>
        
        
 <div class="container" style="display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;">
    <p style="width:60%"><img src="pic/logoo.png">Flight Reservation system</p>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        <li class="active"><a href=".jsp">Home</a></li>
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href=".jsp">About Us</li>
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href=".jsp">Contact Us</li>
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href=".jsp"> Address</li>
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href="index.html">LOGOUT</a>
    </ul>
</div>
            <div class="title">
                <h1>web creation</h1>
            </div>     
            <div class="button">
                <a href="#" class="btn">watch movie</a>
                <a href="#" class="btn">learn more</a>
            </div>
    <div class="backimg">
        <div class="hero_text">
           
        </div>
        <div>
            
            <h1> SEARCH FOR FLIGHT</h1>
       <p font color ="00ff00"></p>
        <form method="post" action="flightcheck.jsp">
            
       
                
            <center> <table>
            <tr>
              
              From
            <select name="place" style="background-color:">
                
                <option value="Bangalore"> BANGALORE</option>
                <option value="Dehli"> DEHLI</option>
                <option value="Mysore"> MYSORE</option>
                <option value="Goa">  GOA</option>
                <option value="Mumbai">  MUMBAI</option>
                <option value="Pune">  PUNE </option>
                <option value="Kolkata" >  KOLKATA</option>
                     
            </select>
             <td></td><td></td>&nbsp;&nbsp;&nbsp;&nbsp;
   TO
              <select name="destination">
                
                <option value="Bangalore"> BANGALORE</option>
                <option value="Dehli"> DEHLI</option>
                <option value="Mysore"> MYSORE</option>
                <option value="Goa">  GOA</option>
                <option value="Mumbai">  MUMBAI</option>
                <option value="Pune">  PUNE </option>
                <option value="Kolkata" >  KOLKATA</option>
                     
            </select>

             <%-- <td>CALENDER
             <div class="calender">
                 <div class="date">
                     <div class="day">S</div>
                     <div class="day">M</div>
                     <div class="day">T</div>
                     <div class="day">W</div>
                     <div class="day">T</div>
                     <div class="day">F</div>
                     <div class="day">S</div>
                    
                         <div class="number">
                             
</div>--%>
             <td></td>
                
    <tr></tr><tr></tr><td></td>&nbsp;&nbsp;&nbsp;&nbsp;
            
            
             <%--  &nbsp;&nbsp;&nbsp;&nbsp;
                NUMBER OF SEAT:</td>
                <input type="text" name="plan" placeholder="Number Of Seat"> --%>
            </tr>
            <tr>
                <td style="color:black">DATE</td></center>
            <td> <input type="date" name="dat"></td></center>
            </tr>
</table>
            
            <tr>
            <br>
            
            <center> <td><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input  type="submit" name="submit" value="SEARCH "></td></center></tr>
       
 

</form>
         </div></div></div>
    
        
        
    
    </body>
</html>
