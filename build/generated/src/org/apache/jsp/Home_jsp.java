package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!--     starts from here-->\n");
      out.write("        \n");
      out.write("<div class=\"row\" style=\"width:100%;height:100%\">\n");
      out.write("    <div class=\"col-md-5\" style=\"padding: 0%;background: #F5F5F5;\">\n");
      out.write("    <img src=\"../../assets/images/logo_digiSparsh.png\" class=\"img\"><br><br><br><br>\n");
      out.write("    <img src=\"../../assets/images/Login Image_Vector1.png\" class=\"img1\">\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div class=\"col-md-7\" style=\"background: #F8F8F8;\">\n");
      out.write("    <div style=\"text-align: center;\">\n");
      out.write("    <form>\n");
      out.write("    <div>\n");
      out.write("    <div class=\"row\">\n");
      out.write("    <div class=\"col-md-12 display\">\n");
      out.write("    <h2>Login to your account</h2>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("    <div>\n");
      out.write("    <div class=\"form-group display\">\n");
      out.write("    <input type=\"text\" formControlName=\"Email\" class=\"form-control\" id=\"email\" placeholder=\"User name/ Email ID\" name=\"email\" style=\"width: 43%;\">\n");
      out.write("    <i class=\"fa fa-user\" aria-hidden=\"true\"></i>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"form-group display\">\n");
      out.write("    <input type=\"password\" placeholder=\"Password\" formControlName=\"Password\" id='password' class=\"form-control\" style=\"width:43%\"><i class=\"fa fa-plus icon\" aria-hidden=\"true\"></i>\n");
      out.write("    \n");
      out.write("    </div>\n");
      out.write("    <div class=\"row\" style=\"padding: 0%;text-align: center;\">\n");
      out.write("    <div class=\"col-md-12\" style=\"padding: 0%;\">\n");
      out.write("    <p class=\"errorText\" *ngIf=\"invalidPassword\">Invalid User name or Password</p>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <div class=\"col-md-12\" style=\"margin-left: 1%;\">\n");
      out.write("    <p (click)='goTo()'>\n");
      out.write("    <b><a (click)='recoverPassword()'>Forgot your Password?</a></b>\n");
      out.write("    </p>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"form-element display\">\n");
      out.write("    <button type=\"submit\" style=\"width: 43%;\" class=\"btnSubmit\" [disabled]=\"!loginForm.valid\">Login</button>\n");
      out.write("    </div>\n");
      out.write("    <br>\n");
      out.write("    <div class=\"col-md-12\" style=\"margin-left: 1%;\">\n");
      out.write("    <p>\n");
      out.write("    <b>Don't&nbsp;have&nbsp;an&nbsp;account&nbsp;?&nbsp;<a (click)='signup()'>SignUp</a></b>\n");
      out.write("    </p>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("    </form>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <div style=\"padding-bottom: 8%; padding-top: 5%; text-align: center;\">\n");
      out.write("    <p>By clicking Login,you agree to our <a>Privacy Policy</a> and <a>Terms of\n");
      out.write("    Services</a>(collectively, \"Terms\"),</p>\n");
      out.write("    <p>effective as of January 1,2020.These terms are effective for all users as of this date .</p>\n");
      out.write("    </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    </div>        \n");
      out.write("\n");
      out.write("<!--      ends here  -->\n");
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
