<%-- 
    Document   : question11.jsp
    Created on : 1 Apr, 2019, 10:29:02 PM
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
            h2{color: red;}
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
        <h2 align="right"><a href="Choice.jsp">BACK</a></h2>
        <%!
            int nu;
            String na, grd1,grd2,grd3,grd4,qlf;
            
            int ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,ans11,ans12,ans13,ans14,ans15;
            
            int total,grade,sec,entotal,matotal,javtotal ;
            double avg,num;
            %>
       <%
            String qt1 = request.getParameter("txt1");
            String qt2 = request.getParameter("txt2");
             String qt3 = request.getParameter("txt3");
              String qt4 = request.getParameter("txt4");
               String qt5 = request.getParameter("txt5");
               
                String qt6 = request.getParameter("num1");
                 String qt7 = request.getParameter("num2");
                  String qt8 = request.getParameter("num3");
                   String qt9 = request.getParameter("num4");
                    String qt10 = request.getParameter("num5");
                    
                     String qt11 = request.getParameter("dai");
                 String qt12 = request.getParameter("hi");
                  String qt13 = request.getParameter("plt");
                   String qt14 = request.getParameter("mai");
                    String qt15 = request.getParameter("bj");
                    
                   
                    
            int prg =Integer.parseInt(session.getAttribute("num").toString());
            %>
            <%
                 try
              { 
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/examapp", "root","root");
                Statement stm =con.createStatement();
           
                 ResultSet rt = stm.executeQuery("select * from examreg where studentid ="+prg+"");
              if(rt.next())
              {
               nu =rt.getInt(1);
               na=rt.getString(2);
                  
              
              if(qt1.equals("is"))
             
                  ans1=10;
              
              else
              
                  ans1=0;
              
               if(qt2.equals("a"))
              
                  ans2=10;
              
               else
               
                   ans2=0;
               
                if(qt3.equals("are"))
              
                  ans3=10;
              
                else
                
                    ans3=0;
                
                 if(qt4.equals("is"))
              
                  ans4=10;
              
                 else
                 
                     ans4=0;
                 
                  if(qt5.equals("went"))
              
                  ans5=10;
              
                  else
                  
                      ans5=0;
                  
                   if(qt6.equals("4"))
              
                  ans6=10;
              
                   else
                   
                       ans6=0;
                   
                    if(qt7.equals("25"))
              
                  ans7=10;
              
                    else
                    
                        ans7=0;
                    
                     if(qt8.equals("3"))
              
                  ans8=10;
              
                     else
                     
                         ans8=0;
                     
                      if(qt9.equals("6"))
              
                  ans9=10;
              
                      else
                      
                          ans9=0;
                      
                       if(qt10.equals("0"))
              
                  ans10=10;
              
                       else
                           ans10=0;
                        if(qt11.equals("yes"))
              
                  ans11=10;
              
                 else
                 
                     ans11=0;
                 
                  if(qt12.equals("high level"))
              
                  ans12=10;
              
                  else
                  
                      ans12=0;
                  
                   if(qt13.equals("platform"))
              
                  ans13=10;
              
                   else
                   
                       ans13=0;
                   
                    if(qt14.equals("main"))
              
                  ans14=10;
              
                    else
                    
                        ans14=0;
                    
                     if(qt15.equals("object"))
              
                  ans15=10;
              
                     else
                     
                         ans15=0;
                     
                      
                      
                       entotal = ans1+ans2+ans3+ans4+ans5;
                       matotal = ans6+ans7+ans8+ans9+ans10;
                       javtotal = ans11+ans12+ans13+ans14+ans15;
                       
                       total=entotal+matotal+javtotal;
                       
                       avg=total/15;
                       
                       num=((total / 150)*100);
                       out.print("<br><h3 align='center'>You Scored <br>--------------<br>english : "+entotal + "</h3>");
                       out.print("<br><h3 align='center'>maths : "+matotal + "</h3>");
                       out.print("<br><h3 align='center'>java : "+javtotal + "</h3>");
                         out.print("<br><h3 align='center'>totalmarks : "+total+ "</h3>");
                        out.print("<br><h3 align='center'> average:  "+avg + "</h3>");
                       
                       if(avg >=7.5 && avg <=10)
                       {
                          grd1="DISTINCTION"; 
                           qlf ="Awareded";
                          out.print("<h1><b>congratulations!You qualify for student scholarship!!</b></h1>");
                          
                           stm.execute("update examreg set position ='"+qlf+"' where studentid ='"+prg+"'");
                           
                       }
                       else
                       {
                           if(avg>=6.5 && avg< 7.5)
                           {
                               grd1="FIRST CLASS";
                           }
                           else
                           {
                               if(avg >=5.5 && avg < 6.5)
                               {
                                   grd1 ="SECOND CLASS";
                               }
                               else
                               {
                                   if(avg >=4.5 && avg< 5.5)
                                   {
                                       grd1="THIRD CLASS";
                                   }
                                   else
                                   {
                                       if(avg>=3.5 && avg <4.5)
                                       {
                                           grd1="PASS";
                                       }
                                       else
                                       {
                                           grd1="FAIL";
                                       }
                                   }
                               }
                           }
                       }
                        int mx =150;
                    int eng =11121,mat=221121,ja=33321;
                     out.print(" <br> <h2 align=center>Grade :"+grd1+ "</h2>");
                     
 
                   
stm.execute("insert into result values ("+nu+",'"+na+"',"+entotal+","+matotal+","+javtotal+", "+mx+","+total+","+avg+","+num+",'"+grd1+"','"+qlf+"')");
stm.execute("insert into english values ("+nu+",'"+na+"',"+eng+",'"+qt1+"','"+qt2+"','"+qt3+"','"+qt4+"','"+qt5+"',"+entotal+")");
stm.execute("insert into maths values ("+nu+",'"+na+"',"+mat+",'"+qt6+"','"+qt7+"','"+qt8+"','"+qt9+"','"+qt10+"', "+matotal+")");
stm.execute("insert into java values ("+nu+",'"+na+"',"+ja+",'"+qt11+"','"+qt12+"','"+qt13+"','"+qt14+"','"+qt15+"',"+javtotal+")");
               rt=stm.executeQuery("select *from result where studentid ="+prg);
               if(rt.next())
               {
                   String nm = rt.getString(2);
                   out.print("<br><h3 align='center'> Thank you " + nm +"  for taking the exam. The above are your marks.</h3>");
                   
               }
               else
               {
                   out.print("Not submitted");
                   
               }
              }
              
              else
              {
                  out.print("<h2>NO REGISTERED NUMBER FOUND</h2>");
              }  
            
              }
              catch(Exception e)
              {
               e.printStackTrace();
                 
              }
            %>
    </body>
</html>
