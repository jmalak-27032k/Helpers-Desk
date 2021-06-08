package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class HomeUser_jsp extends org.apache.jasper.runtime.HttpJspBase
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


//   if(session.getAttribute("UId")==null || session.getAttribute("UId")==" ")
//   {
//   response.sendRedirect("HomeUser.jsp");
//   }
 //String UId = (String)request.getAttribute("UId");
 String UId = (String) request.getSession().getAttribute("UId");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/HomeUser.css\">\n");
      out.write("        <title>Helpers' Desk</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-image: url('Images/Capture5.PNG');background-repeat: no-repeat;\">\n");
      out.write("        <br><br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class='col-md-3 t1'>&nbsp;&nbsp;&nbsp;Helpers'Desk</div>\n");
      out.write("            <div class=\"col-md-2\"><a href='HomeUser.jsp' class=\"btn\">Home</a></div>        \n");
      out.write("            <div class=\"col-md-2\"><a href=\"HelperInformationUser.jsp\" class=\"btn\">Helpers' Information</a></div>\n");
      out.write("            <div class=\"col-md-2\"><a href='MyProfileUser.jsp?UId=");
      out.print(UId);
      out.write("' class=\"btn\">My Profile</a></div>\n");
      out.write("            <div class=\"col-md-1\"><a href='' class=\"btn\">Help</a></div>\n");
      out.write("             <div class=\"col-md-2\"><a href='DestroySession.jsp' class=\"btn\">Logout</a></div>\n");
      out.write("        </div>\n");
      out.write("        <br><br>\n");
      out.write("        <h1 style=\"text-align: center;color: white\" class=\"t2\">About Us</h1>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-3\"></div>\n");
      out.write("            <div class=\"col-md-6\">\n");
      out.write("                <div style=\"text-align: center;background-image:url('Images/Capture9.PNG');background-repeat: no-repeat;background-size:cover; color: white;font-size: 15px;border: none;\" \n");
      out.write("                     class=\"card mx-auto my-auto px-3 py-3\">\n");
      out.write("                    <p>Helpers’ Desk is an online platform that deals with finding the most eminent \n");
      out.write("                        daily need workers on our finger tip, just on click.\n");
      out.write("                        This web application will provide the user with the data of the workers in \n");
      out.write("                        following professions:\n");
      out.write("                    </p>\n");
      out.write("                    <div class=\"row px-3\">\n");
      out.write("                        <div class=\"col-md-6\">\n");
      out.write("                            <p>Electricians</p>\n");
      out.write("                            <p>Barbers</p>\n");
      out.write("                            <p>Carpenters</p>\n");
      out.write("                            <p>Cooks</p>\n");
      out.write("                            <p>Maids</p>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-6\">\n");
      out.write("                            <p>Packers and Movers</p>\n");
      out.write("                            <p>Painters</p>\n");
      out.write("                            <p>Plumbers</p>\n");
      out.write("                            <p>Ragmen</p>\n");
      out.write("                            <p>Vehicle Washer men</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-3\"></div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-3\"> \n");
      out.write("                <img src=\"Images/Capture12.PNG\" style=\"height: 300px;\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"col-md-9\">\n");
      out.write("                <br><br>\n");
      out.write("                <ul style=\"font-weight: 600;\">\n");
      out.write("                    <li>Helpers’ Desk is an online platform that would result in providing the necessary \n");
      out.write("                        contact details of daily wages /contracted workers to the end users ,whom so ever require them according \n");
      out.write("                        to their need.\n");
      out.write("                    </li><br>\n");
      out.write("                    <li>This web application would provide users with the filters which will provide ease\n");
      out.write("                        to the end user in opting for the particular people of a particular profession on the basis \n");
      out.write("                        of availability, rates and location.\n");
      out.write("                    </li><br>\n");
      out.write("                    <li>Hence this project will help us to achieve a goal that it will provide a platform where \n");
      out.write("                        all these people of various professions can unite and are being accessible on a single click\n");
      out.write("                        without the end user being searching them which is rather a  time consuming activity through various \n");
      out.write("                        offline modes. \n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("\n");
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
