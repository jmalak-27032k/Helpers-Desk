package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class SignUp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');

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


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/signUp.css\">\n");
      out.write("        <title>Helpers' Desk</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <script src=\"JavaScript/signUp.js\"></script>\n");
      out.write("        <!--    starts from here-->\n");
      out.write("\n");
      out.write("        <div class=\"row\" style=\"width:100%;height:100%\">\n");
      out.write("\n");
      out.write("            <div class=\"col-md-6\">\n");
      out.write("                <br><br><br><br>\n");
      out.write("                <img src=\"Images/Capture8.PNG\" class=\"img1\">\n");
      out.write("                <br><br><br>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-6\">\n");
      out.write("                <!--                <div class=\"card px-2 py-2 mx-4 mt-3\">-->\n");
      out.write("\n");
      out.write("                <div style=\"text-align: center;\">\n");
      out.write("                    <h2 style=\"color: black\">Register Yourself with Us</h2>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-md-12\" style=\"display: flex; text-align: center; padding-left: 5%;\">\n");
      out.write("                        <div class=\"col-md-2\"></div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-4\"><input type=\"radio\" id=\"helper\" value=\"3\" name=\"Role\" onclick=\"javascript:choose();\" checked=\"true\">\n");
      out.write("                            &nbsp;\n");
      out.write("                            <label for=\"helper\"><b>As Helper</b></label></div>\n");
      out.write("                        &nbsp;\n");
      out.write("                        <div class=\"col-md-4\"><input type=\"radio\" id=\"user\" value=\"4\" name=\"Role\" onclick=\"javascript:choose();\">\n");
      out.write("                            &nbsp;\n");
      out.write("                            <label for=\"user\"><b>As User</b></label></div>\n");
      out.write("                        &nbsp;\n");
      out.write("                        <div class=\"col-md-2\"></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div id=\"helper1\">\n");
      out.write("\n");
      out.write("                    <form>\n");
      out.write("                        <div class=\"row mx-3\">\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Helper's Name:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"Helper's Name\" name=\"HName\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Date Of Birth:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"Date Of Birth\" name=\"HDOB\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Gender:</b></label>\n");
      out.write("                                <select id=\"HGender\" name=\"HGender\" style=\"width: 180px;\">\n");
      out.write("                                    <option value=\"Male\">Male</option>\n");
      out.write("                                    <option value=\"Female\">Female</option>\n");
      out.write("                                    <option value=\"Others\">Others</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row mx-3\">\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Contact Number:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"Contact Number\" name=\"HNumber\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Occupation:</b></label>\n");
      out.write("                                <select id=\"Occupation\" name=\"HOccupation\" style=\"width: 180px;\">\n");
      out.write("                                    <option value=\"Electrician\">Electrician</option>\n");
      out.write("                                    <option value=\"Barber\">Barber</option>\n");
      out.write("                                    <option value=\"Carpenter\">Carpenter</option>\n");
      out.write("                                    <option value=\"Cook\">Cook</option>\n");
      out.write("                                    <option value=\"Maid\">Maid</option>\n");
      out.write("                                    <option value=\"Packer and Mover\">Packer and Mover</option>\n");
      out.write("                                    <option value=\"Painter\">Painter</option>\n");
      out.write("                                    <option value=\"Plumber\">Plumber</option>\n");
      out.write("                                    <option value=\"Ragmen\">Ragman</option>\n");
      out.write("                                    <option value=\"Vehicle Washer men\">Vehicle Washer man</option>\n");
      out.write("\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Wage Type:</b></label>\n");
      out.write("                                <select id=\"HWageType\" name=\"HWageType\" style=\"width: 180px;\">\n");
      out.write("                                    <option value=\"Daily-Waged\">Daily-Waged</option>\n");
      out.write("                                    <option value=\"Contracted\">Contracted</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row mx-3\">\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Email/Username:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"Email/Username\" name=\"HId\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Password:</b></label>\n");
      out.write("                                <input type=\"password\"  placeholder=\"Pssword\" name=\"HPassword\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Confirm Password:</b></label>\n");
      out.write("                                <input type=\"password\"  placeholder=\"Confirm Password\" name=\"HConfirmPass\" />\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row mx-3\">\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Aadhar Number:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"Adhaar Number\" name=\"HAdhaarNo\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label style=\"font-size: 15px\"><b>House Number and locality:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"House Number and locality\" name=\"HHouseNo\" />\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>City:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"City\" name=\"HCity\" />\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row mx-3\">\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>State:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"State\" name=\"HState\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Country</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"Country\" name=\"HCountry\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Pincode:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"Pincode\" name=\"HPincode\" />\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-4\"></div>\n");
      out.write("                            <div class=\"col-md-8\"> \n");
      out.write("                                <input type=\"submit\" value=\"Register\" name =\"btnHelper\" style=\"background-color: black\" class=\"btnSubmit\"\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div id=\"user1\">\n");
      out.write("                    <form method=\"post\" onSubmit=\"return validate()\">\n");
      out.write("                        <div class=\"row mx-3\">\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>User's Name:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"User's Name\" id=\"UName\" name=\"UName\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Date Of Birth:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"Date Of Birth\" name=\"UDOB\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Gender:</b></label>\n");
      out.write("                                <select id=\"UGender\" name=\"UGender\" style=\"width: 180px;\">\n");
      out.write("                                    <option value=\"Male\">Male</option>\n");
      out.write("                                    <option value=\"Female\">Female</option>\n");
      out.write("                                    <option value=\"Others\">Others</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>       \n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row mx-3\">\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Email/Username:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"Email/Username\" id=\"UId\" name=\"UId\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Password:</b></label>\n");
      out.write("                                <input type=\"password\"  placeholder=\"Pssword\" id=\"UPassword\" name=\"UPassword\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Confirm Password:</b></label>\n");
      out.write("                                <input type=\"password\"  placeholder=\"Confirm Password\" id=\"UConfirmPass\" name=\"UConfirmPass\" />\n");
      out.write("                            </div>              \n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row mx-3\">\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Contact Number:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"Contact Number\" id=\"UNumber\" name=\"UNumber\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Adhaar Number:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"Adhaar Number\" id=\"UAdhaarNo\" name=\"UAdhaarNo\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label style=\"font-size: 15px\"><b>House Number and locality:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"House Number and locality\" id=\"UHouseNo\" name=\"UHouseNo\" />\n");
      out.write("                            </div>               \n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row mx-3\">\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>City:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"City\" id=\"UCity\" name=\"UCity\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>State:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"State\" id=\"UState\" name=\"UState\" />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Country</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"Country\" id=\"UCountry\" name=\"UCountry\"/>\n");
      out.write("                            </div>  \n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row mx-3\">\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <label><b>Pincode:</b></label>\n");
      out.write("                                <input type=\"text\"  placeholder=\"Pincode\" id=\"UPincode\" name=\"UPincode\" />\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-4\"></div>\n");
      out.write("                            <div class=\"col-md-8\"> \n");
      out.write("                                <input type=\"submit\" value=\"Register\" name =\"btnUser\" style=\"background-color: black\" class=\"btnSubmit\"\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <p style=\"text-align: center\"><b>Already have an Account? <a href=\"Login.jsp\">Login</a></b>\n");
      out.write("                    <br> <br>\n");
      out.write("                    <br>\n");
      out.write("                    <br>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!--    ends here-->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
