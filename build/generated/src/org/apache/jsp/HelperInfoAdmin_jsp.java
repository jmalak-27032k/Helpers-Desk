package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class HelperInfoAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");

    String HId = request.getParameter("HId");
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String dbName = "HelperDesk";
    String userId = "root";
    String password = "root";
    String button = request.getParameter("btn");//Login
    System.out.println("Entered Code");
    System.out.println(request.toString());
      if (request.getParameter("delete") != null) {
       // String food = request.getParameter("food");
        System.out.println("Attempting to Delete");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HelperDesk", "root", "root");
        String HelID=request.getParameter("delete");
       // String HID = "\"" + HelID + "\"";
        PreparedStatement st = con.prepareStatement("delete from Helper where HId=?");
        st.setString(1, HelID);
        System.out.println(st.toString());
        st.executeUpdate();
        response.sendRedirect("HelperInfoAdmin.jsp");
    }

    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Helpers' Desk</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-image: url('Images/Capture7.PNG');background-repeat: no-repeat;background-size:cover;\">\n");
      out.write("        <div class=\"row\" style=\"background-image: url('Images/Capture5.PNG');background-repeat: no-repeat;height: 80px;\">\n");
      out.write("            <div class='col-md-5' style=\"font-size: 53px;font-style: italic;color: white;font-weight: 700\">&nbsp;&nbsp;&nbsp;Helpers'Desk</div>\n");
      out.write("            <div class=\"col-md-1\" style=\"padding: 20px;\"><a href=\"HomeAdmin.jsp\" style=\"background: none;color: white;margin: auto;width: inherit;\n");
      out.write("                                                            border: none;\">Home</a></div>        \n");
      out.write("            <div class=\"col-md-2\" style=\"padding: 20px;\"><a href=\"HelperInfoAdmin.jsp\" style=\"background: none;color: white;width: inherit;\n");
      out.write("                                                            border: none;\">Helpers' Information</a></div>\n");
      out.write("            <div class=\"col-md-2\" style=\"padding: 20px;\"><a href=\"UserInfoAdmin.jsp\" style=\"background: none;color: white;width: inherit;\n");
      out.write("                                                            border: none;\">User's Information</a></div>\n");
      out.write("            <div class=\"col-md-1\" style=\"padding: 20px;\"><a href=\"\" style=\"background: none;color: white;width: inherit;\n");
      out.write("                                                            border: none;\">Help</a></div>\n");
      out.write("            <div class=\"col-md-1\" style=\"padding: 20px;\"><a href=\"DestroySession.jsp\" style=\"background: none;color: white;width: inherit;\n");
      out.write("                                                            border: none;\">Logout</a></div>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-2\"></div>\n");
      out.write("            <div class=\"col-md-8\" style=\"background-image:url('Images/Capture9.PNG');background-repeat: no-repeat;background-size:cover;color: white\">\n");
      out.write("                <table class=\"table\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th scope=\"col\">Name</th>\n");
      out.write("                            <th scope=\"col\">Number</th>\n");
      out.write("                            <th scope=\"col\">Id/Username</th>\n");
      out.write("                            <th scope=\"col\">Occupation</th>\n");
      out.write("                            <th scope=\"col\">Adhaar Number</th>\n");
      out.write("                            <th scope=\"col\">Details</th>\n");
      out.write("                            <th scope=\"col\">Delete</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("\n");
      out.write("                    <tbody>\n");
      out.write("                        ");

                            try {
                                connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                                statement = connection.createStatement();
                                String sql = "SELECT * FROM Helper";
//                                if (request.getParameter("Delete") != null) {
//                                    String HID = "\"" + HId + "\"";
//                                    String i = "DELETE FROM Helper WHERE HId=" + HID;
//                                    resultSet = statement.executeQuery(i);
//                                }

                                resultSet = statement.executeQuery(sql);
                                //   int i = 0;
                                while (resultSet.next()) {
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("HName"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("HNumber"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("HId"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("HOccupation"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(resultSet.getString("HAdhaarNo"));
      out.write("</td>\n");
      out.write("                            <td><a style=\"color: white\" href=\"HelperDetailAdmin.jsp?HId=");
      out.print(resultSet.getString("HId"));
      out.write("\">Details</a></td>\n");
      out.write("                            <!--                            <td><input type=\"submit\" name=\"Delete\" value=\"Delete\"></td>-->\n");
      out.write("                            <!--<td><a href=\"Delete.jsp?id=\n");
      out.write("                            ");
      out.write("\n");
      out.write("                            \"><button type=\"button\" class=\"delete\">Delete</button></a></td>-->\n");
      out.write("                            <td>\n");
      out.write("                                <form action=\"HelperInfoAdmin.jsp\" method=\"POST\">\n");
      out.write("                                    <input type=\"hidden\" name=\"delete\" id=\"delete\" value=\"");
      out.print(resultSet.getString("HId"));
      out.write("\">\n");
      out.write("                                    <button> Delete </button>\n");
      out.write("                                </form>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                                    // i++;
                                }

                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-2\"></div>\n");
      out.write("        </div>\n");
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
