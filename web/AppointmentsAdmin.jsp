<%@page import="java.sql.PreparedStatement,java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

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
        <style>
            .rd{
                display: none;
            }
            input + label { display: inline-block }
            input ~ .tab { display: none }

            #tab1:checked ~ .tab.content1,
            #tab2:checked ~ .tab.content2,
            #tab3:checked ~ .tab.content3{ display: block;}

            input + label {
                border: none;
                padding: 4px 12px;
                border-radius: 4px 4px 0 0;
                position: relative;
                top: 1px;
                font-size: 17px;
                font-weight: 200;
            }
            input:checked + label {
                background-color: #021232;
                border: none;
                color: white;
                border-bottom: 1px solid transparent;
                font-size: 17px;
                font-weight: 300;
            }
            input ~ .tab {
                border-top: 1px solid #999;
                padding: 12px;
            }
        </style>
        <title>Helpers' Desk</title>
    </head>
    <body style="background-image: url('Images/Capture7.PNG');background-repeat: no-repeat;background-size:cover;">
        <div class="row pr-4" style="background-image: url('Images/Capture5.PNG');background-repeat: no-repeat;height: 80px;">
            <div class='col-md-4' style="font-size: 53px;font-style: italic;color: white;font-weight: 700">&nbsp;&nbsp;&nbsp;Helpers'Desk</div>
            <div class="col-md-1" style="padding: 20px;text-align: center;"><a href="HomeAdmin.jsp" style="background: none;color: white;margin: auto;width: inherit;
                                                                               border: none;">Home</a></div>        
            <div class="col-md-2" style="padding: 20px;text-align: center;"><a href="HelperInfoAdmin.jsp" style="background: none;color: white;width: inherit;
                                                                               border: none;">Helpers' Information</a></div>
            <div class="col-md-2" style="padding: 20px;text-align: center;"><a href="UserInfoAdmin.jsp" style="background: none;color: white;width: inherit;
                                                                               border: none;">User's Information</a></div>
            <div class="col-md-2" style="padding: 20px;text-align: center;"><a href="AppointmentsAdmin.jsp" style="background: none;color: white;width: inherit;
                                                                               border: none;">All Appointments</a></div>
            <!--            <div class="col-md-1" style="padding: 20px;"><a href="HelpAdmin.jsp" style="background: none;color: white;width: inherit;
                                                                        border: none;">Help</a></div>-->
            <div class="col-md-1" style="padding: 20px;text-align: center;"><a href="DestroySession.jsp" style="background: none;color: white;width: inherit;
                                                                               border: none;">Logout</a></div>
        </div>
        <br>
        <input type="radio" class="rd" name="tabs" id="tab1" checked />
        <label for="tab1"><b>Pending Appointments</b></label>
        <input type="radio" class="rd" name="tabs" id="tab2" />
        <label for="tab2"><b>Accepted Appointments</b></label>
        <input type="radio" class="rd" name="tabs" id="tab3" />
        <label for="tab3"><b>Rejected Appointments</b></label>


        <!-- 1st tab -->
        <div class="tab content1">

            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10" style="background-image:url('Images/Capture9.PNG');background-repeat: no-repeat;background-size:cover;color: white">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Appointment ID</th>
                                <th scope="col">Helper ID</th>
                                <th scope="col">User ID</th>
                                <th scope="col">Appointment Date</th>
                                <th scope="col">Apppointment Time</th>
                                <th scope="col">Address</th>
                                <th scope="col">Work Description</th>
                                <th scope="col">Status</th>

                            </tr>
                        </thead>

                        <tbody>
                            <%
                                try {
                                    connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                                    statement = connection.createStatement();

                                    String Status = "Pending";
                                    String Status1 = "\"" + Status + "\"";
                                    String sql = "SELECT * FROM AddAppointment where Status=" + Status1;

                                    resultSet = statement.executeQuery(sql);

                                    while (resultSet.next()) {
                            %>
                            <tr>
                                <td><%=resultSet.getString("AppId")%></td>
                                <td><%=resultSet.getString("HId")%></td>
                                <td><%=resultSet.getString("UId")%></td>
                                <td><%=resultSet.getString("AppDate")%></td>
                                <td><%=resultSet.getString("AppTime")%></td>
                                <td><%=resultSet.getString("AppAddress")%></td>    
                                <td><%=resultSet.getString("AppDescription")%></td>
                                <td><%=resultSet.getString("Status")%></td> 
                            </tr>
                            <%
                                        // i++;
                                    }

                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
                        </tbody>

                    </table>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
        <!-- 2 nd tab -->
        <div class="tab content2">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10" style="background-image:url('Images/Capture9.PNG');background-repeat: no-repeat;background-size:cover;color: white">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Appointment ID</th>
                                <th scope="col">Helper ID</th>
                                <th scope="col">User ID</th>
                                <th scope="col">Appointment Date</th>
                                <th scope="col">Apppointment Time</th>
                                <th scope="col">Address</th>
                                <th scope="col">Work Description</th>
                                <th scope="col">Status</th>
                            </tr>
                        </thead>

                        <tbody>
                            <%
                                try {
                                    connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                                    statement = connection.createStatement();
                                    String Status = "Accepted";
                                    String Status1 = "\"" + Status + "\"";

                                    String sql = "SELECT * FROM AddAppointment where Status=" + Status1;

                                    resultSet = statement.executeQuery(sql);

                                    while (resultSet.next()) {
                            %>
                            <tr>
                                <td><%=resultSet.getString("AppId")%></td>
                                <td><%=resultSet.getString("HId")%></td>
                                <td><%=resultSet.getString("UId")%></td>
                                <td><%=resultSet.getString("AppDate")%></td>
                                <td><%=resultSet.getString("AppTime")%></td>
                                <td><%=resultSet.getString("AppAddress")%></td>    
                                <td><%=resultSet.getString("AppDescription")%></td>
                                <td><%=resultSet.getString("Status")%></td> 
                            </tr>
                            <%
                                        // i++;
                                    }

                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
                        </tbody>

                    </table>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
        <!-- 3 rd tab -->
        <div class="tab content3">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10" style="background-image:url('Images/Capture9.PNG');background-repeat: no-repeat;background-size:cover;color: white">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Appointment ID</th>
                                <th scope="col">Helper ID</th>
                                <th scope="col">User ID</th>
                                <th scope="col">Appointment Date</th>
                                <th scope="col">Apppointment Time</th>
                                <th scope="col">Address</th>
                                <th scope="col">Work Description</th>
                                <th scope="col">Status</th>

                            </tr>
                        </thead>

                        <tbody>
                            <%
                                try {
                                    connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                                    statement = connection.createStatement();

                                    String Status = "Rejected";
                                    String Status1 = "\"" + Status + "\"";

                                    String sql = "SELECT * FROM AddAppointment where Status=" + Status1;

                                    resultSet = statement.executeQuery(sql);

                                    while (resultSet.next()) {
                            %>
                            <tr>
                                <td><%=resultSet.getString("AppId")%></td>
                                <td><%=resultSet.getString("HId")%></td>
                                <td><%=resultSet.getString("UId")%></td>
                                <td><%=resultSet.getString("AppDate")%></td>
                                <td><%=resultSet.getString("AppTime")%></td>
                                <td><%=resultSet.getString("AppAddress")%></td>    
                                <td><%=resultSet.getString("AppDescription")%></td> 
                                <td><%=resultSet.getString("Status")%></td> 

                            </tr>
                            <%
                                    }

                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
                        </tbody>

                    </table>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
    </body>
</html>
