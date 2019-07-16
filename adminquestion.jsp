<%-- 
    Document   : adminquestion
    Created on : 23 Apr, 2019, 1:43:24 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <div class="container" style="display: flex; justify-content: space-between; align-items: center; background-color:brown; padding:10px 2rem;">
    <div style="width:15%"><img src="pic/logo.jpg" style="width:100%"></div>
    <ul style="list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%" >
        
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href="adminstudents.jsp"> STUDENTS RESULTS</li>
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href="cancel.jsp"> CANCEL RESULT</li>
        <li style="background: white; padding:3px 15px; border-radius:5px"><a href=adminview.jsp"> STUDENTS DETAIL</li>
        <li class="button" style="background: wheat; padding:3px 15px; border-radius:5px"><a href="index.html"  style="color:red; text-decoration: none;">logout</a></li>
        
    </ul>
</div>
    <body>
        <h2 align="right"><a href="adminpage.jsp">BACK</a></h2>
         
            
            <table align="center">
                
                <h1 align="center" style=" background-color: red; margin-top: 150px;" >TEST OF ENGLISH</h1>
                <div>
                <tr>
                <td>1:Tomorrow -- Monday</td>
                <td><input type="text" name="txt1"></td>
                   </tr>
                    <tr>
                    <td>2:I am -- citizen of India</td>
                    <td><input type="text" name="txt2"></td>
                </tr>
                <td>3:My girlfriends ---- beautiful</td>
                    <td><input type="text" name="txt3">
                    </td>
                </tr>
                
                </tr>
                <td>4:My family --- In America</td>
                    <td><input type="text" name="txt4">
                    </td>
                </tr>
               <td>5:I --- to school Yesterday</td>
                    <td><input type="text" name="txt5">
                    </td></tr>
                </div>
            </table><table align='center'>
                <div>
                    <h1 align="center" style="margin-top: 90px;  background-color: red">MATHEMATICS</h1>
                <tr>
                    <td> 2+2</td>
                    <td><input type="number" name="num1">
                    </td></tr>
                
                    <tr>
                    <td>5*5</td>
                    <td><input type="number" name="num2"></td>
                </tr> <br>
                <td>9/3</td>
                    <td><input type="number" name="num3">
                    </td> <br>
                </tr>
                
                <tr>
                <td>10-4</td>
                    <td><input type="number" name="num4">
                    </td></tr> <br>
       
              <tr>
                <td>20%4</td>
                <td><input type="number" name="num5"></td>
              </tr>
                </div>
            </table> 
           
              <h1 align="center" style="margin-top: 90px; background-color: red" >java</h1>
              <table align="center">
              <div>
                <tr>
                <td>1:java is a programming language :</td>
                <td> yes<input type="radio" name="dai" value="yes"></td>
                <td>no<input type="radio" name="dai" value="no"></td>
                    </tr>
                    </div>
                    <tr>
                    <td>2:java is ---  language</td>
                    <td><input type="text" name="hi"></td>
                </tr> 
                    </div>
                <br>
                <td>3:java is  --- independent</td>
                    <td><input type="text" name="plt">
                    </td> <br>
                </tr>
                
                <tr>
                <td>4: java has one ---- method</td>
                    <td><input type="text" name="mai">
                    </td></tr> <br>
       
              <tr>
                <td>5:java is -----oriented</td>
                <td><input type="text" name="bj"></td>
                 
              </tr> 
              </div>
            </table><br>
         
        </form>
        
    </body>
</html>
