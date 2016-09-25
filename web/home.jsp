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
    <body>
       ></h1>
        <%
            
            Connection c1=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/buysell1","root","abhi@222");
       Statement s1=c1.createStatement();
      
            String email=request.getParameter("email");
            String passwd=request.getParameter("passwd");
      String sele="select * from signin where  (phone_no='"+email+"' or user_name='"+email+"'  or email='"+email+"') and password='"+passwd+"'";
        
      
      ResultSet doc=s1.executeQuery(sele);
            if(doc.next()==true)
            {
                out.println("incorrrrect password");
               
            }
            else
            {%>
        <script type="text/javascript">
            alert("wrong password");
                window.location.href='index.html';
            </script>
                out.println("log in succesfully");
                <% // response.sendRedirect("index.html")
                        ;}
             %>
        </body>
</html>
