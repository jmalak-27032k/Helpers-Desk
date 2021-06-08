<%@page import="java.util.Random"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement,java.sql.Connection"%>

<%

    // String UId = request.getParameter("UId");
    String UId = (String) request.getSession().getAttribute("UId");
    System.out.println("user id at helperinformation user is :" + UId);
    String driverName = "com.UIdmysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String dbName = "HelperDesk";
    String userId = "root";
    String password = "root";

    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HelperDesk", "root", "root");

        if (request.getParameter("Add") != null) {
            String HId = request.getParameter("HId");
//            String HelperId=resultSet.getString("HId");
            String AppDate = request.getParameter("AppDate");
            String AppTime = request.getParameter("AppTime");
            String AppAddress = request.getParameter("AppAddress");
            String AppDescription = request.getParameter("AppDescription");
            Random rand = new Random();

            int AppId = rand.nextInt(1000000);

            PreparedStatement st = null;
            st = con.prepareStatement("insert into AddAppointment(UId,HId,AppDate,AppTime,AppAddress,AppDescription,AppId) values(?,?,?,?,?,?,?)");
            st.setString(1, UId);
            st.setString(2, HId);
            st.setString(3, AppDate);

            st.setString(4, AppTime);
            st.setString(5, AppAddress);
            st.setString(6, AppDescription);

            st.setString(7, "APP" + AppId);

            st.executeUpdate();

            con.close();
            if (request.getParameter("Add") != null) {
                response.sendRedirect("HelperInformationUser.jsp?UId=" + UId);

            }

        }

    } catch (Exception e) {
        out.println(e);
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
        <style>
            /* The snackbar - position it at the bottom and in the middle of the screen */
            #snackbar {
                visibility: hidden;
                /* Hidden by default. Visible on click */
                min-width: 250px; /* Set a default minimum width */
                margin-left: 400px; /* Divide value of min-width by 2 */
                background-color: #28a745; /* Black background color */
                color: #fff; /* White text color */
                text-align: center; /* Centered text */
                border-radius: 2px; /* Rounded borders */
                padding: 16px; /* Padding */
                position: fixed; /* Sit on top of the screen */
                z-index: 1; /* Add a z-index if needed */
                left: 50%; /* Center the snackbar */
                bottom: 600px; /* 30px from the bottom */
            }

            /* Show the snackbar when clicking on a button (class added with JavaScript) */
            #snackbar.show {
                visibility: visible; /* Show the snackbar */
                /* Add animation: Take 0.5 seconds to fade in and out the snackbar.
                However, delay the fade out process for 2.5 seconds */
                -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
                animation: fadein 0.5s, fadeout 0.5s 2.5s;
            }

            /* Animations to fade the snackbar in and out */
            @-webkit-keyframes fadein {
                from {bottom: 0; opacity: 0;}
                to {bottom: 600px; opacity: 1;}
            }

            @keyframes fadein {
                from {bottom: 0; opacity: 0;}
                to {bottom: 600px; opacity: 1;}
            }

            @-webkit-keyframes fadeout {
                from {bottom: 600px; opacity: 1;}
                to {bottom: 0; opacity: 0;}
            }

            @keyframes fadeout {
                from {bottom: 600px; opacity: 1;}
                to {bottom: 0; opacity: 0;}
            }
        </style>
    </head>
    <body style="background-image: url('Images/Capture7.PNG');background-repeat: no-repeat;background-size:cover;">
        <script src="JavaScript/HelperInfoAdmin.js"></script>
        <script>
            function myFunction() {
                var x = document.getElementById("snackbar");

                x.className = "show";

                setTimeout(function () {
                    x.className = x.className.replace("show", "");
                }, 6000);
            }
        </script>
        <div class="row pr-4" style="background-image: url('Images/Capture5.PNG');background-repeat: no-repeat;height: 80px;">
            <div class='col-md-4' style="font-size: 53px;font-style: italic;color: white;font-weight: 700">&nbsp;&nbsp;&nbsp;Helpers'Desk</div>
            <div class="col-md-1" style="padding: 20px;text-align: center;"><a href="HomeUser.jsp" style="background: none;color: white;margin: auto;width: inherit;
                                                                               border: none;">Home</a></div>        
            <div class="col-md-2" style="padding: 20px;text-align: center;"><a href="HelperInformationUser.jsp?UId=<%=UId%>" style="background: none;color: white;width: inherit;
                                                                               border: none;">Helpers' Information</a></div>
            <div class="col-md-2" style="padding: 20px;text-align: center;"><a href="AppointmentStatus.jsp?UId=<%=UId%>" style="background: none;color: white;width: inherit;
                                                                               border: none;">Appointment Status</a></div>
            <div class="col-md-1" style="padding: 20px;text-align: center;"><a href='MyProfileUser.jsp?UId=<%=UId%>' style="background: none;color: white;width: inherit;
                                                                               border: none;">My Profile</a></div>
            <div class="col-md-1" style="padding: 20px;text-align: center"><a href="HelpUser.jsp" style="background: none;color: white;width: inherit;
                                                                              border: none;">Help</a></div>
            <div class="col-md-1" style="padding: 20px;text-align: center"><a style="background: none;color: white;width: inherit;
                                                                              border: none;" href='DestroySession.jsp'>Logout</a></div>
        </div>
        <form><input type="hidden" name="UId" value="<%=request.getParameter("UId")%>"></form>
        <br>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8" style="background-image:url('Images/Capture9.PNG');background-repeat: no-repeat;background-size:cover;color: white">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">Number</th>
                            <th scope="col">Id/Username</th>
                            <th scope="col">Occupation</th>
                            <th scope="col">Adhaar Number</th>
                            <th scope="col">Details</th>
                            <th scope="col">Book Appointment</th>
                        </tr>
                    </thead>

                    <tbody>
                        <%
                            try {
                                connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                                statement = connection.createStatement();
                                String sql = "SELECT * FROM Helper";

                                resultSet = statement.executeQuery(sql);
                                while (resultSet.next()) {
                        %>
                        <tr>
                            <td><%=resultSet.getString("HName")%></td>
                            <td><%=resultSet.getString("HNumber")%></td>
                            <td><%=resultSet.getString("HId")%></td>
                            <td><%=resultSet.getString("HOccupation")%></td>
                            <td><%=resultSet.getString("HAdhaarNo")%></td>
                            <td><a style="color: white" href="UserDetailUser.jsp?HId=<%=resultSet.getString("HId")%>">Details</a></td>
                            <td>
                                <!--                                <form action="HelperInformationUser.jsp" method="POST">
                                                                    <input type="hidden" name="delete" id="delete" value="
                                                                   
                                                                           ">-->
                                <!--                             <form method="POST">
                                                                    <input type="hidden" name="delete" id="delete" value="
                                
                                ">-->
                                <button onclick="openForm()"> Add Appointment </button>
                                <!--                              </form>-->
                            </td>
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
            <div class="col-md-2"></div>
        </div>
        <!--              popup form starts from here  -->
        <div style="display: none;background-image:url('Images/Capture7.PNG');background-repeat: no-repeat;background-size:cover;
             width: 700px; color: black;    
             position: fixed;
             bottom: 115px;border-radius: 20px;border: solid;
             right: 402px;" class="form-popup" id="myForm">
            <br>
            <form class="form-container" style="padding: 20px">
                <input style="float: right;background: none;font-weight: 900;border: none"  value="X" type="button" onclick="closeForm()">
                <h1 style="text-align: center">Add Appointment</h1>
                <br> <br>
                <div class="row mx-3">
                    <div class="col-md-4">
                        <label><b>User ID:</b></label>
                        <input type="text" readonly placeholder="User ID" name="UId" value="<%=request.getParameter("UId")%>" />
                    </div>
                    <div class="col-md-4">
                        <label><b>Helper ID:</b></label>
                        <input type="text" placeholder="Helper ID" name="HId" value="" />
                    </div>
                    <div class="col-md-4">
                        <label><b>Appointment Date:</b></label>
                        <input type="text" placeholder="Appointment Date" name="AppDate" />
                    </div>
                </div>
                <br>
                <div class="row mx-3">
                    <div class="col-md-4">
                        <label><b>Appointment Time</b></label>
                        <input type="text"  placeholder="Appointment Time" name="AppTime" />
                    </div>
                    <div class="col-md-4">
                        <label><b>Address:</b></label>
                        <input type="textarea"  placeholder="Address" name="AppAddress" />
                    </div>
                    <div class="col-md-4">
                        <label><b>Work Description:</b></label>
                        <input type="textarea"  placeholder="Work Description" name="AppDescription" />
                    </div>

                </div>

                <br><br>
                <!--                <button type="submit" class="btn">Login</button>-->
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <input style="width: 150px;
                               height: 48px;
                               border-radius: 10px;
                               color: white;margin-left: 10px;
                               background-color: black;" value="Add" onclick="myFunction()" type="submit" name="Add">
                        <!--                        <input  type="hidden" name="update" id="update" value="">-->
                        <div id="snackbar">Appointment has been added successfully!</div>
                    </div>
                    <div class="col-md-4"></div>
                </div>


                <!--                <button class="btn cancel" onclick="closeForm()">Close</button>-->

            </form>
            <br>
        </div>  

    </body>
</html>
