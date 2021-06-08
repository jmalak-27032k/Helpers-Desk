<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.PreparedStatement,java.sql.Connection"%>
<%
    String UId = request.getParameter("UId");
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
        try {

        if (request.getParameter("Update") != null) {
            String UName = request.getParameter("UName");
            String UNumber = request.getParameter("UNumber");
//            String UPassword = request.getParameter("UPassword");
//            String UConfirmPass = request.getParameter("UConfirmPass");
            String UPincode = request.getParameter("UPincode");
            String UHouseNo = request.getParameter("UHouseNo");
            String UCity = request.getParameter("UCity");
            String UState = request.getParameter("UState");
            String UCountry = request.getParameter("UCountry");
            String UAdhaarNo = request.getParameter("UAdhaarNo");
            String UDOB = request.getParameter("UDOB");
            String UGender = request.getParameter("UGender");
            String UserID = request.getParameter("update");
            String UID = "\"" + UserID + "\"";

            System.out.println("Attempting to Delete");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HelperDesk", "root", "root");
            String sql = "Update User set UName=?,UDOB=?,UGender=?,UNumber=?,UAdhaarNo=?,UHouseNo=?,UCity=?,UState=?,UCountry=?,UPincode=? where UId=" + UID;

            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, UName);
            st.setString(2, UDOB);
            st.setString(3, UGender);

           // st.setString(4, UId);
//            st.setString(5, UPassword);
//            st.setString(6, UConfirmPass);

            st.setString(4, UNumber);
            st.setString(5, UAdhaarNo);
            st.setString(6, UHouseNo);

            st.setString(7, UCity);
            st.setString(8, UState);
            st.setString(9, UCountry);

            st.setString(10, UPincode);
            System.out.println(st.toString());
            int i = st.executeUpdate();
            if (i > 0) {
                System.out.print("Record Updated Successfully");
            } else {
                System.out.print("There is a problem in updating Record.");
            }
            response.sendRedirect("UserDetailAdmin.jsp?UId=" + UserID);
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
    </head>
    <body style="background-image: url('Images/Capture6.PNG');background-repeat: no-repeat;background-size:cover;color: white">
        <script src="JavaScript/HelperInfoAdmin.js"></script>
        <!--        <div class="row" style="background-image: url('Images/Capture5.PNG');background-repeat: no-repeat;height: 80px;">
                    <div class='col-md-4' style="font-size: 53px;font-style: italic;color: white;font-weight: 700">&nbsp;&nbsp;&nbsp;Helpers'Desk</div>
        
                </div>-->
        <div class='col-md-4' style="font-size: 53px;font-style: italic;color: white;font-weight: 700">&nbsp;&nbsp;&nbsp;Helpers'Desk</div>

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
                    String UID = "\"" + UId + "\"";
                    String sql = "SELECT * FROM User where UId=" + UID;
                    System.out.println("Query running : " + sql);
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {
            %>
            <form><input type="hidden" name="UId" value="<%=resultSet.getString("UId")%>"></form>
            <div class="col-md-2 pt-5">
                <br>
                <h2><%=resultSet.getString("UName")%></h2> 


            </div>
            <div class="col-md-5 pt-5"><button onclick="openForm()">edit</button></div>
        </div>
        <br> <br>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-5">
                <ul>
                    <li><h6><b>Contact Number : </b><%=resultSet.getString("UNumber")%></h6></li>
                    <li><h6><b>Date of Birth : </b><%=resultSet.getString("UDOB")%></h6></li>
                    <li><h6><b>Gender : </b><%=resultSet.getString("UGender")%></h6></li>
                    <li><h6><b>Adhaar Number : </b><%=resultSet.getString("UAdhaarNo")%></h6></li>
                    <li><h6><b>House No/Locality : </b><%=resultSet.getString("UHouseNo")%></h6></li>
                    <li><h6><b>City : </b><%=resultSet.getString("UCity")%></h6></li>
                    <li><h6><b>State : </b><%=resultSet.getString("UState")%></h6></li>
                    <li><h6><b>Country : </b><%=resultSet.getString("UCountry")%></h6></li>
                    <li><h6><b>Pincode : </b><%=resultSet.getString("UPincode")%></h6></li>
                </ul>
            </div>
        </div>
        <!--              popup form starts from here  -->
        <div style="display: none;background-image:url('Images/Capture7.PNG');background-repeat: no-repeat;background-size:cover;
             width: 700px; color: black;    
             position: fixed;
             bottom: 55px;border-radius: 20px;
             right: 402px;" class="form-popup" id="myForm">
            <br>
            <form class="form-container" style="padding: 20px">
                <input style="float: right;background: none;font-weight: 900;border: none"  value="X" type="button" onclick="closeForm()">
                <h1 style="text-align: center">Edit Profile</h1>
                <br>
                <div class="row mx-3">
                    <div class="col-md-4">
                        <label><b>Helper's Name:</b></label>
                        <input type="text"  placeholder="User's Name" name="UName" value="<%=resultSet.getString("UName")%>" />
                    </div>
                    <div class="col-md-4">
                        <label><b>Date Of Birth:</b></label>
                        <input type="text"  placeholder="Date Of Birth" name="UDOB" value="<%=resultSet.getString("UDOB")%>" />
                    </div>
                    <div class="col-md-4">
                        <label><b>Gender:</b></label>
                        <select id="HGender" name="UGender" value="<%=resultSet.getString("UGender")%>" style="width: 180px;">
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Others">Others</option>
                        </select>
                    </div>
                </div>
                <br>
                <div class="row mx-3">
                    <div class="col-md-4">
                        <label><b>Contact Number:</b></label>
                        <input type="text"  placeholder="Contact Number" value="<%=resultSet.getString("UNumber")%>" name="UNumber" />
                    </div>

                    <div class="col-md-4">
                        <label><b>Aadhar Number:</b></label>
                        <input type="text"  placeholder="Adhaar Number" value="<%=resultSet.getString("UAdhaarNo")%>"  name="UAdhaarNo"/>
                    </div>
                    <div class="col-md-4">
                        <label style="font-size: 12px"><b>House Number and locality:</b></label>
                        <input type="text"  placeholder="House Number and locality" value="<%=resultSet.getString("UHouseNo")%>" name="UHouseNo" />
                    </div>
                </div>
                <br>
                <div class="row mx-3">
                    <div class="col-md-4">
                        <label><b>City:</b></label>
                        <input type="text"  placeholder="City" value="<%=resultSet.getString("UCity")%>" name="UCity" />
                    </div>
                    <div class="col-md-4">
                        <label><b>State:</b></label>
                        <input type="text"  placeholder="State" value="<%=resultSet.getString("UState")%>" name="UState" />
                    </div>
                    <div class="col-md-4">
                        <label><b>Country</b></label>
                        <input type="text"  placeholder="Country" value="<%=resultSet.getString("UCountry")%>" name="UCountry" />

                    </div>
                </div>
                <br>
                <div class="row mx-3">
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-4">
                        <label><b>Pincode:</b></label>
                        <input type="text"  placeholder="Pincode" value="<%=resultSet.getString("UPincode")%>" name="UPincode" />
                    </div>
                    <div class="col-md-4">
                    </div>
                </div>
                <br>
                <!--                <button type="submit" class="btn">Login</button>-->
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <input style="width: 150px;
                               height: 48px;
                               border-radius: 10px;
                               color: white;margin-left: 10px;
                               background-color: black;" value="Update" type="submit" name="Update">
                        <input  type="hidden" name="update" id="update" value="<%=resultSet.getString("UId")%>">
                    </div>
                    <div class="col-md-4"></div>
                </div>
                <br> <br>

                <!--                <button class="btn cancel" onclick="closeForm()">Close</button>-->

            </form>

        </div>     
        <%
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
