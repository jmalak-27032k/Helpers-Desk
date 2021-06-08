<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement,java.sql.Connection"%>
<%
    try {
        System.out.println("Starting Program");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HelperDesk", "root", "root");
//admin
        if (request.getParameter("btnAdmin") != null) {
            String AId = request.getParameter("AId");
            String APassword = request.getParameter("APassword");

            PreparedStatement st = null;
            st = con.prepareStatement("select * from Admin where AId=? AND APassword=?");
            st.setString(1, AId);
            st.setString(2, APassword);

            ResultSet rs = st.executeQuery();
            request.getSession().setAttribute("AId", AId);
            response.sendRedirect("HomeAdmin.jsp");

        }
        //Helper
        if (request.getParameter("btnHelper") != null) {
            String HId = request.getParameter("HId");
            String HPassword = request.getParameter("HPassword");

            PreparedStatement st = null;
            st = con.prepareStatement("select * from Helper where HId=? AND HPassword=?");
            st.setString(1, HId);
            st.setString(2, HPassword);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                 request.getSession().setAttribute("HId", HId);
                response.sendRedirect("HomeHelper.jsp");
            }

        }
        if (request.getParameter("btnUser") != null) {
            //  String dbUId;
            //String dbUPassword;
            String UId = request.getParameter("UId");
            String UPassword = request.getParameter("UPassword");

            PreparedStatement st = null;
            st = con.prepareStatement("select * from User where UId=? AND UPassword=?");
            st.setString(1, UId);
            st.setString(2, UPassword);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
//                dbUId = rs.getString("UId");
//                dbUPassword = rs.getString("UPassword");
//
//                if (UId.equals(dbUId) && UPassword.equals("dbUPassword")) {
//                    response.sendRedirect("HomeUser.jsp");
//                } else {
//                   // out.println("incorrect Password!");
//                } request.getSession().setAttribute("name", name);
                request.getSession().setAttribute("UId", UId);

                response.sendRedirect("HomeUser.jsp");
                //session.setAttribute("UId", UId);
                //request.setAttribute("UId",UId); 
                //request.getAttribute("Name");//Hello 
            }

        }
        con.close();
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
        <link rel="stylesheet" type="text/css" href="CSS/login.css">
        <title>Helpers' Desk</title>
    </head>
    <body>
        <script src="JavaScript/LogIn.js"></script>
        <!--     starts from here-->

        <div class="row" style="width:100%;height:100%">


            <div class="col-md-6">
                <div style="text-align: center;">
                    <form>
                        <div>
                            <div class="row">
                                <div class="col-md-12 display">
                                    <h2 style="color: black;">Login to your account</h2>
                                </div>
                            </div>
                            <br>
                            <div class="col-md-12" style="display: flex; text-align: center">
                                <!--                                <div class="col-md-1"></div>-->
                                <div class="col-md-4"><input type="radio" id="admin" value="3" name="Role" onclick="javascript:choose();" checked="true">
                                    &nbsp;
                                    <label for="helper"><b>As Admin</b></label></div>

                                <div class="col-md-4"><input type="radio" id="helper" value="3" name="Role" onclick="javascript:choose();">
                                    &nbsp;
                                    <label for="helper"><b>As Helper</b></label></div>
                                &nbsp;
                                <div class="col-md-4"><input type="radio" id="user" value="4" name="Role" onclick="javascript:choose();">
                                    &nbsp;
                                    <label for="user"><b>As User</b></label></div>
                                &nbsp;
                                <div class="col-md-4"></div>
                            </div>
                            <br>
                            <!--admin-->
                            <div id="admin1">
                                <form>
                                    <div class="form-group display">
                                        <input type="text" name="AId" class="form-control" id="AId" placeholder="User name/ Email ID" style="width: 43%;">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                    </div>
                                    <div class="form-group display">
                                        <input type="password" placeholder="Password" formControlName="Password" name="APassword" id='APassword' class="form-control" style="width:43%"><i class="fa fa-plus icon" aria-hidden="true"></i>

                                    </div>
                                    <div class="row" style="padding: 0%;text-align: center;">
                                        <div class="col-md-12" style="padding: 0%;">
                                            <!--                                        <p class="errorText">Invalid User name or Password</p>-->
                                        </div>
                                    </div>

                                    <div class="col-md-12" style="margin-left: 1%;">
                                        <p>
                                            <b><a>Forgot your Password?</a></b>
                                        </p>
                                    </div>
                                    <div class="form-element display">
                                        <!--                                    <button type="submit" style="width: 43%;background-color: black" class="btnSubmit">Login</button>-->
                                        <input type="submit" value="Admin Login" name ="btnAdmin" style="width: 43%;background-color: black" class="btnSubmit">

                                    </div>
                                </form>
                            </div>
                            <!--helper-->
                            <div id="helper1" style="display: none;">
                                <form>
                                    <div class="form-group display">
                                        <input type="text" name="HId" class="form-control" id="HId" placeholder="User name/ Email ID" style="width: 43%;">
                                    </div>

                                    <div class="form-group display">
                                        <input type="password" placeholder="Password" name="HPassword" id='HPassword' class="form-control" style="width:43%">

                                    </div>
                                    <div class="row" style="padding: 0%;text-align: center;">
                                        <div class="col-md-12" style="padding: 0%;">
                                            <!--                                        <p class="errorText">Invalid User name or Password</p>-->
                                        </div>
                                    </div>

                                    <div class="col-md-12" style="margin-left: 1%;">
                                        <p>
                                            <b><a>Forgot your Password?</a></b>
                                        </p>
                                    </div>
                                    <div class="form-element display">
                                        <input type="submit" value="Helper Login" name ="btnHelper" style="width: 43%;background-color: black" class="btnSubmit">
                                    </div>
                                </form>
                            </div>
                            <!--user-->
                            <div id="user1" style="display: none">
                                <form>
                                    <div class="form-group display">
                                        <input type="text" name="UId" class="form-control" id="UId" placeholder="User name/ Email ID" style="width: 43%;">

                                    </div>
                                    <div class="form-group display">
                                        <input type="password" placeholder="Password" name="UPassword" id='UPassword' class="form-control" style="width:43%">

                                    </div>
                                    <div class="row" style="padding: 0%;text-align: center;">
                                        <div class="col-md-12" style="padding: 0%;">
                                            <!--                                        <p class="errorText">Invalid User name or Password</p>-->
                                        </div>
                                    </div>

                                    <div class="col-md-12" style="margin-left: 1%;">
                                        <p>
                                            <b><a>Forgot your Password?</a></b>
                                        </p>
                                    </div>

                                    <div class="form-element display">                                     
                                        <input type="submit" value="User Login" name ="btnUser" style="width: 43%;background-color: black" class="btnSubmit">
                                    </div>
                                </form>
                            </div>
                            <br>
                            <div class="col-md-12" style="margin-left: 1%;">
                                <p>
                                    <b>Don't&nbsp;have&nbsp;an&nbsp;account&nbsp;?&nbsp;<a href="SignUp.jsp">SignUp</a></b>
                                </p>
                            </div>


                        </div>
                    </form>
                </div>


                <div style="padding-bottom: 8%; padding-top: 5%; text-align: center;">
                    <p>By clicking Login,you agree to our <a>Privacy Policy</a> and <a>Terms of
                            Services</a>(collectively, "Terms"),</p>
                    <p>effective as of January 1,2020.These terms are effective for all users as of this date.</p>
                </div>
            </div>
            <br><br><br>
            <div class="col-md-6">
                <br><br><br><br>
                <img src="Images/Capture8.PNG" class="img1">
                <br><br><br>
            </div>
        </div>        

        <!--      ends here  -->
    </body>
</html>
