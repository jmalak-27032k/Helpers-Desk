<%-- 
    Document   : Delete
    Created on : 30 Mar, 2021, 11:25:19 AM
    Author     : 91831
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String HId = request.getParameter("HId");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HelperDesk", "root", "root");
        Statement st = conn.createStatement();
        String HID = "\"" + HId + "\"";
         String sql = "DELETE FROM Helper WHERE HId=" + HID;
         st.executeUpdate(sql);
        out.println("Data Deleted Successfully!");
     //   response.sendRedirect("HelperInfoAdmin.jsp");
    } catch (Exception e) {
        System.out.print(e);
        e.printStackTrace();
    }
%>--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Helpers' Desk</title>
    </head>
    <body style="background-image: url('Images/Capture7.PNG');background-repeat: no-repeat;background-size:cover;">
        <p>Deleted sucessfully!!!</p>
        
            <!--<form><input type="hidden" name="HId" value="HId"></form>-->
            
    </body>
</html>