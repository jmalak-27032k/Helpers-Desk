package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");

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


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/login.css\">\n");
      out.write("        <title>Helpers' Desk</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <script src=\"JavaScript/LogIn.js\"></script>\n");
      out.write("        <!--     starts from here-->\n");
      out.write("\n");
      out.write("        <div class=\"row\" style=\"width:100%;height:100%\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"col-md-6\">\n");
      out.write("                <div style=\"text-align: center;\">\n");
      out.write("                    <form>\n");
      out.write("                        <div>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-12 display\">\n");
      out.write("                                    <h2 style=\"color: black;\">Login to your account</h2>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <br>\n");
      out.write("                            <div class=\"col-md-12\" style=\"display: flex; text-align: center\">\n");
      out.write("                                <!--                                <div class=\"col-md-1\"></div>-->\n");
      out.write("                                <div class=\"col-md-4\"><input type=\"radio\" id=\"admin\" value=\"3\" name=\"Role\" onclick=\"javascript:choose();\" checked=\"true\">\n");
      out.write("                                    &nbsp;\n");
      out.write("                                    <label for=\"helper\"><b>As Admin</b></label></div>\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-4\"><input type=\"radio\" id=\"helper\" value=\"3\" name=\"Role\" onclick=\"javascript:choose();\">\n");
      out.write("                                    &nbsp;\n");
      out.write("                                    <label for=\"helper\"><b>As Helper</b></label></div>\n");
      out.write("                                &nbsp;\n");
      out.write("                                <div class=\"col-md-4\"><input type=\"radio\" id=\"user\" value=\"4\" name=\"Role\" onclick=\"javascript:choose();\">\n");
      out.write("                                    &nbsp;\n");
      out.write("                                    <label for=\"user\"><b>As User</b></label></div>\n");
      out.write("                                &nbsp;\n");
      out.write("                                <div class=\"col-md-4\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            <br>\n");
      out.write("                            <!--admin-->\n");
      out.write("                            <div id=\"admin1\">\n");
      out.write("                                <form>\n");
      out.write("                                    <div class=\"form-group display\">\n");
      out.write("                                        <input type=\"text\" name=\"AId\" class=\"form-control\" id=\"AId\" placeholder=\"User name/ Email ID\" style=\"width: 43%;\">\n");
      out.write("                                        <i class=\"fa fa-user\" aria-hidden=\"true\"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group display\">\n");
      out.write("                                        <input type=\"password\" placeholder=\"Password\" formControlName=\"Password\" name=\"APassword\" id='APassword' class=\"form-control\" style=\"width:43%\"><i class=\"fa fa-plus icon\" aria-hidden=\"true\"></i>\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\" style=\"padding: 0%;text-align: center;\">\n");
      out.write("                                        <div class=\"col-md-12\" style=\"padding: 0%;\">\n");
      out.write("                                            <!--                                        <p class=\"errorText\">Invalid User name or Password</p>-->\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"col-md-12\" style=\"margin-left: 1%;\">\n");
      out.write("                                        <p>\n");
      out.write("                                            <b><a>Forgot your Password?</a></b>\n");
      out.write("                                        </p>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-element display\">\n");
      out.write("                                        <!--                                    <button type=\"submit\" style=\"width: 43%;background-color: black\" class=\"btnSubmit\">Login</button>-->\n");
      out.write("                                        <input type=\"submit\" value=\"Admin Login\" name =\"btnAdmin\" style=\"width: 43%;background-color: black\" class=\"btnSubmit\">\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                            <!--helper-->\n");
      out.write("                            <div id=\"helper1\" style=\"display: none;\">\n");
      out.write("                                <form>\n");
      out.write("                                    <div class=\"form-group display\">\n");
      out.write("                                        <input type=\"text\" name=\"HId\" class=\"form-control\" id=\"HId\" placeholder=\"User name/ Email ID\" style=\"width: 43%;\">\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"form-group display\">\n");
      out.write("                                        <input type=\"password\" placeholder=\"Password\" name=\"HPassword\" id='HPassword' class=\"form-control\" style=\"width:43%\">\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\" style=\"padding: 0%;text-align: center;\">\n");
      out.write("                                        <div class=\"col-md-12\" style=\"padding: 0%;\">\n");
      out.write("                                            <!--                                        <p class=\"errorText\">Invalid User name or Password</p>-->\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"col-md-12\" style=\"margin-left: 1%;\">\n");
      out.write("                                        <p>\n");
      out.write("                                            <b><a>Forgot your Password?</a></b>\n");
      out.write("                                        </p>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-element display\">\n");
      out.write("                                        <input type=\"submit\" value=\"Helper Login\" name =\"btnHelper\" style=\"width: 43%;background-color: black\" class=\"btnSubmit\">\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                            <!--user-->\n");
      out.write("                            <div id=\"user1\" style=\"display: none\">\n");
      out.write("                                <form>\n");
      out.write("                                    <div class=\"form-group display\">\n");
      out.write("                                        <input type=\"text\" name=\"UId\" class=\"form-control\" id=\"UId\" placeholder=\"User name/ Email ID\" style=\"width: 43%;\">\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group display\">\n");
      out.write("                                        <input type=\"password\" placeholder=\"Password\" name=\"UPassword\" id='UPassword' class=\"form-control\" style=\"width:43%\">\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\" style=\"padding: 0%;text-align: center;\">\n");
      out.write("                                        <div class=\"col-md-12\" style=\"padding: 0%;\">\n");
      out.write("                                            <!--                                        <p class=\"errorText\">Invalid User name or Password</p>-->\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"col-md-12\" style=\"margin-left: 1%;\">\n");
      out.write("                                        <p>\n");
      out.write("                                            <b><a>Forgot your Password?</a></b>\n");
      out.write("                                        </p>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"form-element display\">                                     \n");
      out.write("                                        <input type=\"submit\" value=\"User Login\" name =\"btnUser\" style=\"width: 43%;background-color: black\" class=\"btnSubmit\">\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                            <br>\n");
      out.write("                            <div class=\"col-md-12\" style=\"margin-left: 1%;\">\n");
      out.write("                                <p>\n");
      out.write("                                    <b>Don't&nbsp;have&nbsp;an&nbsp;account&nbsp;?&nbsp;<a href=\"SignUp.jsp\">SignUp</a></b>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div style=\"padding-bottom: 8%; padding-top: 5%; text-align: center;\">\n");
      out.write("                    <p>By clicking Login,you agree to our <a>Privacy Policy</a> and <a>Terms of\n");
      out.write("                            Services</a>(collectively, \"Terms\"),</p>\n");
      out.write("                    <p>effective as of January 1,2020.These terms are effective for all users as of this date.</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <br><br><br>\n");
      out.write("            <div class=\"col-md-6\">\n");
      out.write("                <br><br><br><br>\n");
      out.write("                <img src=\"Images/Capture8.PNG\" class=\"img1\">\n");
      out.write("                <br><br><br>\n");
      out.write("            </div>\n");
      out.write("        </div>        \n");
      out.write("\n");
      out.write("        <!--      ends here  -->\n");
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
