<%-- 
    Document   : insert
    Created on : 18 Sep, 2016, 12:49:48 PM
    Author     : snehal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>profile</title>
    </head>
    <body >
        
        <%
            
            Connection c1=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/buysell1","root","abhi@222");
       Statement s1=c1.createStatement();
      String fname=request.getParameter("fname");
       String lname=request.getParameter("lname");
        String uname=request.getParameter("username");
       
         String gender=request.getParameter("gender");
          String birthdate=request.getParameter("birthdate");
           String phone=request.getParameter("phone");
            String email=request.getParameter("email");
            String pinno=request.getParameter("postalCode");
             String addres=request.getParameter("address");
              String state=request.getParameter("state");
               String passwd=request.getParameter("passwd");
               String sele="select * from signin where user_name='"+uname+"' or email='"+email+"' or phone_no='"+phone+"'";
                   ResultSet doc=s1.executeQuery(sele);
                   doc.next();
                   String check=doc.getString(1);
                   if (check.length()==0)
                   {
     String inse= "insert into signin(first_name,last_name,user_name,sex,phone_no,email,address,pin_no,state,password,repassword) values('"+fname+"','"+lname+"','"+uname+"','"+gender+"','"+phone+"','"+email+"','"+addres+"','"+pinno+"','"+state+"','"+passwd+"','"+passwd+"')";
           int i=s1.executeUpdate(inse);
         
            response.sendRedirect("index.html");
                   }
                   else
              {%>
        <script type="text/javascript">
            alert("user id is already exist");
                window.location.href='signup.html';
            </script>
              
                <% // response.sendRedirect("index.html")
                        }
             %>
        </body>
</html>
