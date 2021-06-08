<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%
    String HId = request.getParameter("HId");
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String dbName = "HelperDesk";
    String userId = "root";
    String password = "root";

    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Helpers' Desk</title>
    </head>
    <body style="background-image: url('Images/Capture6.PNG');background-repeat: no-repeat;background-size:cover;color: white">
        <div class="row" style="height: 80px;">
            <div class='col-md-4' style="font-size: 53px;font-style: italic;color: white;font-weight: 700">&nbsp;&nbsp;&nbsp;Helpers'Desk</div>

        </div>
        <br>


        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-3 pt-5">

                <img src="Images/Capture2.PNG" style="width: 35%;border-radius: 80px;float: right">
            </div>
            <%
                try {
                    connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                    statement = connection.createStatement();
                    String HID = "\"" + HId + "\"";
                    String sql = "SELECT * FROM Helper where HId=" + HID;
                    System.out.println("Query running : " + sql);
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {
            %>
            <form><input type="hidden" name="HId" value="<%=resultSet.getString("HId")%>"></form>
            <div class="col-md-7 pt-5">
                <br>
                <h2><%=resultSet.getString("HName")%></h2> 
                <h6><%=resultSet.getString("HOccupation")%></h6>

            </div>
        </div>
        <br> <br>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-5">
                <ul>
                    <li><h6><b>Contact Number : </b><%=resultSet.getString("HNumber")%></h6></li>
                    <li><h6><b>Date of Birth : </b><%=resultSet.getString("HDOB")%></h6></li>
                    <li><h6><b>Gender : </b><%=resultSet.getString("HGender")%></h6></li>
                    <li><h6><b>Wage-Type : </b><%=resultSet.getString("HWageType")%></h6></li>
                    <li><h6><b>Adhaar Number : </b><%=resultSet.getString("HAdhaarNo")%></h6></li>
                    <li><h6><b>House No/Locality : </b><%=resultSet.getString("HHouseNo")%></h6></li>
                    <li><h6><b>City : </b><%=resultSet.getString("HCity")%></h6></li>
                    <li><h6><b>State : </b><%=resultSet.getString("HState")%></h6></li>
                    <li><h6><b>Country : </b><%=resultSet.getString("HCountry")%></h6></li>
                    <li><h6><b>Pincode : </b><%=resultSet.getString("HPincode")%></h6></li>
                </ul>
            </div>
        </div>
        <%
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
