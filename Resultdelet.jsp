<%-- 
    Document   : Resultdelet.jsp
    Created on : 4 Apr, 2019, 1:25:16 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <h1 align="center"> DELETION PAGE</h1>
        <h2 align="right"><a href="adminduties.jsp">BACK</a></h2>
        
         <form method="post" action="resultdelete2.jsp">
             <table align="center">
                 <h3 align="center">ENTER STUDENT ID TO DELETE REGISTRATION FORM</h3>
                 <tr>
                     <td> <label> STUDENT ID</label></td>
                     <td> <input type="number" name="digit"></td>
                 </tr>
            <br>
            <tr>
                <td> <input type="submit" name="submit" value="CLICK"></td>
            </tr>
            <br>
             </table>
    </body>
</html>
