<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement,java.sql.Connection"%>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HelperDesk", "root", "root");

        if (request.getParameter("btnUser") != null) {
            String UName = request.getParameter("UName");
            String UNumber = request.getParameter("UNumber");
            String UId = request.getParameter("UId");
            String UPassword = request.getParameter("UPassword");
            String UConfirmPass = request.getParameter("UConfirmPass");
            String UPincode = request.getParameter("UPincode");
            String UHouseNo = request.getParameter("UHouseNo");
            String UCity = request.getParameter("UCity");
            String UState = request.getParameter("UState");
            String UCountry = request.getParameter("UCountry");
            String UAdhaarNo = request.getParameter("UAdhaarNo");
            String UDOB = request.getParameter("UDOB");
            String UGender = request.getParameter("UGender");

            PreparedStatement st = null;
            st = con.prepareStatement("insert into User(UName,UDOB,UGender,UId,UPassword,UConfirmPass,UNumber,UAdhaarNo,UHouseNo,UCity,UState,UCountry,UPincode) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
            st.setString(1, UName);
            st.setString(2, UDOB);
            st.setString(3, UGender);

            st.setString(4, UId);
            st.setString(5, UPassword);
            st.setString(6, UConfirmPass);

            st.setString(7, UNumber);
            st.setString(8, UAdhaarNo);
            st.setString(9, UHouseNo);

            st.setString(10, UCity);
            st.setString(11, UState);
            st.setString(12, UCountry);

            st.setString(13, UPincode);

            st.executeUpdate();

            con.close();
            if (request.getParameter("btnUser") != null) {
                request.getSession().setAttribute("UId", UId);
                response.sendRedirect("HomeUser.jsp");
            }

        }
        if (request.getParameter("btnHelper") != null) {
            String HName = request.getParameter("HName");
            String HNumber = request.getParameter("HNumber");
            String HId = request.getParameter("HId");
            String HPassword = request.getParameter("HPassword");
            String HConfirmPass = request.getParameter("HConfirmPass");
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

            PreparedStatement st = null;
            st = con.prepareStatement("insert into Helper(HName,HDOB,HGender,HNumber,HOccupation,HWageType,HId,HPassword,HConfirmPass,HAdhaarNo,HHouseNo,HCity,HState,HCountry,HPincode) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            st.setString(1, HName);
            st.setString(2, HDOB);
            st.setString(3, HGender);

            st.setString(4, HNumber);
            st.setString(5, HOccupation);
            st.setString(6, HWageType);

            st.setString(7, HId);
            st.setString(8, HPassword);
            st.setString(9, HConfirmPass);

            st.setString(10, HAdhaarNo);
            st.setString(11, HHouseNo);
            st.setString(12, HCity);

            st.setString(13, HState);
            st.setString(14, HCountry);
            st.setString(15, HPincode);

            st.executeUpdate();

            con.close();
            request.getSession().setAttribute("HId", HId);
            response.sendRedirect("HomeHelper.jsp");
        }

    } catch (Exception e) {
        out.println(e);
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="CSS/signUp.css">
        <title>Helpers' Desk</title>
    </head>
    <body>
        <script src="JavaScript/signUp.js"></script>
        <!--    starts from here-->

        <div class="row" style="width:100%;height:100%">

            <div class="col-md-6">
                <br><br><br><br>
                <img src="Images/Capture8.PNG" class="img1">
                <br><br><br>
            </div>

            <div class="col-md-6">
                <!--                <div class="card px-2 py-2 mx-4 mt-3">-->

                <div style="text-align: center;">
                    <h2 style="color: black">Register Yourself with Us</h2>

                </div>
                <div>

                    <div class="col-md-12" style="display: flex; text-align: center; padding-left: 5%;">
                        <div class="col-md-2"></div>

                        <div class="col-md-4"><input type="radio" id="helper" value="3" name="Role" onclick="javascript:choose();" checked="true">
                            &nbsp;
                            <label for="helper"><b>As Helper</b></label></div>
                        &nbsp;
                        <div class="col-md-4"><input type="radio" id="user" value="4" name="Role" onclick="javascript:choose();">
                            &nbsp;
                            <label for="user"><b>As User</b></label></div>
                        &nbsp;
                        <div class="col-md-2"></div>


                    </div>
                    <br>


                </div>
                <div id="helper1">

                    <form>
                        <div class="row mx-3">
                            <div class="col-md-4">
                                <label><b>Helper's Name:</b></label>
                                <input type="text"  placeholder="Helper's Name" name="HName" />
                            </div>
                            <div class="col-md-4">
                                <label><b>Date Of Birth:</b></label>
                                <input type="text"  placeholder="Date Of Birth" name="HDOB" />
                            </div>
                            <div class="col-md-4">
                                <label><b>Gender:</b></label>
                                <select id="HGender" name="HGender" style="width: 180px;">
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
                                <input type="text"  placeholder="Contact Number" name="HNumber" />
                            </div>
                            <div class="col-md-4">
                                <label><b>Occupation:</b></label>
                                <select id="Occupation" name="HOccupation" style="width: 180px;">
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
                                <select id="HWageType" name="HWageType" style="width: 180px;">
                                    <option value="Daily-Waged">Daily-Waged</option>
                                    <option value="Contracted">Contracted</option>
                                </select>
                            </div>

                        </div>
                        <br>
                        <div class="row mx-3">
                            <div class="col-md-4">
                                <label><b>Email/Username:</b></label>
                                <input type="text"  placeholder="Email/Username" name="HId" />
                            </div>
                            <div class="col-md-4">
                                <label><b>Password:</b></label>
                                <input type="password"  placeholder="Pssword" name="HPassword" />
                            </div>
                            <div class="col-md-4">
                                <label><b>Confirm Password:</b></label>
                                <input type="password"  placeholder="Confirm Password" name="HConfirmPass" />
                            </div>
                        </div>
                        <br>
                        <div class="row mx-3">
                            <div class="col-md-4">
                                <label><b>Aadhar Number:</b></label>
                                <input type="text"  placeholder="Adhaar Number" name="HAdhaarNo"/>
                            </div>
                            <div class="col-md-4">
                                <label style="font-size: 15px"><b>House Number and locality:</b></label>
                                <input type="text"  placeholder="House Number and locality" name="HHouseNo" />
                            </div>

                            <div class="col-md-4">
                                <label><b>City:</b></label>
                                <input type="text"  placeholder="City" name="HCity" />
                            </div>

                        </div>
                        <br>
                        <div class="row mx-3">
                            <div class="col-md-4">
                                <label><b>State:</b></label>
                                <input type="text"  placeholder="State" name="HState" />
                            </div>
                            <div class="col-md-4">
                                <label><b>Country</b></label>
                                <input type="text"  placeholder="Country" name="HCountry" />
                            </div>
                            <div class="col-md-4">
                                <label><b>Pincode:</b></label>
                                <input type="text"  placeholder="Pincode" name="HPincode" />
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-8"> 
                                <input type="submit" value="Register" name ="btnHelper" style="background-color: black" class="btnSubmit"">
                            </div>
                        </div>
                    </form>

                </div>

                <div id="user1">
                    <form method="post" onSubmit="return validate()">
                        <div class="row mx-3">
                            <div class="col-md-4">
                                <label><b>User's Name:</b></label>
                                <input type="text"  placeholder="User's Name" id="UName" name="UName" />
                            </div>
                            <div class="col-md-4">
                                <label><b>Date Of Birth:</b></label>
                                <input type="text"  placeholder="Date Of Birth" name="UDOB" />
                            </div>
                            <div class="col-md-4">
                                <label><b>Gender:</b></label>
                                <select id="UGender" name="UGender" style="width: 180px;">
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                    <option value="Others">Others</option>
                                </select>
                            </div>       
                        </div>
                        <br>
                        <div class="row mx-3">
                            <div class="col-md-4">
                                <label><b>Email/Username:</b></label>
                                <input type="text"  placeholder="Email/Username" id="UId" name="UId" />
                            </div>
                            <div class="col-md-4">
                                <label><b>Password:</b></label>
                                <input type="password"  placeholder="Pssword" id="UPassword" name="UPassword" />
                            </div>
                            <div class="col-md-4">
                                <label><b>Confirm Password:</b></label>
                                <input type="password"  placeholder="Confirm Password" id="UConfirmPass" name="UConfirmPass" />
                            </div>              
                        </div>
                        <br>
                        <div class="row mx-3">
                            <div class="col-md-4">
                                <label><b>Contact Number:</b></label>
                                <input type="text"  placeholder="Contact Number" id="UNumber" name="UNumber" />
                            </div>
                            <div class="col-md-4">
                                <label><b>Adhaar Number:</b></label>
                                <input type="text"  placeholder="Adhaar Number" id="UAdhaarNo" name="UAdhaarNo" />
                            </div>
                            <div class="col-md-4">
                                <label style="font-size: 15px"><b>House Number and locality:</b></label>
                                <input type="text"  placeholder="House Number and locality" id="UHouseNo" name="UHouseNo" />
                            </div>               
                        </div>
                        <br>
                        <div class="row mx-3">
                            <div class="col-md-4">
                                <label><b>City:</b></label>
                                <input type="text"  placeholder="City" id="UCity" name="UCity" />
                            </div>
                            <div class="col-md-4">
                                <label><b>State:</b></label>
                                <input type="text"  placeholder="State" id="UState" name="UState" />
                            </div>
                            <div class="col-md-4">
                                <label><b>Country</b></label>
                                <input type="text"  placeholder="Country" id="UCountry" name="UCountry"/>
                            </div>  
                        </div>
                        <br>
                        <div class="row mx-3">
                            <div class="col-md-4">
                                <label><b>Pincode:</b></label>
                                <input type="text"  placeholder="Pincode" id="UPincode" name="UPincode" />
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-8"> 
                                <input type="submit" value="Register" name ="btnUser" style="background-color: black" class="btnSubmit"">
                            </div>
                        </div>
                    </form>
                </div>

                <p style="text-align: center"><b>Already have an Account? <a href="Login.jsp">Login</a></b>
                    <br> <br>
                    <br>
                    <br>
            </div>
        </div>

        <!--    ends here-->
    </body>
</html>
