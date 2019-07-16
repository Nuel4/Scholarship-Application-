
<%-- 
    Document   : alternate
    Created on : 22 Apr, 2019, 6:17:28 PM
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
  margin:0;
  padding:0;
  box-sizing:border-box;
}
.wrapper{
  min-height:100vh;
  background-image: url(pic/air.jpg);
  background-repeat: no-repeat;
  background-size: cover;
  background-color:skyblue;
 
  font-family: 'Open Sans', sans-serif;
  padding-top:90px;
}

.container1{
  
}

.container{
  max-width:300px;
  margin:0 auto;
  background-color: white;
  text-align:center;
  padding:50px 0;
  box-shadow:0 0 20px rgba(0,0,0,.4);
  border-radius:3px;
}

form{
  max-width:250px;
  margin:0 auto;
  text-align:left;
}
div.group{
  margin-top:15px;
}
label{
  display:block;
  margin-bottom:5px;
 
}
div.group input{
  width:100%;
  padding:10px 4px;
  outline:none;
}


input[type="submit"]{
  padding:15px 35px;
  outline:none;
  border:None;
  background-color:yellowgreen;
  color:white;
  transition:all .3s ease-in-out;
}
input[type="submit"]:hover{
  cursor:pointer;
  box-shadow:0 10px 15px -5px rgba(0,0,0,0.4);
}
</style>
    </head>
   
   
            <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width: 40%;">
                <li style="background: white; padding:3px 15px; border-radius:5px"><a href="home.jsp">Home</a></li>
                <li style="background: white; padding:3px 15px; border-radius:5px"><a href="about.jsp">About Us</li>
                <li style="background: white; padding:3px 15px; border-radius:5px"><a href="contact.jsp">Contact Us</li>
                <li style="background: white; padding:3px 15px; border-radius:5px"><a href="address.jsp"> Address</li>
                <li class="button" style="background: yellow; padding:3px 15px; border-radius:5px"><a href="register.jsp" style="color:#000; text-decoration: none;">Sign up</a></li>
            </ul>
        </div>
        
        <div class="wrapper" >
  <div class="container">
   
      <h1>Type of user</h1>
   
    <form method="post" action="general.jsp">
      <div class="group">
        <label for="user id">USER TYPE:</label>
        <input type="text" id="em" name="reg" placeholder="user type">
      </div>
     
        <div>
      <input type="submit" value="Login" id="submit">
        </div>
    </form>
 
    </body>
</html>
