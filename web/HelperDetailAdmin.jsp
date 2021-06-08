<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement,java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%
    String HId = request.getParameter("HId");
    System.out.println("Update request HID: " + HId);
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
                String HName = request.getParameter("HName");
                String HNumber = request.getParameter("HNumber");
                System.out.println("HNUMBER:" + HNumber);
                String HPincode = request.getParameter("HPincode");
                String HHouseNo = request.getParameter("HHouseNo");
                String HCity = request.getParameter("HCity");
                String HState = request.getParameter("HState");
                String HCountry = request.getParameter("HCountry");
                String HOccupation = request.getParameter("HOccupation");
                String HAdhaarNo = request.getParameter("HAdhaarNo");
                String HWageType = request.getParameter("HWageType");
                String HDOB = request.getParameter("HDOB");
                String HGender = request.getParameter("HGender");
                String HelID = request.getParameter("update");
                String HID = "\"" + HelID + "\"";

                System.out.println("Attempting to Delete");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HelperDesk", "root", "root");
                String sql = "Update Helper set HName=?,HDOB=?,HGender=?,HNumber=?,HOccupation=?,HWageType=?,HAdhaarNo=?,HHouseNo=?,HCity=?,HState=?,HCountry=?,HPincode=? where HId=" + HID;

                PreparedStatement st = con.prepareStatement(sql);
                st.setString(1, HName);
                st.setString(2, HDOB);
                st.setString(3, HGender);

                st.setString(4, HNumber);
                st.setString(5, HOccupation);
                st.setString(6, HWageType);

                st.setString(7, HAdhaarNo);
                st.setString(8, HHouseNo);
                st.setString(9, HCity);

                st.setString(10, HState);
                st.setString(11, HCountry);
                st.setString(12, HPincode);
                System.out.println(st.toString());
                int i = st.executeUpdate();
                if (i > 0) {
                    System.out.print("Record Updated Successfully");
                } else {
                    System.out.print("There is a problem in updating Record.");
                }
                response.sendRedirect("HelperDetailAdmin.jsp?HId=" + HelID);
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
                    String HID = "\"" + HId + "\"";
                    String sql = "SELECT * FROM Helper where HId=" + HID;
                    System.out.println("Query running : " + sql);
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {
            %>
            <form><input type="hidden" name="HId" value="<%=resultSet.getString("HId")%>"></form>
            <div class="col-md-2 pt-5">
                <br>
                <h2><%=resultSet.getString("HName")%></h2> 
                <h6><%=resultSet.getString("HOccupation")%></h6>

            </div>
            <div class="col-md-5 pt-5"><button onclick="openForm()">edit</button></div>
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
                <br> <br>
                <div class="row mx-3">
                    <div class="col-md-4">
                        <label><b>Helper's Name:</b></label>
                        <input type="text"  placeholder="Helper's Name" name="HName" value="<%=resultSet.getString("HName")%>" />
                    </div>
                    <div class="col-md-4">
                        <label><b>Date Of Birth:</b></label>
                        <input type="text"  placeholder="Date Of Birth" name="HDOB" value="<%=resultSet.getString("HDOB")%>" />
                    </div>
                    <div class="col-md-4">
                        <label><b>Gender:</b></label>
                        <select id="HGender" name="HGender" value="<%=resultSet.getString("HGender")%>" style="width: 180px;">
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
                        <input type="text"  placeholder="Contact Number" value="<%=resultSet.getString("HNumber")%>" name="HNumber" />
                    </div>
                    <div class="col-md-4">
                        <label><b>Occupation:</b></label>
                        <select id="Occupation" value="<%=resultSet.getString("HOccupation")%>" name="HOccupation" style="width: 180px;">
                            <option value="Electrician">Electrician</option>
                            <option value="Barber">Barber</option>
                            <option value="Carpenter">Carpenter</option>
                            <option value="Cook">Cook</option>
                            <option value="Maid">Maid</option>
                            <option value="Packer and Mover">Packer and Mover</option>
                            <option value="Painter">Painter</option>
                            <option value="Plumber">Plumber</option>
                            <option value="Ragmen">Ragman</option>
                            <option value="Vehicle Washer men">Vehicle Washer man</option>

                        </select>
                    </div>
                    <div class="col-md-4">
                        <label><b>Wage Type:</b></label>
                        <select id="HWageType" name="HWageType" value="<%=resultSet.getString("HWageType")%>" style="width: 180px;">
                            <option value="Daily-Waged">Daily-Waged</option>
                            <option value="Contracted">Contracted</option>
                        </select>
                    </div>

                </div>
                <br>
                <div class="row mx-3">
                    <div class="col-md-4">
                        <label><b>Aadhar Number:</b></label>
                        <input type="text"  placeholder="Adhaar Number" value="<%=resultSet.getString("HAdhaarNo")%>"  name="HAdhaarNo"/>
                    </div>
                    <div class="col-md-4">
                        <label style="font-size: 15px"><b>House Number and locality:</b></label>
                        <input type="text"  placeholder="House Number and locality" value="<%=resultSet.getString("HHouseNo")%>" name="HHouseNo" />
                    </div>

                    <div class="col-md-4">
                        <label><b>City:</b></label>
                        <input type="text"  placeholder="City" value="<%=resultSet.getString("HCity")%>" name="HCity" />
                    </div>

                </div>
                <br>
                <div class="row mx-3">
                    <div class="col-md-4">
                        <label><b>State:</b></label>
                        <input type="text"  placeholder="State" value="<%=resultSet.getString("HState")%>" name="HState" />
                    </div>
                    <div class="col-md-4">
                        <label><b>Country</b></label>
                        <input type="text"  placeholder="Country" value="<%=resultSet.getString("HCountry")%>" name="HCountry" />
                    </div>
                    <div class="col-md-4">
                        <label><b>Pincode:</b></label>
                        <input type="text"  placeholder="Pincode" value="<%=resultSet.getString("HPincode")%>" name="HPincode" />
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
                               background-color: black;" value="Update" type="submit" name="Update">
                        <input  type="hidden" name="update" id="update" value="<%=resultSet.getString("HId")%>">
                    </div>
                    <div class="col-md-4"></div>
                </div>


                <!--                <button class="btn cancel" onclick="closeForm()">Close</button>-->

            </form>
            <br>
        </div>      
        <%
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
