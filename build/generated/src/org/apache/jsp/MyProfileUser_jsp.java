package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class MyProfileUser_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Helpers' Desk</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"row\" style=\"background-image: url('Images/Capture5.PNG');background-repeat: no-repeat;height: 70px;\">\n");
      out.write("\n");
      out.write("            <div class=\"col-md-2\" style=\"padding: 20px;\"><button style=\"background: none;color: white;margin: auto;width: inherit;\n");
      out.write("                                                                 border: none;\">Home</button></div>        \n");
      out.write("            <div class=\"col-md-2\" style=\"padding: 20px;\"><button style=\"background: none;color: white;width: inherit;\n");
      out.write("                                                                 border: none;\">Helpers' Information</button></div>\n");
      out.write("            <div class=\"col-md-2\" style=\"padding: 20px;\"><button style=\"background: none;color: white;width: inherit;\n");
      out.write("                                                                 border: none;\">My Profile</button></div>\n");
      out.write("            <div class=\"col-md-2\" style=\"padding: 20px;\"><button style=\"background: none;color: white;width: inherit;\n");
      out.write("                                                                 border: none;\">Help</button></div>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-3\"></div>\n");
      out.write("            <div class=\"col-md-6\">\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-3\"></div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
