<%-- 
    Document   : RegisInsert1.jsp
    Created on : 11 Jan, 2019, 11:31:37 AM
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
  box-sizing: border-box;
}
body{
   
}

input[type=text], select {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
h1{
    padding: 1px 12px 12px 0;
    color: blue;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
  color: blue;
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

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
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
 


<div class="container">
     
    <form method="post" action="RegInsert2.jsp">
        <h1 align="center">APPLICANT'S DETAIL </h1> 
        <center> <div style="width:30%; float: none;">
                
                 <div class="row">
      <div class="col-55">
        <label for="cusid">STUDENT ID</label>
        <td>*</td>
      </div>
      <div class="col-75">
          <input type="text" id="fid" name="fid" size="25" placeholder="student id">
      </div>
    </div>
    <div class="row">
      <div class="col-55">
        <label for="cusid">FIRST NAME</label>
        <td>*</td>
      </div>
      <div class="col-75">
          <input type="text" id="fid" name="fname" size="25" placeholder="first name">
      </div>
    </div>
    <div class="row">
      <div class="col-55">
        <label for="lname">LAST NAME</label>
          <td>*</td>
      </div>
      <div class="col-75">
          <input type="text" id="lname" name="lname" size="25" placeholder="last nameame">
      </div>
    </div>
                 <div class="row">
      <div class="col-55">
        <label for="relate">DATE OF BIRTH</label>
          <td>*</td>
      </div>
      <div class="col-75">
        <input type="date" id="lname" name="dob">
      </div>
                 </div>
     <div class="row">
      <div class="col-55">
        <label for="relate">QUALIFICATION</label>
          <td>*</td>
      </div>
      <div class="col-75">
          <input type="text" id="lname" name="qly" size="25" placeholder="qualification">
      </div>
                 </div>
                 <div class="row">
      <div class="col-55">
        <label for="relate">ADDRESS</label>
      </div>
      <div class="col-75">
          <input type="text" id="lname" name="add" size="25" placeholder="address">
      </div>
                 </div>
     
      
    
    <div class="row">
      <div class="col-55">
        <label for="phone">PHONE NO</label>
        
      </div>
      <div class="col-75">
          <input type="number" id="lname" name="ph" size="25" placeholder="Phone No">
      </div>
    </div>

    <div class="row">
      <div class="col-55">
        <label for="email">EMAIL</label>
          <td>*</td>
      </div>
      <div class="col-75">
          <input type="email" id="lname" name="mail" size="25" placeholder="email">
      </div>
    </div>
    
</div> 
        </center>
        <div>
            <br><br>
        <div class="row"><center>
      <input type="submit" value="SUBMIT">
      <input type="reset" name="reset" value="RESET">
            </center>
            </div>
       
    </div>
 
  </form>
</div>

    </body>
</html>
